pipeline {
    agent any
    options{timestamps()} 
    stages {
        stage('Build'){
            steps{
                sh 'docker-compose build'
            }
        
        }
        stage('deploy'){
            steps{
                sh 'docker-compose up -d'
            }
        }
          
    }
    
}
