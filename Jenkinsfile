pipeline {
    agent any

    stages {timestamps()
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
