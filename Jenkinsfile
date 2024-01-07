pipeline {
    agent any
    parameters {
        choice(name: 'ACTION', choices: ['Apply', 'Destroy'], decription: 'Select Terraform Action')
    }

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

        
         stage('Terraform Apply or Destroy') {
            steps {
            
                script {
                    if (params.ACTION == 'Apply') {
                        sh 'terraform apply -auto-approve tfplan'
                    } else if (params.ACTION == 'Destroy') {
                        sh 'terraform destroy -auto-approve'
                    } else {
                        error 'Invalid Terraform action selected'
                    }
                }
            }
        }
    }

