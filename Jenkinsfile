pipeline {
  agent {
    node {
      label 'kubernetes'
    }

  }
  stages {
    stage('Docker build') {
      steps {
        sh '''pwd
ls -al
docker build .'''
      }
    }
  }
}