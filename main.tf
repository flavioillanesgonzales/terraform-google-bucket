resource "google_storage_bucket" "static" {
  name          = var.name-bucket
  location      = var.name-location
  storage_class = var.storage-class
  
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_binding" "public_rule" {
  bucket = google_storage_bucket.static.name
  role   = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
}


# resource "google_storage_bucket_object" "default" {
#   name         = "holamundo.txt"
#   source       = "resource/holamundo.txt"
#   content_type = "text/plain"
#   bucket       = google_storage_bucket.static.id
# }

# resource "google_storage_bucket_object" "picture" {
#   name   = "image.jpg"
#   source = "resource/merida.jpg"
#   bucket = google_storage_bucket.static.id
# }