pipeline {
    agent none
    stages {

        stage('Build') {
            agent {
                      docker {
                             image 'node:alpine' 
                         }
                }


            steps{
                sh "git clone https://github.com/sujan321-oss/jenkinspractice.git"
                sh "npm install -y"
                sh "npm run build"  
            }

        }



        stage("testing") {
            agent any
            steps{
                sh "echo 'testing a code'"
            }
        }



    }

}
