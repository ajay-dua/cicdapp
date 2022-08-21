pipeline {
    agent any 
    stages  { 
    // stage('clean')             
    //         {
    //         steps{            
    //         sh 'docker rmi cicdtestapp:v1'         
    //         }
    //         }     
    stage('build') {
                agent { 
            dockerfile
            {
            //filename 'dockerfile'
            
            additionalBuildArgs '-t cicdtestapp:v1'         
            } 
        }
        steps{
             sh 'echo  $envVar'
        }        
        }      
        stage('run newly build image id') {
        steps{         
                //script {
                    
                   //sh ("docker images --format='{{.ID}}' |  head -1")               
                   sh ("docker run -p 3000:3000 -t cicdtestapp:v1")  
                               
                //}
        
        }
        }
        stage('run test') {
        steps{
             sh 'mocha /test/test.js'
        }
        }
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
