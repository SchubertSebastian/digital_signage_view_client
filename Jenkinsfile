node {
  checkout scm
  def frontendImage
  def backendImage

  dir('frontend-webclient') {
    stage('Build Frontend') {
      frontendImage = docker.build("dev.dispway.com:5050/dispway/webclient/webclient-web:${env.BUILD_ID}", '-f Dockerfile .')
    }
  }

  dir('backend-webclient') {
    stage('Test Backend') {
    }

    stage('Build Backend') {
      backendImage = docker.build("dev.dispway.com:5050/dispway/webclient/webclient-native:${env.BUILD_ID}", '-f Dockerfile.multistage.jvm ./src/main/docker')
    }
  }

  stage('Push to registry') {
    docker.withRegistry('https://dev.dispway.com:5050', 'docker-registry-deploy-token') {
      frontendImage.push()
      backendImage.push()
    }
  }
}
