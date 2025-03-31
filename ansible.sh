amazon-linux-extras install ansible2 -y
yum install python3 python-pip python-dlevel -y

sed -i 's/present/absent/g' roles/packages/tasks/main.yml
find . -type f -exec sed 's/present/absent/g' {}\;
