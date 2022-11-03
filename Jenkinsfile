pipeline {
    agent any

    stages {
                stage('checkoutfrom GIT') {
                    steps {
                            git branch: 'main', credentialsId: 3f0f84df-e841-4453-8126-cb1dacb68155, url: 'https://github.com/Dipava/CICD-Simple.git'
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

                stage('terraform apply') {
                    steps {
                        sh 'terraform apply auto approve'
                    }
                }
            

                stage('Approval') {
                    steps {
                        message "Do you want to apply?"
                        ok "Yes"
                    }
                }

                stage('apply') {
                    steps {
                        sh "terraform apply -auto-approve"
                    }
                }

                stage('Approval') {
                    steps {
                        message "Do you want to apply?"
                        ok "Yes"
                    }
                }
        
                stage('Destroy') {
                    steps {
                        sh "terraform destroy -auto-approve"
                    }
            }

        
    }
}