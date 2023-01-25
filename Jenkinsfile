pipeline { 
	agent any
	stages {
		stage('Build'){
			agent {
				docker {
					image 'node:18.10-alpine'
					reuseNode true
				}
			}
			steps {
				git url: 'https://github.com/your-repository-url.git', branch: 'master'
				sh 'npm run build'
			}
		}
		stage('Build Docker Image') {
		 	steps {
		 		script { 
		 			dockerImage = docker.build("my-app:${env.BUILD_ID}")
		 		}
			}
	 	}
	 }
	 post { 
		always {
			echo 'Im awesome . I run always'
		}
		success {
			echo 'I run when you successfull'
		}
		failure {
			echo ' i run when you fail done'
		}
	}
	
}
