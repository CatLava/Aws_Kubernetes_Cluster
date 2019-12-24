pipeline {
  agent any 
  stages {
    stage('lint'){
      steps{
        sh 'make lint'
      }
    }
    stage('Build') {
      steps {
        sh '/bin/bash run_docker.sh'
      }
    }
  }
}

