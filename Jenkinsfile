pipeline {
  stages{
    stage('SCM'){
        git 'https://github.com/bvnsaichandu/game-of-life.git'
    }
	
    stage('Build & Package'){
        sh 'mvn clean package'
    }
  }
}
