pipeline {
    agent none
    stages {
        stage('Setup') {
            parallel {
                stage('Setup Windows') {
                    agent {
                        label "windows"
                    }
                    steps {
                        bat "setup.cmd"
                    }
                }
                stage('Setup Linux') {
                    agent {
                        label "linux"
                    }
                    steps {
                        sh "./setup.sh"
                    }
                }
                stage('Setup macOS') {
                    agent {
                        label "macos"
                    }
                    steps {
                        sh "./setup.sh"
                    }
                }
            }
            parallel {
                stage('Build OVMF on Windows') {
                    agent {
                        label "windows"
                    }
                    steps {
                        bat "build_ovmf.cmd"
                    }
                }
                stage('Build OVMF on Linux') {
                    agent {
                        label "windows"
                    }
                    steps {
                        sh "build_ovmf.sh"
                    }
                }
                stage('Build OVMF on macOS') {
                    agent {
                        label "macos"
                    }
                    steps {
                        sh "build_ovmf.sh"
                    }
                }
            }
        }
    }
}

