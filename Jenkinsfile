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
	stage('SonarQube analysis') {
	    steps {
	    withSonarQubeEnv() {
		sh "${scannerHome}/bin/sonar-scanner"
		sh "mvn sonar:sonar"
	      }
	   }
	}
     }
 }
