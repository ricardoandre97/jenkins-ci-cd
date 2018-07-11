pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh './build/mvn.sh mvn -B -DskipTests clean package
                    ./build/build.sh'   
            }
            post {
                success {
                    archiveArtifacts artifacts: 'build/simple-java-maven-app/target/*.jar', fingerprint: true
                }
            }
        }                        
        stage('Test') {
            steps {
                sh './build/mvn.sh mvn test'
            }
            post {
                always {
                    junit 'build/simple-java-maven-app/target/surefire-reports/*.xml'
                }
            }
        }
    }
}