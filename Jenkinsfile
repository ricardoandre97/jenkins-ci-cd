pipeline {

	agent any

	stages {
		stage('Build') {
			steps {
				sh 'docker-compose -f build/docker-compose-build.yml up -d'
			}
			post {
				success	{
					archiveArtifacts artifacts: 'build/simple-java-maven-app/target/*.jar', fingerprint: true
				}
			}
		}
/*		stage('Test') {
			steps {
				sh 'cd simple-java-maven-app/ && mvn test'
			}
			post {
				always {
					junit 'simple-java-maven-app/target/surefire-reports/*.xml'
				}
			}
		}
		stage('Deploy') {
			steps {
				sh ''
			}
		}
		*/
	}
}