cd /var/lib

sudo tar --exclude='jenkins/workspace/*' --exclude='jenkins/logs/*' --exclude='jenkins/.m2/*' --exclude='jenkins/.sonar/*' -zcvf /mnt/host_machine/jenkins.tgz jenkins

