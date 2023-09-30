pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AKIA6AFWFPO5HQKQMCMK')  // Jenkins secret text credential ID
        AWS_SECRET_ACCESS_KEY = credentials('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')  // Jenkins secret text credential ID
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('Deploy Ghost CMS') {
            steps {
                sudo yum update -y
                sudo yum install -y nodejs npm
                sudo npm install -g ghost-cli

                mkdir ghost
                cd ghost

                ghost install
                ghost start

            }
        }
    }
}
