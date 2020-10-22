pipeline {
  agent any
  stages {
    stage('Preparation') {
      steps {
        git(url: 'https://github.com/padhraicmaguire/TriangleCloudProjects', branch: 'master')
        sh '"ls"'
        sh '''curl -o tf.zip https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip ; yes | unzip tf.zip 
./terraform version'''
      }
    }

    stage('Create .terraformrc') {
      steps {
        sh 'echo ~'
        sh '''writeFile file: "$HOME/.terraformrc", text: """
                    credentials "app.terraform.io" {
                    token = "183GA0jz8BfZlw.atlasv1.kMyNTXMmEC8nDoS8ykL3eE9tKjkub6R1LzOkTz6K9el38zSH4iyOB2jjmaBhZPxLyn0"
                     } """ '''
      }
    }

  }
  environment {
    Git_Repo = 'https://github.com/padhraicmaguire/TriangleCloudProjects'
  }
}