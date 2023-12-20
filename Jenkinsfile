pipeline {
    agent any

    environment {
        DOCKER_HUB_USERNAME = credentials('docker-hub-username')
        DOCKER_HUB_TOKEN = credentials('docker-hub-token')
        IMAGE_NAME = 'intuji-web-app'
        IMAGE_TAG = 'latest'
    }

    stages {
        stage('Building') {
            steps {
                script {
                    sh "docker build -t $IMAGE_NAME:$IMAGE_TAG ."
                }
            }
        }

        stage('Pushing to Docker Hub') {
            steps {
                script {
                    // Log in to Docker Hub
                    sh "echo \"$DOCKER_HUB_TOKEN\" | docker login --username \"$DOCKER_HUB_USERNAME\" --password-stdin"

                    // Tag and push Docker image
                    sh "docker tag $IMAGE_NAME:$IMAGE_TAG docker.io/$DOCKER_HUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG"
                    sh "docker push docker.io/$DOCKER_HUB_USERNAME/$IMAGE_NAME:$IMAGE_TAG"
                }
            }
        }

        stage('Cleaning image') {
            steps {
                script {
                    sh "docker rmi $IMAGE_NAME:$IMAGE_TAG"
                }
            }
        }
    }
}