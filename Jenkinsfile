pipeline {
    agent none
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
                    steps {
                        sh "./setup.sh"
			sh "./build_ovmf.sh"
                    }
                }
                stage('macOS') {
                    agent {
                        label "macos"
                    }
                    steps {
                        sh "./setup.sh"
			sh "./build_ovmf.sh"
                    }
                }
	    }
	}
    }
}

