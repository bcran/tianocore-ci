pipeline {
  agent none
  options {
    parallelsAlwaysFailFast()
  }
  stages {
    stage('Run') {
      parallel {
        stage('Windows') {
          agent {
            label "windows"
          }
          stages {
            stage('Setup') {
              steps {
                bat "setup.cmd"
              }
            }
            stage('Build') {
              steps {
                bat "build_ovmf.cmd"
              }
            }
          }
        }

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
                sh "./setup.sh"
              }
            }
            stage('Build') {
              steps {
                sh "./build_ovmf.sh"
              }
            }
          }
        }

        stage('macOS') {
          agent {
            label "macos"
          }
          environment {
            TOOL_CHAIN_TAG="XCODE5"
            PATH="$PATH:/usr/local/bin"
          }
          stages {
            stage('Setup') {
              steps {
                sh "./setup.sh"
              }
            }
            stage ('Build') {
              parallel {
                stage('OVMF X64') {
                  steps {
                    sh "./build_ovmf.sh OvmfPkg64.dsc X64"
                  }
                }
                stage('OVMF IA32') {
                  steps {
                    sh "./build_ovmf.sh OvmfPkgIa32.dsc IA32"
                  }
                }
                stage('OVMF XEN') {
                  environment {
                    FILE="OvmfXen.dsc"
                    ARCH="X64"
                  }
                  steps {
                    sh "./build_ovmf.sh OvmfXen.dsc X64"
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

