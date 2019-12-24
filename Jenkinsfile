pipeline {
  agent any 
  stages {
    stage('lint'){
      steps{
        sh 'tidy -q -e *.html'
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t test .'
      }
    }
  }
}

