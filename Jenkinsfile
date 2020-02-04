pipeline{
    environment {
        registry = "bvnsaichandu/gofpipeline"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any
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
}
