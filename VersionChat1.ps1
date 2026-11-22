
Write-Host "=== Generateur de mots de passe ===" -ForegroundColor Cyan

$longueur = Read-Host "Quelle longueur pour le mot de passe ?"
$longueur = [int]$longueur

$caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

# Demander si on ajoute des chiffres
$chiffres = Read-Host "Voulez-vous ajouter des chiffres ? (oui/non)"

if ($chiffres -eq "oui") {
    $caracteres = $caracteres + "0123456789"
}

# Demander si on ajoute des symboles
$symboles = Read-Host "Voulez-vous ajouter des symboles ? (oui/non)"

if ($symboles -eq "oui") {
    $caracteres = $caracteres + "!@#$%^&*"
}

# Generer le mot de passe
$motDePasse = ""

for ($i = 0; $i -lt $longueur; $i++) {
    $index = Get-Random -Minimum 0 -Maximum $caracteres.Length
    $motDePasse = $motDePasse + $caracteres[$index]
}

Write-Host "Votre mot de passe : $motDePasse" -ForegroundColor Green
