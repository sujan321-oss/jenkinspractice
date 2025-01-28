pipeline {

                 agent{
                      docker {
                             image 'ubuntu' 
                             args "-u root -v /var/run/docker.sock:/var/run/docker.sock"
                            
                         }
            }
    stages {

        stage('Build') {

            steps{
                sh 'rm -rf jenkinspractice || true'
                 sh 'apt-get update'
                sh 'apt-get install nodejs -y'
                sh 'apt-get install npm -y'
                checkout scm
                sh "npm install -y"
                sh "ls  "
         
                sh "echo 'under the jenkinspractice'"
                sh "ls"
 
                sh "npm run build"  

            }

        }

        stage("integrating_image"){
           steps{
             sh "docker build -t nodeapplication ."

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
