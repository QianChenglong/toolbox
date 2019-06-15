pipeline {
  agent any
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