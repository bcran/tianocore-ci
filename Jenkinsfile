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
                    steps {
                        sh "./setup.sh"
			sh "./build_ovmf.sh"
                    }
                }
                stage('macOS') {
                    agent {
                        label "macos"
                    }
		    environment {
			TOOL_CHAIN_TAG="XCODE5"
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

