pipeline {
    agent any

    stages {
        stage('checkoutfrom GIT') {
            steps {
                git branch: 'main',
                url: 'https://github.com/Dipava/CICD-Simple'
            }
        }

        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
            
        stage('terraform fmt') {
            steps {
                sh 'terraform fmt'
            }
        }
        

        stage('terraform validate') {
            steps {
                sh 'terraform validate'
            }
        }
        


        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }


        stage('Apply-Approval') {
            steps {
                input 'Do you want to Apply'
            }
        }

        stage('apply') {
            steps {
                sh "terraform apply -auto-approve"
            }
        }

        stage('Destroy-Approval') {
            steps {
                input 'Do you want to Destroy'
            }
        }
        
        stage('Destroy') {
            steps {
                sh "terraform destroy -auto-approve"
            }
        }
  
    }
}