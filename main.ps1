##[Ps1 To Exe]
##
##Kd3HDZOFADWE8uO1
##Nc3NCtDXTlGDjpbQ8D9j6lvSTmcsYYuSurnH
##Kd3HFJGZHWLWoLaVvnQnhQ==
##LM/RF4eFHHGZ7/K1
##K8rLFtDXTiW5
##OsHQCZGeTiiZ4NI=
##OcrLFtDXTiS5
##LM/BD5WYTiiZ4tI=
##McvWDJ+OTiiZ4tI=
##OMvOC56PFnzN8u+VslQ=
##M9jHFoeYB2Hc8u+VslQ=
##PdrWFpmIG2HcofKIo2QX
##OMfRFJyLFzWE8uK1
##KsfMAp/KUzWI0g==
##OsfOAYaPHGbQvbyVvnQmqxugEyZ7Dg==
##LNzNAIWJGmPcoKHc7Do3uAu/DDhlP4vL2Q==
##LNzNAIWJGnvYv7eVvnRU6k/rV3pmSmZSurmjwZSuv+7p+ybWTZ9UZFtlhSyc
##M9zLA5mED3nfu77Q7TV64AuzAgg=
##NcDWAYKED3nfu77Q7TV64AuzAgg=
##OMvRB4KDHmHQvbyVvnRH4F/nVig7fMqcq7eqyYT8+0klrSDVRooE6p03hibpFguoV7IQVPESsZECVhI/O5I=
##P8HPFJGEFzWE8tI=
##KNzDAJWHD2fS8u+Vgw==
##P8HSHYKDCX3N8u+Vxjh+5FiuaWE5ZdKUtrLH
##LNzLEpGeC3fMu77Ro2k3hQ==
##L97HB5mLAnfMu77Ro2k3hQ==
##P8HPCZWEGmaZ7/K1
##L8/UAdDXTlGDjpbQ8D9j6lvSR2Qib9akurmjwb2o+vn4+zLQXZJUWVVnmTzAJ0S5XOcAGNG2fdIeURg/PbIP5/LTFOOsBY8FgPB6JeCWo9I=
##Kc/BRM3KXhU=
##
##
##fd6a9f26a06ea3bc99616d4851b372ba
#DEBUT



Write-Output "=================================================="
Write-Output "=================================================="
Write-Output "   __   __  _______  ______    _______  _______   "           # remerciements à
Write-Output "  |  |_|  ||       ||    _ |  |       ||       |  "           # www.github.com/patorjk
Write-Output "  |       ||   _   ||   | ||  |  _____||    ___|  "           # pour la transformation
Write-Output "  |       ||  | |  ||   |_||_ | |_____ |   |___   "           # de texte normal
Write-Output "  |       ||  |_|  ||    __  ||_____  ||    ___|  "           # en banner ASCII
Write-Output "  | ||_|| ||       ||   |  | | _____| ||   |___   "
Write-Output "  |_|   |_||_______||___|  |_||_______||_______|  "
Write-Output "                                                  "
Write-Output "         Codeur-Décodeur de code Morse            "
Write-Output "                                                  "
Write-Output "=================================================="
Write-Output "=================================================="
Write-Output "                                                  "
Write-Output "                                                  "
$replacementCodeMap = @{
    'a' = ' ● ― '
    'b' = ' ― ● ● ● '
    'c' = ' ― ● ― ● '
    'd' = ' ― ● ● '
    'e' = ' ● '
    'f' = ' ● ● ― ● '
    'g' = ' ― ― ● '
    'h' = ' ● ● ● ● '
    'i' = ' ● ● '
    'j' = ' ● ― ― ― '
    'k' = ' ― ● ― '
    'l' = ' ● ― ● ● '
    'm' = ' ― ― '
    'n' = ' ― ● '
    'o' = ' ― ― ― '                                                         # je vous préviens, après j'ai plus eu le temps
    'p' = ' ● ― ― ● '                                                       # de mettre des commentaires
    'q' = ' ― ― ● ― '
    'r' = ' ● ― ● '
    's' = ' ● ● ● '
    't' = ' ― '
    'u' = ' ● ● ― '
    'v' = ' ● ● ● ― '
    'w' = ' ● ― ― '
    'x' = ' ― ● ● ― '
    'y' = ' ― ● ― ― '
    'z' = ' ― ― ● ● '
    '1' = ' ● ― ― ― ― '
    '2' = ' ● ● ― ― ― '
    '3' = ' ● ● ● ― ― '
    '4' = ' ● ● ● ● ― '
    '5' = ' ● ● ● ● ● '
    '6' = ' ― ● ● ● ● '
    '7' = ' ― ― ● ● ● '
    '8' = ' ― ― ― ● ● '
    '9' = ' ― ― ― ― ● '
    '0' = ' ― ― ― ― ― '
    '?' = ' ● ● ― ― ● ● '
    '!' = ' ― ● ― ● ― ― '
    '.' = ' ● ― ● ― ● ― '
    ',' = ' ― ― ● ● ― ― '
    "'" = ' ― ● ― ● ― ● '
    ':' = ' ― ― ― ● ● ● '
    '+' = ' ● ― ● ― ● '
    '-' = ' ― ● ● ● ● ― '
    '*' = ' ― ● ● ― '
    '÷' = ' ― ● ● ― ● '
}

