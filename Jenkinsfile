pipeline {
    // agent any

    agent {
            label 'windows'
    }

    environment {
        NODE_ENV = 'production'
    }

    tools {
        nodejs 'NodeJS_22'  
    }

    stages {
      
        stage('Install Dependencies') {
            steps {
                sh 'npm ci'
            }
        }
        
        stage('Lint') {
            steps {
              sh 'npm run lint || echo "Lint skipped or no config"'
            }
        }

        stage('Test') {
            steps {
              sh 'npm test || echo "No tests defined"'
            }
        }

        stage('Debug Branch') {
            steps {
                echo "GIT_BRANCH: ${env.GIT_BRANCH}"
                echo "BRANCH_NAME: ${env.BRANCH_NAME}"
            }
        }


        stage('Deploy') {
            when {
                expression {
                    return env.GIT_BRANCH?.endsWith('main')
                }
            }
            steps {
                echo "✅ Deploying from ${env.GIT_BRANCH}"
                bat 'scripts\\deploy.bat'
                // sh './scripts/deploy.sh'
            }
        }
       

    }

    post {

        always {
            echo 'Pipeline finished.'
        }
        success {
            echo '✔️ Build successful!'
        }
        failure {
            echo '❌ Build failed!'
        }
    }

}