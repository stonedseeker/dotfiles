clear
function fortune {
	[System.IO.File]::ReadAllText((Split-Path $profile)+'\fortune.txt') -replace "`r`n", "`n" -split "`n%`n" | Get-Random
}

# Remove the line below if you do not want fortune to run when PowerShell starts
fortune; echo ''

#function poke { pokeget random}
#poke


function np {
    notepad $args 
}

function ll {
    ls $1| sort CreationTime 
}

function ss {
    ssh -q -o LogLevel=ERROR autoinstall@10.225.29.66
    $host.ui.RawUI.WindowTitle = $hostname
}

function dd {
    ssh -q -o LogLevel=ERROR autoinstall@10.225.29.254
}

function aa {
    ssh -q -o LogLevel=ERROR autoinstall@10.225.29.64
}

#$Host.UI.RawUI.ForegroundColor = "5"
