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
        sh "echo $OSTYPE"
      } 
    }
    stage('Run2') {
      agent {
        label "macos"
      }
      environment {
        TOOL_CHAIN_TAG="GCC5"
      }
      steps {
        sh "echo $OSTYPE"
      }
    }
    stage('Run3') {
      agent {
        label "windows"
      }
      environment {
        TOOL_CHAIN_TAG="GCC5"
      }
      steps {
        bat "echo %OSTYPE%
      }
    }

  }
}

