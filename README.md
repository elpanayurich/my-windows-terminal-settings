# My Personalized Windows Terminal Config

This repository contains my personal configuration for Windows Terminal, PowerShell, and Fastfetch.

## Contents

- **fastfetch/**: Contains the configuration for `fastfetch`, including a custom ASCII art.
- **WindowsPowerShell/**: Contains my PowerShell profile, scripts, and modules.

## Installation

### Prerequisites

- [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- PowerShell 7 (Recommended) or Windows PowerShell 5.1

### Steps

1.  **Fastfetch Config:**
    Copy the `fastfetch` folder to your user's `.config` directory:
    ```powershell
    Copy-Item -Recurse -Force .\fastfetch $HOME\.config\
    ```

2.  **PowerShell Profile:**
    Copy the `WindowsPowerShell` folder to your user's Documents directory:
    ```powershell
    Copy-Item -Recurse -Force .\WindowsPowerShell $HOME\Documents\
    ```
    *Note: If you are using PowerShell 7, you might need to rename `WindowsPowerShell` to `PowerShell`.*

3.  **Reload:**
    Restart your terminal to apply changes.

## Customization

- Edit `WindowsPowerShell/Microsoft.PowerShell_profile.ps1` to change aliases or startup commands.
- Edit `fastfetch/config.jsonc` to tweak the system information display.
