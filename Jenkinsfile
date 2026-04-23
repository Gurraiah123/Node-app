pipeline {
    agent any

    tools {
        nodejs "NodeJS"
    }

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/Gurraiah123/Node-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "No tests added yet"'
            }
        }

        stage('Deploy to EC2') {
            steps {
                sshagent(['ec2-ssh-key']) {
                    sh '''
                    ssh -o StrictHostKeyChecking=no ec2-user@3.66.225.75 '
                        cd /home/ec2-user/app &&
                        git pull origin main &&
                        ./deploy.sh
                    '
                    '''
                }
            }
        }
    }
}