$replacementDecodeMap = @{
    ' ● ― ' = 'a'
    ' ― ● ● ● ' = 'b'
    ' ― ● ― ● ' = 'c'
    ' ― ● ● ' = 'd'
    ' ● ' = 'e'
    ' ● ● ― ● ' = 'f'
    ' ― ― ● ' = 'g'
    ' ● ● ● ● ' = 'h'
    ' ● ● ' = 'i'
    ' ● ― ― ― ' = 'j'
    ' ― ● ― ' = 'k'
    ' ● ― ● ● ' = 'l'
    ' ― ― ' = 'm'
    ' ― ● ' = 'n'
    ' ― ― ― ' = 'o'
    ' ● ― ― ● ' = 'p'
    ' ― ― ● ― ' = 'q'
    ' ● ― ● ' = 'r'
    ' ● ● ● ' = 's'
    ' ― ' = 't'
    ' ● ● ― ' = 'u'
    ' ● ● ● ― ' = 'v'
    ' ● ― ― ' = 'w'
    ' ― ● ● ― ' = 'x'
    ' ― ● ― ― ' = 'y'
    ' ― ― ● ● ' = 'z'
    ' ● ― ― ― ― ' = '1'
    ' ● ● ― ― ― ' = '2'
    ' ● ● ● ― ― ' = '3'
    ' ● ● ● ● ― ' = '4'
    ' ● ● ● ● ● ' = '5'
    ' ― ● ● ● ● ' = '6'
    ' ― ― ● ● ● ' = '7'
    ' ― ― ― ● ● ' = '8'
    ' ― ― ― ― ● ' = '9'
    ' ― ― ― ― ― ' = '0'
    ' ● ● ― ― ● ● ' = '?'
    ' ― ● ― ● ― ― ' = '!'
    ' ● ― ● ― ● ― ' = '.'
    ' ― ― ● ● ― ― ' = ','
    ' ― ● ― ● ― ● ' = "'"
    ' ― ― ― ● ● ● ' = ':'
    ' ● ― ● ― ● '= '+'
    ' ― ● ● ● ● ― ' = '-'
    ' ― ● ● ― ● ' = '÷'
    ' * ― ' = 'a'
    ' ― * * * ' = 'b'
    ' ― * ― * ' = 'c'
    ' ― * * ' = 'd'
    ' * ' = 'e'
    ' * * ― * ' = 'f'
    ' ― ― * ' = 'g'
    ' * * * * ' = 'h'
    ' * * ' = 'i'
    ' * ― ― ― ' = 'j'
    ' ― * ― ' = 'k'
    ' * ― * * ' = 'l'
    ' ― * ' = 'n'
    ' * ― ― * ' = 'p'
    ' ― ― * ― ' = 'q'
    ' * ― * ' = 'r'
    ' * * * ' = 's'
    ' * * ― ' = 'u'
    ' * * * ― ' = 'v'
    ' * ― ― ' = 'w'
    ' ― * * ― ' = 'x'
    ' ― * ― ― ' = 'y'
    ' ― ― * * ' = 'z'
    ' * ― ― ― ― ' = '1'
    ' * * ― ― ― ' = '2'
    ' * * * ― ― ' = '3'
    ' * * * * ― ' = '4'
    ' * * * * * ' = '5'
    ' ― * * * * ' = '6'
    ' ― ― * * * ' = '7'
    ' ― ― ― * * ' = '8'
    ' ― ― ― ― * ' = '9'
    ' * * ― ― * * ' = '?'
    ' ― * ― * ― ― ' = '!'
    ' * ― * ― * ― ' = '.'
    ' ― ― * * ― ― ' = ','
    ' ― * ― * ― * ' = "'"
    ' ― ― ― * * * ' = ':'
    ' * ― * ― * '= '+'
    ' ― * * * * ― ' = '-'
    ' ― * * ― * ' = '÷'
    ' ' = ' '
}

