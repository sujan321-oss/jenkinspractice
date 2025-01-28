
pipeline {

    agent none
     
    stages {

        stage('Build') {

                   agent{
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
         
                sh "echo 'under the jenkinspractice'"
                sh "ls"
 
                sh "npm run build"  

            }

        }

        stage("integrating_image"){

                agent{
                    docker {
                            image 'docker:latest' 
                            args "-u root -v /var/run/docker.sock:/var/run/docker.sock"

                    }
                }


           steps{
           
            checkout scm
            sh "docker build -t khuma1/nodeapplication ."
            sh "docker login -u khuma1 -p P00kharelk#"
            sh "docker push khuma1/nodeapplication"
          

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
