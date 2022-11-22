package cmd

import (
	"fmt"

	"github.com/spf13/cobra"
)

var versionCmd = &cobra.Command{
	Use:   "version",
	Short: "Get the version",
	Long:  `Get the currently version`,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("kadiog 1.0.0")
	},
}

func init() {
	rootCmd.AddCommand(versionCmd)
}
