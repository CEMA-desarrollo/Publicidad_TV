
$htmlPath = "d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\servicio_ondas_choque.html"
$logoPath = "d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\logo_cema.png"
$photoPath = "d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\equipo_ondas_choque.jpg"

function Get-Base64String {
    param ($path)
    $bytes = [System.IO.File]::ReadAllBytes($path)
    $b64 = [System.Convert]::ToBase64String($bytes)
    return $b64
}

Write-Host "Converting images..."
$logoB64 = Get-Base64String $logoPath
$photoB64 = Get-Base64String $photoPath

$htmlContent = Get-Content $htmlPath -Raw

# Replace src attributes
$newContent = $htmlContent -replace 'src="logo_cema.png"', ("src=""data:image/png;base64,$logoB64""")
$newContent = $newContent -replace 'src="equipo_ondas_choque.jpg"', ("src=""data:image/jpeg;base64,$photoB64""")

$newPath = "d:\Recursos Compartidos\Documentos Servidor\Imagenes y logos Cema\perfil\servicio_ondas_choque_export.html"
Set-Content -Path $newPath -Value $newContent -Encoding UTF8

Write-Host "Created portable HTML at: $newPath"
