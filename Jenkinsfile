

pipeline {
    agent any 
    stages  { 
    stage('build') {
                agent { 
            dockerfile
            {
            filename 'dockerfile'         
            } 
        }
        steps{
             sh 'echo  $envVar'
        }        
        }      
        stage('run newly build image id') {
        steps{         
                script {
                   
                   imgID = (script: sh "docker images --format='{{.ID}}' | head -1",returnStdout: true)    
                   sh 'echo $imgID'
                }
 
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
