pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/ShantanuNikam/BirthdayNotifier/tree/develop', branch: 'develop', changelog: true, credentialsId: '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')
      }
    }

  }
}