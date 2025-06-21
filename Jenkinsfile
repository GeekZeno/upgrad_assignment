pipeline{
    agent {
        label 'worker'
    }
    stages{
        stage("Build and Push"){
            steps{
                sh '''
                     cd vote
                     aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 584716546011.dkr.ecr.ap-south-1.amazonaws.com
                     docker build -t 584716546011.dkr.ecr.ap-south-1.amazonaws.com/democ51:vote-v${BUILD_NUMBER} .
                     docker push 584716546011.dkr.ecr.ap-south-1.amazonaws.com/democ51:vote-v${BUILD_NUMBER}
                '''
            }
        }
        stage("Deploy"){
            steps{
                sh '''
                kubectl  set image deployment vote vote=584716546011.dkr.ecr.ap-south-1.amazonaws.com/democ51:vote-v${BUILD_NUMBER}
                kubectl rollout restart deployment vote
                '''
            }
        }
    }
}
