


pipeline {
    agent { dockerfile true }
stages  {
        stage('run')
            {
            node {
                checkout scm
                def testImage = docker.build("test-image", "./dockerfile")            
                    testImage.inside {  
                            sh 'node src/index.js'                       
                                     }
                }                     
        stage('test') {
                    testImage.inside {
                        sh  'mocha ./test/test.js' 
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
