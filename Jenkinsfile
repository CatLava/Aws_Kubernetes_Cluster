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
        sh ‘echo “Hello World”’
        sh ‘“
                  echo “Multiline shell steps works too”
                  ls -lah
               “‘
      }
    }
  }
}

