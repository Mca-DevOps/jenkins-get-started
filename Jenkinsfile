pipeline {
    agent { 
        node {
            label 'docker-agent-alpine'
            }
      }
      triggers {
        pollSCM '* * * * *'
      }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                echo "doing build stuff.."
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
                '''
            }
            post {
                success {
                    echo 'Tests Succeeded'
                }
                failure {
                    echo 'Tests Failed'
                }
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}