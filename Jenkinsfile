pipeline {
  agent any 
  stages {
    stage('lint'){
      steps{
        sh 'tidy -q -e Dockerfile'
      }
    }
    stage('Build') {
      steps {
        sh '/bin/bash run_docker.sh'
      }
    }
  }
}

