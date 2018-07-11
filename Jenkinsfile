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
		}
	}
}