pipeline {

    agent any

    stages {

        environment {
        	PASS = credentials('registry-pass')
        }

        stage('Build') {
            steps {
                sh '''
                    ./build/mvn.sh mvn -B -DskipTests clean package
                    ./build/build.sh
                    '''   
            }
            post {
                success {
                    archiveArtifacts artifacts: 'build/simple-java-maven-app/target/*.jar', fingerprint: true
                }
            }
        }                        
        stage('Test') {
            steps {
                sh './build/mvn-test.sh mvn test'
            }
            post {
                always {
                    junit 'build/simple-java-maven-app/target/surefire-reports/*.xml'
                }
            }
        }
        stage('Push') {
            steps {
                sh './push/push.sh'
            }
        }
        stage('Deploy') {
        	steps {
        		sh './deploy/deploy.sh'
        	}
        }
    }
}
