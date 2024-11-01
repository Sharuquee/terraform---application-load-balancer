#!/bin/bash
sudo apt update
sudo apt install apache2 -y
INSTANCE_ID=$(curl -s curl http://169.254.169.254/latest/meta-data/instance-id)

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<body>

<h1>Sharukh</h1>
<p>welcome to you.</p>

</body>
</html>
EOF

sudo systemctl start apache2
sudo systemctl enable apache2