




pipeline {

          
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

            script{
                def testingimage(String a){
                        echo "hello this is testimage function"
                        echo a 
                    }
                testingimage("value")
            }

            checkout scm

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
