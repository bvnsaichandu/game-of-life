pipeline{
    agent any
    stages{
        stage('git clone'){
            steps{
                sh 'https://github.com/bvnsaichandu/game-of-life.git'
            }
        }
        stage('package'){
            steps{
                sh 'mvn clean package'
            }
        }
    }
}
