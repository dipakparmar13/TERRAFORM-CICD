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
          
           stage 'Apply'
           input 'Do you approve apply?'
           steps {
                    sh 'terraform apply'
                 }
      }
}
