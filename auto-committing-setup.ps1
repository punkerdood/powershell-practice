# declare variables
$GitHubUsername='punkerdood'
$PracticeRepoDir="$(Get-Location)\Studio"
$CommitMessage='auto committed from auto-committing-setup.ps1!'



New-Item -Name "Studio" -ItemType "directory" -Path $(Get-Location)


# fork and clone this repo into the powershell-studio directory
git clone "https://github.com/$GitHubUsername/powershell-practice" "$PracticeRepoDir"
Set-Location -Path "Studio"
Copy-Item -Path "../auto-committing-setup.ps1"
git add auto-committing-setup.ps1

git commit -m "none"
git push 
# Write-Output "$(CommitMessage)"
# TODO: complete steps 5-9
