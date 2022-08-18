
pipeline {
    agent { dockerfile true }
    stages  {
        stage('stage 1')
            {
            steps                        
                node {
                checkout scm
                def testImage = docker.build("test-image", "./dockerfile")            
                    testImage.inside {  
                            sh 'node src/index.js'                       
                                     }
                }
            stage('stage 2')
                {
            steps {
                    testImage.inside {
                        sh  'mocha ./test/test.js' 
                                     }
                   }
                     
                }
            }
        }
}
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
