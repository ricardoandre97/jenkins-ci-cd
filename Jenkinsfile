pipeline {

	agent any
	tools {
		maven 'Maven 3.3.9'
		jdk 'jdk8'
	}

	stages {
		stage('Build') {
			steps {
				sh 'cd simple-java-maven-app/ && mvn -B -DskipTests clean package'
			}
		}
	}
}