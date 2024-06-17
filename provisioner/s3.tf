# resource "aws_s3_bucket" "iqies_my_first_resourse" {
#   bucket = "provisioner-ziyotek-example-bucket-rady"

#     provisioner "local-exec" {
#     when    = destroy
#     #command = "echo ${self.id} > testfile.txt"
#     command = "aws s3 rm s3://${self.id} --recursive"
    
#     #command = "aws s3api delete-objects --bucket ${self.id} --delete \"$(aws s3api list-object-versions --bucket ${self.id} --query='{Objects: Versions[].{Key:Key,VersionId:VersionId}}')"\s"
#   }
# }