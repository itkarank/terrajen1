pipeline {
    agent any
    parameters {
        choice(name: 'ACTION', choices: ['Apply', 'Destroy'], description: 'Select Terraform Action')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/itkarank/terrajen1'
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
                    } 
                }
            }
        }
    }
}

