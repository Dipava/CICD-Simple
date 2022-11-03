pipeline {
    agent any

    tools {
        terraform 'jenkins-terraform'
    }

    stages {
                stage('checkoutfrom GIT') {
                    steps {
                            git branch: 'main', credentialsId: , url: 'https://github.com/Dipava/CICD-Simple.git'
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