pipeline {
    agent any

    triggers {
        cron('H/2 * * * 1-5')
    }

    tools {
        maven 'Maven3'
        jdk 'java8'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh '''
                    docker build -f Dockerfile -t ekart .
                '''
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml'
                }
            }
        }
    }
}
