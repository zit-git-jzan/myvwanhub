# Definiert die benötigten Provider für dieses Terraform-Projekt.
# In diesem Fall benötigen wir den Azure-Provider (azurerm).
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # Es wird empfohlen, eine spezifische Version festzulegen
    }
  }
}

# Konfiguriert den Azure-Provider.
# Durch die leere Konfiguration wird Terraform angewiesen, die
# Authentifizierungsinformationen aus der Umgebung zu beziehen,
# z.B. aus der Azure CLI, Umgebungsvariablen oder einer Managed Identity.
provider "azurerm" {
  features {}
}

# Dies ist ein Beispiel für eine Ressource, die du mit dieser Konfiguration
# erstellen könntest. In diesem Fall eine Ressourcengruppe.
resource "azurerm_resource_group" "example" {
  name     = "beispiel-ressourcengruppe"
  location = "West Europe" # Du kannst hier jede beliebige Azure-Region eintragen
}