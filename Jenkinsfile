pipeline{
        agent any
        stages {
             stage('git clone') {
                  steps {
                       sh 'https://github.com/immurali5/game-of-life.git'
                   }
             }
             stage('Package') {
                  steps {
                       sh 'mvn clean package'
                   }
             }

}
