pipeline {
    agent any
    environment {
        PATH = "/opt/maven3.9.6/bin:$PATH"
    }
    stages {
        stage("Pull Code") {
            steps {
               git branch: "main", url: "https://github.com/nnsnarasimha/maven.git"
            }
        }
        stage("Maven Build") {
            steps {
                sh "mvn clean install"
            }
        }
        stage('S3 BuildBackup') {
            steps {
                sh 'aws s3 cp /var/lib/jenkins/workspace/Maven-boston-build-pipeline@2/webapp/target/webapp.war s3://boston-build-bkp'
            }
        }        
        stage("QA-Deploy") {
            steps {
        sshagent(['deployuser']) {
                sh "scp -oStrictHostKeyChecking=no /var/lib/jenkins/workspace/Maven-boston-build-pipeline@2/webapp/target/webapp.war ec2-user@172.31.27.75:/opt/apache-tomcat-10.1.17/webapps"
          }
       }
    }
  }
}
