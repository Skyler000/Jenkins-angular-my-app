pipeline { 
	agent any
	environment {
         PATH='/usr/local/bin:/usr/bin:/bin'
	} 
	stages {
		stage('Build') {
		// 	agent {
        //         docker {
        //             image 'node:18.10-alpine'
        //             args '-v $HOME:/home/jenkins'
        //         }
        //     }
			steps {
			    sh 'docker rmi -f my-app:v1 || true'
			    sh 'docker build -t my-app:v1 .'
				// sh 'node -v'
			}
		}
		// stage('Deploy') {
		// 	steps {
		// 		 sh 'docker stop my-app || true'
        //          sh 'docker rm my-app || true'
        //          sh 'docker run --name my-app -p 8600:80 -d my-app:v1'
		// 	}
			 
		// }
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
