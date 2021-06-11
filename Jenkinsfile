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
                    }
                }
                stage('Setup Linux') {
                    agent {
                        label "linux"
                    }
                    steps {
                    }
                }
            }
        }
    }
}
