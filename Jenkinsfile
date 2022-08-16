pipeline {

    agent {
        docker {
            image 'node:alpine' 
            args '-p 3000:3000' 
        }
    }
    stages {

        stage('install') { 
            steps {
                        sh """curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall"""

            }
        }
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }

        stage('run') { 
            steps {
                sh 'node src/index.js' 
            }
        }
        stage('test') { 
            steps {
                sh  'mocha ./test/test.js' 
            }
        }
        // stage('Deliver') { 
        //     steps {
        //         sh './jenkins/scripts/deliver.sh' 
        //         input message: 'Finished using the web site? (Click "Proceed" to continue)' 
        //         sh './jenkins/scripts/kill.sh' 
        //     }
        // }
    }
}
}
}