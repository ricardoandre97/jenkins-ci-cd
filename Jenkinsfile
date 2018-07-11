pipeline {

    agent any

    stages {
        stage('Test') {
            steps {
                sh 'docker-compose -f build/docker-compose-build.yml up -d'
            }
            post {
                always {
                    junit 'build/simple-java-maven-app/target/surefire-reports/*.xml'
                }
            }
        }
/*      stage('Test') {
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