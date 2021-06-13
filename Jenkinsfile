pipeline {
  agent none
  options {
    parallelsAlwaysFailFast()
  }
  stages {
    stage('Run') {
        stage('Linux') {
          agent {
            label "linux"
          }
          environment {
            TOOL_CHAIN_TAG="GCC5"
          }
          stages {
            stage('Setup') {
              steps {
                sh "env"
              }
            }
          }
      }
    }
  }
}

