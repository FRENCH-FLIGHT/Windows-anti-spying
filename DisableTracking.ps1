param (
    [switch]$disableMicrosoftTracking,
    [switch]$disableEdgeTracking,
    [switch]$restoreDefaultConfig
)

# Vérifiez si le script est exécuté en tant qu'administrateur
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Veuillez exécuter le script en tant qu'administrateur."
    exit
}

# Fonction pour désactiver le suivi Microsoft dans le fichier hosts
function DisableMicrosoftTracking {
    $urlsDeTrackingMicrosoft = @(
        "vortex.data.microsoft.com",
        "vortex-win.data.microsoft.com",
        "telecommand.telemetry.microsoft.com",
        "telecommand.telemetry.microsoft.com.nsatc.net",
        "oca.telemetry.microsoft.com",
        "oca.telemetry.microsoft.com.nsatc.net",
        "sqm.telemetry.microsoft.com",
        "sqm.telemetry.microsoft.com.nsatc.net",
        "watson.telemetry.microsoft.com",
        "watson.telemetry.microsoft.com.nsatc.net",
        "redir.metaservices.microsoft.com",
        "choice.microsoft.com",
        "choice.microsoft.com.nsatc.net",
        "df.telemetry.microsoft.com",
        "reports.wes.df.telemetry.microsoft.com",
        "wes.df.telemetry.microsoft.com",
        "services.wes.df.telemetry.microsoft.com",
        "sqm.df.telemetry.microsoft.com",
        "watson.ppe.telemetry.microsoft.com",
        "telemetry.microsoft.com",
        "watson.live.com",
        "redir.metaservices.microsoft.com",
        "watson.microsoft.com",
        "statsfe2.ws.microsoft.com",
        "survey.watson.microsoft.com",
        "watson.microsoft.com",
        "watson.microsoft.com.nsatc.net",
        "telemetry.appex.bing.net",
        "telemetry.urs.microsoft.com",
        "telemetry.appex.bing.net:443",
		"data.microsoft.com",
		"msftconnecttest.com",
		"activity.windows.com",
		"scorecardresearch.com"
    )

    foreach ($url in $urlsDeTrackingMicrosoft) {
        $ligneHosts = "127.0.0.1`t$url"
        Add-Content -Path $cheminFichierHosts -Value $ligneHosts
    }

    Write-Host "Le suivi Microsoft a été désactivé avec succès dans le fichier hosts. Attention, certaines fonctionnalités d'interfaces ou de services seront potentiellement dégradées !"
}

# Fonction pour désactiver le suivi Microsoft Edge dans le fichier hosts
function DisableEdgeTracking {
    $urlsDeTrackingEdge = @(
        "v10.vortex-win.data.microsoft.com",
        "v10.vortex-win.data.microsoft.com.nsatc.net",
        "settings-sandbox.data.microsoft.com",
		"azureedge.net",
		"bingapis.com",
		"msedge.net",
		"assets.msn.com",
		"edge.microsoft.com",
		"data.msn.com"
    )

    foreach ($url in $urlsDeTrackingEdge) {
        $ligneHosts = "127.0.0.1`t$url"
        Add-Content -Path $cheminFichierHosts -Value $ligneHosts
    }

    Write-Host "Le suivi Microsoft Edge a été désactivé avec succès dans le fichier hosts. Attention, vous perdrez certaines fonctionnalités de l'interface Edge (actualités, informations basées sur vos centres d'intérêts...)"
}

# Fonction pour réinitialiser le fichier hosts à son état d'origine
function RestoreDefaultConfig {
    Remove-Item -Path $cheminFichierHosts -Force
    Write-Host "Le fichier hosts a été réinitialisé avec succès à son état d'origine. Vous êtes de nouveau sous les projecteurs de Microsoft !"
}

# Chemin du fichier hosts
$cheminFichierHosts = "$env:SystemRoot\System32\drivers\etc\hosts"

# Vérifiez les options et exécutez les fonctions appropriées
if ($restoreDefaultConfig) {
    RestoreDefaultConfig
}
else {
    # Vérifiez si le fichier hosts est accessible en écriture
    if (-not (Test-Path -Path $cheminFichierHosts -IsValid)) {
        Write-Host "Erreur : Impossible d'accéder au fichier hosts."
        exit
    }

    if ($disableMicrosoftTracking) {
        DisableMicrosoftTracking
    }

    if ($disableEdgeTracking) {
        DisableEdgeTracking
    }
}