function Get-ScriptDirectory {
    Split-Path -Parent $PSCommandPath
}

function gather_message_info {
    $in_active_folder = Read-Host -Prompt 'Le fichier à lire par défaut est default_text.txt (situé dans ce ce dossier); souhaitez-vous lire de ce fichier ou un autre ? [défaut | autre] '
    if ($in_active_folder -eq "défaut") {
        $file_name = "default_text.txt"
        $test_dir = Get-ScriptDirectory
    }
    if ($in_active_folder -eq "autre") {
        $otherfiledir = Read-Host -Prompt "Chemin d'accès du fichier "
        $otherfiledir = $otherfiledir.Replace("`"","")
        $file_name = $otherfiledir.Split("\")[-1]
        $test_dir = $otherfiledir.Remove($($otherfiledir.LastIndexOf("\")))
    }
    [hashtable] $returnArray = @{
        file_name = "$file_name"
        test_dir  = "$test_dir"
    }
    $returnArray
}

function verify_file_exist {
    param (
        [Parameter(Mandatory = $true, Position = 0)] [hashtable] $returnArray
    )
    $test_dir = $returnArray['test_dir']
    $file_name = $returnArray['file_name']
    if (-not (Test-Path -Path $test_dir\$file_name)) {
        $create = Read-Host -Prompt "Le fichier $file_name n'existe pas dans le dossier actif. Souhaitez-vous le créer ? [o | n] "
        if ($create -eq "o") {
            New-Item -Path $test_dir\$file_name
        }
    }
    $text_location = "$test_dir\$file_name"
    $text_location
}

function transcode_code {
    param (
        [Parameter(Mandatory = $true, Position = 0)] [string] $message
    )
    [int] $length = $message.Length
    [int] $times = 0
    [int] $char_num = 1
    do{
        $message = $message.Insert($char_num,'/')
        $char_num = $char_num + 2
        $times = $times + 1
    }until($times -eq $length)
    $message = $message.replace(' ','')

    $regexes = $replacementCodeMap.keys | ForEach-Object {[System.Text.RegularExpressions.Regex]::Escape($_)}
    $regex = [regex]($regexes -join '|')
    $callback = { $replacementCodeMap[$args[0].Value] }
    $message = $regex.Replace($message, $callback)
    $message
}

function transcode_decode {
    param (
        [Parameter(Mandatory = $true, Position = 0)] [string] $message
    )
    
    [array]$inparts = @()
    $inparts = $message.split("/")
    [array]$outparts = @(0) * $inparts.Length

    $outparts = $inparts | foreach-object {     
        $code = $_;
        if( $code -eq [string]::Empty ){
            write-output " ";
        }elseif( -not $replacementDecodeMap.ContainsKey($code) )
        {
            Write-Output "Erreur : '$code' n'est pas défini";
        }
        write-output $replacementDecodeMap[$code];
    }
    $message = $outparts -join ""
    $message
}

function open_file {
    param (
        [Parameter(Mandatory = $true, Position = 0)] [string] $text_location
    )
    Write-Host "Ouverture du fichier..."
    Write-Host "Lorsque vous aurez terminé, fermez le document revenez ici."
    Start-Sleep -Seconds 3
    Invoke-Item $text_location
}

function verify_message {
    param (
        [Parameter(Mandatory = $true, Position = 0)] [string] $origin,
        [Parameter(Mandatory = $true, Position = 0)] [string] $text_location,
        [Parameter(Mandatory = $true, Position = 0)] [string] $message
    )
    Write-Host "Votre message est le suivant : "
    Write-Host "$message"
    $msg_err = Read-Host -Prompt "Est-ce correct ? [o | n] "
    if ($msg_err -eq "n") {
        if ((Read-Host -Prompt "Voulez-vous corriger ? [o | n] ") -eq "o") {
            if ($origin -eq "fichier") {
                open_file -text_location $text_location
                Pause
                $message = Get-Content -Path $text_location
            }
            if ($origin -eq "console"){
                Write-Host "Pardon ! L'édition directe du texte n'est pas disponible en mode console."
                Write-Host "Merci de faire vos changements en recopiant le texte ci-dessous :"
                Write-Host $message
                $message = Read-Host -Prompt "Message corrigé"
            }
        }
        Write-Host "Renvoi vers le progamme principal..."
        Start-Sleep -Seconds 1
    }
    [hashtable]$msg_correction = @{
        msg_err = $msg_err;
        message = $message
    }
    $msg_correction
}

$text_location = 'abcde'

do {
    $action = Read-Host -Prompt 'Souhaitez-vous coder ou décoder un message ? [coder | décoder]'

    Write-Output ""
    Write-Output "L'origine du texte a plusieurs options :"
    Write-Output "    - de la console : vous tapez directement le texte à traiter dans cette fenêtre"
    Write-Output "                      !! Cette méthode n'est pas compatible avec du texte sur plusieurs lignes !!"
    Write-Output "    - d'un fichier : le texte à traiter est préalablement écrit dans un document .txt"
    Write-Output ""

    $origin = Read-Host -Prompt "D'où souhaitez-vous que le programme lise le texte ? [fichier | console]"

    if ($origin -eq "fichier") {
        [hashtable] $returnArray = @{}
        $returnArray = gather_message_info
        $text_location = verify_file_exist -returnArray $returnArray
        if ((Read-Host -Prompt "Voulez-vous ouvrir le fichier ? [o | n]") -eq "o") {
            open_file -text_location $text_location
            Pause
        }
        $message = Get-Content -Path $text_location
    }


    if ($origin -eq "console") {
        $message = Read-Host -Prompt "Tapez votre message après les ':' et appuyez sur Entrée lorsque vous aurez terminé"
    }


    do {
        $msg_correction = @{}
        [hashtable]$msg_correction = verify_message -origin $origin -text_location $text_location -message $message 
        $msg_err = $msg_correction['msg_err']
        $message = $msg_correction['message']
    }while ($msg_err -eq $true)

    if ($action -eq 'coder'){
        $action_err = $false
        $message_out = transcode_code -message $message
        Write-Output " "
        Write-Output "=================================================="
        Write-Output " "
        Write-Output "Votre message codé est : $message_out"

    }elseif ($action -eq 'décoder'){
        $action_err = $false
        $message_out = transcode_decode -message $message
        Write-Output " "
        Write-Output "=================================================="
        Write-Output " "
        Write-Output "Votre message décodé est : $message_out"

    }else{
        Write-Output "Erreur : $action ne correspond à ni à 'coder', ni à 'décoder'"
        $action_err = $true
    }
} until ($action_err -eq $false)

Start-Sleep 4
Write-Output " "
Write-Output " "
Write-Output " "
Write-Output " "
Write-Output " "
Write-Output " "
Write-Output " "
Write-Output " "
Write-Output "Appuyer sur n'importe quelle touche pour fermer... "
[Console]::ReadKey($true)


echo heloo

