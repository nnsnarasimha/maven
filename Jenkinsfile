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
	stage('build && SonarQube analysis') {
            steps {
                withSonarQubeEnv('sonarqube-10.3') {
                    // Optionally use a Maven environment you've configured already
                        sh 'mvn clean package sonar:sonar'
	      }
	   }
	}
     }
 }
