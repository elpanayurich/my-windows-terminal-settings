# Minimal profile: UTF‑8 + Oh My Posh (if installed) + Fastfetch with explicit config path
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

# --- ADDED: Oh My Posh Initialization ---
# This initializes the 'bubbles' theme which creates the capsule/rounded look.
if (Get-Command oh-my-posh -ErrorAction SilentlyContinue) {
    oh-my-posh init pwsh --config "$HOME\hunk.omp.json" | Invoke-Expression
}

Clear-Host

# Force Fastfetch to use YOUR config every time (bypass path confusion)
if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch -c "C:/Users/uriel/.config/fastfetch/config.jsonc"
}

# This changes the 'Command' color (the text you type) from Yellow to White
Set-PSReadLineOption -Colors @{
    Command   = "#FFFFFF"
    Parameter = "#f78fb3"
    String    = "#67bed9"
}