pipeline {
  agent any
  stages {
    stage('Preparation') {
      steps {
        git '$Git_Repo'
        sh '"ls"'
        sh '''curl -o tf.zip https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip ; yes | unzip tf.zip 
./terraform version'''
      }
    }

    stage('Create .terraformrc') {
      steps {
        sh '"echo ~"'
      }
    }

  }
  environment {
    Git_Repo = 'https://github.com/padhraicmaguire/TriangleCloudProjects'
  }
}