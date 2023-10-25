pipeline {
    agent any
    environment {
        PATH = "/opt/apache-maven-3.9.5/bin:$PATH"
    }
    stages {
        stage("Clone Code") {
            steps {
               git branch: "main", url: "https://github.com/nnsnarasimha/maven.git"
            }
        }
        stage("Build Code") {
            steps {
                sh "mvn clean install"
            }
        }
        stage("S3 Upload Build") {
            steps {
                sh "aws s3 cp /var/lib/jenkins/workspace/pipline-boston-build/webapp/ s3://build-backup-boston --recursive"
            }
        }
     }
 }