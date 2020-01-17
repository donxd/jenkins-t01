pipeline {
    agent {
        docker {
            image 'node:13.6-stretch'
        }
    }
    environment {
        CI = 'true'
    }

    stages {
        stage('foo') {
            steps {
                echo 'hi'
                script {
                    sh 'node -v'
                }
            }
        }
        stage('build') {
            steps {
                sh 'npm i'
            }
        }
        stage('test') {
            steps {
                sh './test.sh'
            }
        }
    }
}