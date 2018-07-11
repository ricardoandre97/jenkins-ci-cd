pipeline {

	agent any
	tools {
		maven 'M3'
	}

	stages {
		stage('Build') {
			steps {
				sh 'cd simple-java-maven-app/ && mvn -B -DskipTests clean package'
			}
			post {
				success	{
					archiveArtifacts artifacts: 'simple-java-maven-app/target/*.jar', fingerprint: true
				}
			}
		}
		stage('Test') {
			steps {
				sh 'cd simple-java-maven-app/ && mvn test'
			}
			post {
				always {
					junit 'simple-java-maven-app/target/surefire-reports/*.xml'
				}
			}
		}
	}
}