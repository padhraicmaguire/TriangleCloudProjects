pipeline {
  agent any
  stages {
    stage('Preparation') {
      steps {
        git '$Git_Repo'
      }
    }

  }
  environment {
    Git_Repo = 'https://github.com/padhraicmaguire/TriangleCloudProjects'
  }
}