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
                if(params.action == 'apply')
                {
                    sh 'terraform apply -input=false tfplan'
                }
                }
        }
        stage('Terraform destroy') {
            steps {
                if(params.action == 'destroy')
                {
                    sh 'terraform destroy -auto-approve'
                }
            }
        }
            }
    }
}
