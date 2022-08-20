
pipeline {
    agent any 
    stages  { 
    stage('build') {
        steps{
        agent { 
            dockerfile
            {
            filename 'dockerfile'         
            } 
        }    
        }        
        }      
        stage('run newly build image') {
        steps{           
            sh 'echo  $envVar'
            sh 'docker ps'
        }
        }
        // stage('start Dockerimage and run server') {
        // steps{
        //      //sh 'node /var/jenkins_home/workspace/nodejsbuild/'
        // }
        // }
        // stage('run test') {
        // steps{
        //      sh 'echo run test passes'
        // }
        // } 
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
