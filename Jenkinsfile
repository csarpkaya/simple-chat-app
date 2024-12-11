pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building the application...'
        sh 'docker build -t hello-world-app .'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing the application...'
        sh 'npm test'  // assuming there's a simple test script that checks the homepage
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying the application (locally)...'
        sh 'docker run -d -p 8080:8080 hello-world-app'
      }
    }
  }
}
