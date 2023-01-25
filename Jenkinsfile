pipeline { 
	agent any
	stages {
		stage('Build') {
			//  agent {
            //      docker {
            //          image 'node:18.10-alpine'
            //          args '-v $HOME:/home/jenkins'
            //     }
            // }
			steps {
			    //  sh 'docker rmi -f my-app:v1 || true'
			    //  sh 'docker build -t my-app:v1 .'
				 sh 'docker rmi -f flutter-web-app:v1.0.0 || true'
                 sh 'docker build -t flutter-web-app:v1.0.0 -f ./Dockerfile .'
                 sh 'docker stop traning-app || true'
                 sh 'docker rm traning-app || true'
                 sh 'docker run --name traning-app -p 8600:80 -d flutter-web-app:v1.0.0'
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
