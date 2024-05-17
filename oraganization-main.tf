provider "google" {
  credentials = file("C:/Users/beatriz.leite.santos/Documents/Geneva-teste/credenciais/starry-strand-395614-0008357ef180.json")
  project     = "<starry-strand-395614>"
  region      = "us-central1"
}


## FOLDERS ##


## SHARED - Level 1 Folder ##
resource "google_folder" "fldr-shared_folder" {
  display_name = "fldr-shared"
  parent       = "organizations/510613106678"
}


## Under SHARED - Level 2 Folders  ##

resource "google_folder" "fldr-security" {
  display_name = "fldr-security"
  parent       = google_folder.fldr-shared_folder.name
}

resource "google_folder" "fldr-monitoring" {
  display_name = "fldr-monitoring"
  parent       = google_folder.fldr-shared_folder.name
}

resource "google_folder" "fldr-logs" {
  display_name = "fldr-logs"
  parent       = google_folder.fldr-shared_folder.name
}

resource "google_folder" "fldr-finops" {
  display_name = "fldr-finops"
  parent       = google_folder.fldr-shared_folder.name
}


resource "google_folder" "fldr-api-mgmt" {
  display_name = "fldr-api-mgmt"
  parent       = google_folder.fldr-shared_folder.name
}

## PROJECTS ##


# Security Projects #

resource "google_project" "project_7" {
  name            = "eva-prj-security"
  project_id      = "id-eva-prj-security"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-security.name
}

resource "google_project" "project_8" {
  name            = "eva-prj-golden-images"
  project_id      = "id-eva-prj-golden-images"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-security.name
}

resource "google_project" "project_9" {
  name            = "eva-prj-logs-audit"
  project_id      = "id-eva-prj-logs-audit"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-security.name
}

resource "google_project" "project_10" {
  name            = "eva-prj-logs-analysis"
  project_id      = "id-eva-prj-logs-analysis"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-security.name
}

resource "google_project" "project_11" {
  name            = "eva-prj-logs-network"
  project_id      = "id-eva-prj-logs-network"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-security.name
}

resource "google_project" "project_12" {
  name            = "eva-prj-sa"
  project_id      = "id-eva-prj-sa"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-security.name
}


# Monitoring Projects #

resource "google_project" "project_13" {
  name            = "eva-prj-dev-monitoring"
  project_id      = "id-eva-prj-dev-monitoring"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-monitoring.name
}

resource "google_project" "project_14" {
  name            = "eva-prj-hml-monitoring"
  project_id      = "id-eva-prj-hml-monitoring"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-monitoring.name
}

resource "google_project" "project_15" {
  name            = "eva-prj-prd-monitoring"
  project_id      = "id-eva-prj-prd-monitoring"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-monitoring.name
}

# Logs Projects #

resource "google_project" "project_16" {
  name            = "eva-prj-dev-logs"
  project_id      = "id-eva-prj-dev-logs"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-logs.name
}

resource "google_project" "project_17" {
  name            = "eva-prj-hml-logs"
  project_id      = "id-eva-prj-hml-logs"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-logs.name
}

resource "google_project" "project_18" {
  name            = "eva-prj-prd-logs"
  project_id      = "id-eva-prj-prd-logs"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-logs.name
}

# Finops Projects #

resource "google_project" "project_19" {
  name            = "eva-prj-billing-export"
  project_id      = "id-eva-prj-billing-export"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-finops.name
}

# Logs API Mgmt Projects #

resource "google_project" "project_20" {
  name            = "eva-prj-apigee"
  project_id      = "eva-prj-apigee"
  billing_account = "019A3B-184BE4-980D3A"
  folder_id       = google_folder.fldr-api-mgmt.name
}