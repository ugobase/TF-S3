resource "random_integer" "ugo-rnd" {
    min = 1000
    max = 9999
  #byte_length = 2
}


resource "aws_s3_bucket" "ugo" {
  #bucket = ugobase-bucket
  #count = 5
  bucket = "ugobase-${random_integer.ugo-rnd.result}"
}


