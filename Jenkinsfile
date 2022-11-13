pipeline {
    agent any
 

    
    stages{
        stage("git pull"){
            steps{
              
                git branch: 'main', 
                credentialsId: '914985b2-d510-4219-a8c0-03b722691da1', 
                url: 'https://github.com/aminemasseoudi998/Projet-Livraison-Continue.git'
                    
                }
                
            }
      
         stage("Build"){
            steps{
              
              script {
                 sh  "ansible-playbook ansible/build.yml -i ansible/inventory/host.yml"
              }
            }
         }
      
      
          stage("Docker"){
            steps{
              
            
                 sh  " ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml"
              
            }
         }
       stage('docker-registry'){
            steps{
                script{
                    sh "ansible-playbook ansible/docker-registry.yml -i ansible/inventory/host.yml "
                }
            }
        }
      
    

	}

}
