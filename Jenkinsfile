node {
    env.NODE_OPTIONS = '--openssl-legacy-provider'

    stage('Checkout') {
        checkout scm
    }

    stage('Build & Test') {
        docker.image('node:lts').inside {
            sh 'npm install'
            sh 'npm run build'
            sh 'npm test -- --watchAll=false'
        }
    }
}
