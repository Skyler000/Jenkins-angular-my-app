pipeline { 
	agent none
	stages {
		stage('NPM install') {
            agent {
                docker {
                    image 'node:18.10-alpine'
                    // args '-v $HOME:/home/jenkins'
                }
            }
			steps {
                sh 'npm install'
                sh 'npm install -g @angular/cli@1.0.2'
                sh 'ng --version'
			    // sh 'docker rmi -f my-app:v1 || true'
			    // sh 'docker build -t my-app:v1 ./Dockerfile .'
			}
		}
        stage('Checkout') {
              //disable to recycle workspace data to save time/bandwidth
            steps {
                deleteDir()
                checkout scm
            }
        }
    }
    	// stage('Deploy') {
		// 	steps {
		// 		 sh 'docker stop my-app || true'
        //          sh 'docker rm my-app || true'
        //          sh 'docker run --name my-app -p 8600:80 -d my-app:v1'
		// 	}
			 
		// }
	
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
// // pipeline {
// //     agent any
// //      tools {nodejs "node"}
// //       environment {
// //          PATH='/usr/local/bin:/usr/bin:/bin'
// //       }
// //     stages{
// //     stage('Checkout') {
// //         //disable to recycle workspace data to save time/bandwidth
// //          steps{
// //         deleteDir()
// //         checkout scm
// //          }
// //         //enable for commit id in build number
// //         //env.git_commit_id = sh returnStdout: true, script: 'git rev-parse HEAD'
// //         //env.git_commit_id_short = env.git_commit_id.take(7)
// //         //currentBuild.displayName = "#${currentBuild.number}-${env.git_commit_id_short}"
// //     }

// //     stage('NPM Install') {
// //         /*withEnv(["NPM_CONFIG_LOGLEVEL=warn"]) {*/
// //         steps{ 
// //             sh 'npm install'
// //             sh 'npm install -g @angular/cli@1.0.2'
// //             sh 'ng --version'
// //         }
// //         /*}*/
// //     }

// //     stage('Build') {
// //          steps{
// //         milestone(20)
// //         sh 'ng build --prod'
// //          }
// //     }

// //     stage('Archive') {
// //          steps{
// //         sh 'tar -cvzf dist.tar.gz --strip-components=1 dist'
// //         archive 'dist.tar.gz'
// //          }
// //     }

// //     stage('Deploy') {
// //          steps{
// //         milestone(20)
// //         echo "Deploying..."
// //          }
// //     }
// //     }
// // }



// pipeline {
//     agent any
//     triggers {
//         githubPush()
//         }
//     stages {
//         stage('Test') {
//             steps {
//                 sh 'docker rmi -f flutter-web-app:v1.0.0 || true'
//                 sh 'docker build -t flutter-web-app:v1.0.0 -f ./Dockerfile .'
//                 sh 'docker stop traning-app || true'
//                 sh 'docker rm traning-app || true'
//                 sh 'docker run --name traning-app -p 8600:80 -d flutter-web-app:v1.0.0'
//             }
//         }
//     }
// }