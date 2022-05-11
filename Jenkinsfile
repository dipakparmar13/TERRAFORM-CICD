pipeline {
         agent any
         tools {
                terraform 'terraform-11'
                }

         stages {
                 stage('terraform-version') {
                  steps {
                     sh "terraform -v"
                  }
                 }
                 stage('terraform-init') {
                  steps {
                      sh 'terraform init'
                   }
                 }
                stage('terraform-Plan') {
                  steps {
                      sh  "terraform plan"
                   }
                 } 
                stage('terraform-apply') {
                  steps {
                      input 'Do you approve apply?'
                      sh  "terraform apply -auto-approve"
                   }
           } 
           
      }
}
