pipeline {
  agent any
  stages {
    stage('Check GIT') {
      steps {
        git(url: 'https://github.com/ShantanuNikam/BirthdayNotifier', branch: 'develop', changelog: true, poll: true)
      }
    }

  }
}