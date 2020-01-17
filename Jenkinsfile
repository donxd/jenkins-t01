pipeline {
    agent any

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
                sh 'echo $USER'
            }
        }
        stage('test') {
            agent { docker 'node:13.6-stretch' }
            steps {
                sh 'echo $USER'
                sh 'node -v'
                sh 'npm i'
                sh './test.sh'
            }
        }
        stage('deploy') {
            steps {
                sh 'echo $USER'
                sh './deploy.sh'
            }
        }
    }
}