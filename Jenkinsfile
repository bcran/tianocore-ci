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
                        sh "setup.sh"
                    }
                }
                stage('Setup macOS') {
                    agent {
                        label "macos"
                    }
                    steps {
                        sh "setup.sh"
                    }
                }
            }
        }
    }
}

