pipeline {
    agent any

    stages {
        stage('foo') {
            steps {
                echo 'hi'
                script {
                    sh 'node -v'
                }
            }
        }
    }
}