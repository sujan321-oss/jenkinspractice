
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
            sh "docker build -t khuma1/nodeapplicationnn ."
           
                                                                                                                                             withCredentials([usernamePassword(credentialsId: '984855', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')])
       {
            sh "docker login -u $USERNAME -p $PASSWORD"
           sh "docker push khuma1/nodeapplicationnn"      }

           }

        }



         stage("error_)condition") {
                  steps{ 
			script { 
                                 echo "error stage .........."
 				}
         		  }   
                error("failure occured")
             } 



    

        stage("testing") {
            agent any
                when {
                     expression {
                           currentBuild.result == null || current.result=="SUCCESS" 
   
  			}
                   
		}
     
             steps{
                 sh "  echo '____________________________________________________________________________' " 
                sh " echo 'condition satisfied' "
                sh " echo '------------------------------------------------------------------------------' "
              }     

        }

    }

}
