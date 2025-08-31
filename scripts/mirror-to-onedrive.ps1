# Mirror output\ to OneDrive\TiddlyWiki\ (local client)
$src = "$PSScriptRoot\..\output"
$dst = "$env:UserProfile\OneDrive\TiddlyWiki"
robocopy $src $dst /MIR /NFL /NDL /NP /R:1 /W:2