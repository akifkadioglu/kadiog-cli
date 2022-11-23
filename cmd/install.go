/*
Copyright © 2022 NAME HERE <EMAIL ADDRESS>
*/
package cmd

import (
	"os/exec"

	"github.com/fatih/color"
	"github.com/spf13/cobra"
)

// installCmd represents the echo command
var installCmd = &cobra.Command{
	Use:   "install",
	Short: "downloads kadiog setup",
	Long:  `this command will download kadiog setup. The setup includes gorm and echo frameworks.`,
	Run: func(cmd *cobra.Command, args []string) {
		color.Cyan("installing")
		name := cmd.Flags().Arg(0)
		if name == "" {
			name = "setup"
		}
		run := exec.Command("git", "clone", "https://github.com/akifkadioglu/go-echo-gorm-mysql-setup.git", name)
		if err := run.Run(); err != nil {
			color.Red("Something went wrong! try again..")
		} else {
			color.Cyan("the "+name + " installed")
		}

	},
}

func init() {
	rootCmd.AddCommand(installCmd)
}
