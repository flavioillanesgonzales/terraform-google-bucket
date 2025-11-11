output "bucket-id" {
  value = google_storage_bucket.static.id
}

# output "file_urls" {
#   description = "Public URLs of uploaded files"
#   value = {
#     holamundo = "https://storage.googleapis.com/${google_storage_bucket.static.name}/${google_storage_bucket_object.default.name}"
#     picture   = "https://storage.googleapis.com/${google_storage_bucket.static.name}/${google_storage_bucket_object.picture.name}"
#   }
# }