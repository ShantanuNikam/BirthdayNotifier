pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/ShantanuNikam/BirthdayNotifier', branch: 'develop', changelog: true)
      }
    }

  }
}