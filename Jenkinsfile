
pipeline {
    agent { 
        dockerfile
            {
            filename 'dockerfile'  
           
            } 
        }
    stages  {        
        stage('ping test') {
        steps{           
            sh 'echo  $envVar'
            sh 'echo  pwd'
        }
        }
        stage('start Dockerimage and run server') {
        steps{
             sh 'node /src/index.js'
        }
        }
        stage('run test') {
        steps{
             sh 'echo run test passes'
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
