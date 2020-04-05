Paperclip.interpolates(:s3_eu_url) { |attachment, style|
  "//#{attachment.bucket_name}.s3-eu-central-1.amazonaws.com/000/000/#{attachment.path(style).gsub(%r{^/}, "")}"
}
