pipeline {
    agent none
    stages {
        stage('Setup') {
            parallel {
                stage('Setup Windows') {
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
        }
    }
}

