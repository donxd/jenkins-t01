pipeline {
    agent none

    environment {
        CI = 'true'
    }

    stages {
        stage('foo') {
            steps {
                echo 'hi'
                script {
                    sh 'echo $USER'
                }
            }
        }
        stage('build') {
            steps {
                echo 'built'
            }
        }
        stage('test') {
            agent { docker 'node:13.6-stretch' }
            steps {
                sh 'node -v'
                sh 'npm i'
                sh './test.sh'
            }
        }
        stage('deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}