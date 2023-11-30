Redhat_ver=$(cat /etc/redhat-release)
kernel_ver=$(uname -r)
#tomcat_ver=$(/opt/tomcat/latest_jdk/bin/java -cp /opt/tomcat/latest_uat/lib/catalina.jar org.apache.catalina.util.ServerInfo | grep "Server version" | awk -F: '{gsub(/ /, "", $0); print$2}')
#jvm_ver=$(/opt/tomcat/latest_jdk/bin/java -version 2>&1 | grep version | awk '{gsub(/"/,""); print$3}')
mysql_ver=$(mysql -V | awk '{gsub(/,/,""); print$3}')

output_fmt="|%-10s|%-40s\n"

printf ${output_fmt} "======================================================="
printf ${output_fmt} "Component" "Version"
printf ${output_fmt} "======================================================="
printf ${output_fmt} "Redhat" "$Redhat_ver"
printf ${output_fmt} "Kernel" "$kernel_ver"
printf ${output_fmt} "MySQL" "$mysql_ver"
printf ${output_fmt} "======================================================="
