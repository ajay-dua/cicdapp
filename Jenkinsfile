
pipeline {
    agent { dockerfile true }
    stages  {
        stage('build Dockerimage 1') {
        steps{
            script {
            def testImage = docker.build("test-image", "./dockerfile") 
            }
        }
        }

        stage('start Dockerimage and run server') {
        steps{
            script {
            testImage.inside {
                sh 'node src/index.js' 
               
            }           
            }
             echo "start Dockerimage and run server passes"
        }
        }
        stage('run test') {
        steps{
            script {
            testImage.inside {
                 sh  'mocha ./test/test.js' 
            }           
            }
             echo "run test passes"
        }
        } 
    }
}
// pipeline {
//     agent { dockerfile true }
//     stages  {
//         stage('run')
//             {
//             steps {                       
//                 node {
//                 label 'label1'
//                 checkout scm
//                     "step1" { def testImage = docker.build("test-image", "./dockerfile")            
//                              testImage.inside {  
//                                 sh 'node src/index.js'                       
//                                      }
//                         }
//                 }
//                 }
//             }
//         stage('test')
//                 {
//             steps {
//                     testImage.inside {
//                         sh  'mocha ./test/test.js' 
//                                      }
//                    }
                     
//                 }
//             }
//         }

// pipeline {
// agent { dockerfile true }
// stages{
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
// }
// }
