pipeline {
    agent none
    stages {

        stage('Build') {
            agent {
                      docker {
                             image 'ubuntu' 
                             args "-u root -v /var/run/docker.sock:/var/run/docker.sock"
                            
                         }
                }

            steps{
                 sh 'apt-get update'
                sh 'apt-get install nodejs -y'
                sh 'apt-get install npm -y'
                sh "git clone https://github.com/sujan321-oss/jenkinspractice.git"
                sh "npm install -y"
                sh "cd jenkinspipeline"
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
