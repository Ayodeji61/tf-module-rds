/*

resource "null_resource" "load-schema" {
  depends_on = [aws_rds_cluster.default]

  provisioner "local-exec" {
    command = <<EOF
curl -s -L -o /tmp/mysql.zip "https://github.com/roboshop-devops-project/mysql/archive/main.zip"
cd /tmp
unzip -o mysql.zip
cd mysql-main

EOF
  }

}

*/