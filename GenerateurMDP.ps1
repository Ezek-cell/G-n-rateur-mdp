Write-Host "=== Generateur de mots de passe ===" -ForegroundColor Cyan

$longueur = Read-Host "Quelle longueur pour le mot de passe ?"
$longueur = [int]$longueur

$caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

$motDePasse = ""
for ($i = 0; $i -lt $longueur; $i++) {
    $index = Get-Random -Minimum 0 -Maximum $caracteres.Length
    $motDePasse = $motDePasse + $caracteres[$index]
}

Write-Host "Votre mot de passe : $motDePasse" -ForegroundColor Green