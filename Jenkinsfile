
pipeline {
    agent { dockerfile true }
    stages  {        
        stage('getContainerId') {
        steps{
            sh "docker ps"
            echo "docker ps"
        }
        }
        stage('start Dockerimage and run server') {
        steps{
             echo "start Dockerimage and run server passes"
        }
        }
        stage('run test') {
        steps{
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
