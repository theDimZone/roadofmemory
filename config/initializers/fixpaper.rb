Paperclip.interpolates(:s3_eu_url) { |attachment, style|
  "//#{attachment.bucket_name}.s3-eu-central-1.amazonaws.com/#{attachment.path(style).gsub(%r{^/}, "")}"
}
