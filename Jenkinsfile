pipeline {
  agent none
  options {
    parallelsAlwaysFailFast()
  }
  stages {
    stage('Run') {
      agent {
        label "linux"
      }
      environment {
        TOOL_CHAIN_TAG="GCC5"
      }
      steps {
        sh "env"
      } 
    }
  }
}

