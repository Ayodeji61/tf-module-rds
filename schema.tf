resource "null_resource" "load-schema" {
  depends_on = [aws_rds_cluster.default]

  provisioner "local-exec" {
    command = <<EOF
curl -s -L -o /tmp/mysql.zip "https://github.com/roboshop-devops-project/mysql/archive/main.zip"
cd /tmp
unzip -o mysql.zip
cd mysql-main
mysql -h ${aws_rds_cluster.default.endpoint} -u${local.REDIS_USER} -p${local.REDIS_PASS} <shipping.sql
EOF
  }
}