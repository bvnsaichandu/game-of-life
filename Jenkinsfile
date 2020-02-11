pipeline{
    environment {
        registry = "bvnsaichandu/gofpipeline"
        registryCredential = '234a8511-2c6b-4c5f-8d8b-57ac8bdf5c02'
        dockerImage = ''
    }
    agent any
    def notifyStarted(){
        slackSend (color: '#FFFF00', message: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }
    stages{
        stage("git clone"){
            steps{
                git 'https://github.com/bvnsaichandu/game-of-life.git'
            }
        }
        stage("package"){
            steps{
                sh 'mvn clean package'
            }
        }
        stage("build image"){
            steps{
                script{
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage("Push to docker hub"){
            steps{
                script{
                    docker.withRegistry( '', registryCredential ){
                        dockerImage.push()
                    }
                }
            }
        }
    }    
    post("slack notification"){
        success{
            slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }
        failure{
                slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }         
    }
}

