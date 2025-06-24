oh-my-posh init pwsh --config '~/.oh-my-posh/pretty-in-pink.json' | Invoke-Expression

function Get-ChildItemForce { Get-ChildItem -Force @args }
Set-Alias -Name ll -Value Get-ChildItemForce

Set-Alias -Name lg -Value lazygit
