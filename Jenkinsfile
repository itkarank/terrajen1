pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/itkarank/terrajen1'
                sh 'git checkout main.tf'
            }
        }

        stage('Terraform Init') {
            steps {
                    sh 'terraform init'
                }
            }

        stage('Terraform Plan') {
            steps {
                    sh 'terraform plan -out=tfplan -input=false'
                }
            }

        stage('Terraform Apply') {
            steps {
                    sh 'terraform apply -input=false tfplan'
                }
            }
    }
}
