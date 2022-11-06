pipeline {
    agent any
 

    
    stages{
        stage("git pull"){
            steps{
              
                git branch: 'main', 
                credentialsId: 'd4ed5b79-563e-4d2b-b047-fc679b4a04ca', 
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
              
              script {
                 sh  "ansible-playbook ansible/docker.yml -i ansible/inventory/host.yml"
              }
            }
         }
      
    

	}

}
