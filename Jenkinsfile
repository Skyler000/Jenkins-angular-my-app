pipeline { 
	agent any
	stages {
		stage('Build') {
			steps {
			     sh 'docker rmi -f my-app:* || true'
			     sh 'docker build -t my-app:${env.BUILD_ID} .'
			}
		}
		stage('Deploy') {
			steps {
				 sh 'docker stop my-app || true'
                 sh 'docker rm my-app || true'
                 sh 'docker run --name my-app -p 8600:80 -d my-app:${env.BUILD_ID}'
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
