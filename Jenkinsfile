pipeline {
    agent any
 

    
    stages{
        stage("git pull"){
            steps{
              
                git branch: 'main', 
                credentialsId: 'aminetoken', 
                url: 'https://github.com/aminemasseoudi998/Projet-Livraison-Continue.git'
                    
                }
                
            }
      
         stage("Build"){
           agent {
                label 'docker'
		           	}
            steps{
              
              script {
                 sh  "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"
              }
            }
         }
      
      
          stage("Docker"){
            agent {
		          	label 'docker'
			            }
            steps{
              
            
                 sh  " ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml"
              
            }
         }
       stage('docker-registry'){
                         agent {
		                     	label 'docker'
		                           	}
            steps{
                script{
                    sh "ansible-playbook ansible/docker-registry.yml -i ansible/inventory/host.yml "
                }
            }
        }
      
    

	}

}
