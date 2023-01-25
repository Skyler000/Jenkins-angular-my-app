pipeline { 
	agent any
	stages {
		stage('Build') {
			// agent {
			// 	docker {
			// 		image 'node:18.10-alpine'
			// 		reuseNode true
			// 	}
			// }
		// 	steps {
		// 		git url: 'https://github.com/your-repository-url.git', branch: 'master'
		// 		sh 'npm run build'
		// 	}
		sh 'docker rmi -f my-app:* || true'
		sh 'docker build -t my-app:${env.BUILD_ID} -f ./Dockerfile .'
		}
		stage('Deploy') {
			 sh 'docker stop my-app || true'
             sh 'docker rm my-app || true'
             sh 'docker run --name my-app -p 8600:80 -d my-app:${env.BUILD_ID}'
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
