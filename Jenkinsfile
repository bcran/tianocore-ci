pipeline {
    agent none
    stages {
        stage('Setup') {
                stage('Setup Windows') {
                    agent {
                        label "windows"
                    }
                    steps {
			echo "Hello from Windows"
                    }
                }
                stage('Setup Linux') {
                    agent {
                        label "linux"
                    }
                    steps {
			echo "Hello from Linux"
                    }
                }
		stage('Setup macOS') {
		    agent {
			label "macos"
		    }
		    steps {
			echo "Hello from macOS"
		    }
		}
        }
    }
}
