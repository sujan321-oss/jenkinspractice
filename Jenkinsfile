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
                sh 'rm -rf jenkinspractice || true'
                 sh 'apt-get update'
                sh 'apt-get install nodejs -y'
                sh 'apt-get install npm -y'
                checkout scm
                sh "npm install -y"
                sh "ls  "
                sh "cd jenkinspractice"
                sh "echo 'under the jenkinspractice'"
                sh "ls"
 
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
