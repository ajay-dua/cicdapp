pipeline {
 
agent { Dockerfile true }
stages{
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
}
 
}

// pipeline {
//         agent {
//             docker {                         
//                         image  'node:alpine' 
//                          args '-p 3000:3000' 
//                 }
//             }                    
//         stage('Build') { 
//             steps {
//                 sh 'npm install' 
//             }
//         }
//         stage('run') { 
//             steps {
//                 sh 'node src/index.js' 
//             }
//         }
//         stage('test') { 
//             steps {
//                 sh  'mocha ./test/test.js' 
//             }
//         }
//     }
