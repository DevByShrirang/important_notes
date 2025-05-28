pipeline {
    agent any
    
    environment {
        SCANNER_HOME =  tool 'SonarQube Scanner'
    }

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', 
                url: 'https://github.com/DevByShrirang/DevopsProject2.git'
            }
        }
        stage('SonarQubeAnalysis') {
            steps { 
                withSonarQubeEnv ('sonar-server') {
                    $SCANNER_HOME/bin/sonar-scanner \
                    -Dsonar.projectName=amazon-prime \
                    -Dsonar.projectKey=amazon-prime \
                }
            }
        }
    }
}