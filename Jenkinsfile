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
pipeline {
    agent { dockerfile true }
    stages{
node {
    checkout scm
    def testImage = docker.build("test-image", "./dockerfile") 

    testImage.inside {
        stage('run') {
        sh 'node src/index.js'
        }
        stage('test') {
        sh  'mocha ./test/test.js' 
        }
    }
}
}
}