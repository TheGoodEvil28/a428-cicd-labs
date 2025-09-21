node {
    stage('Checkout') {
        checkout scm
    }

    stage('Install') {
        sh 'npm install'
    }

    stage('Build') {
        docker.image('node:lts').inside {
            sh 'npm install'
            sh 'npm run build'
            sh 'npm test -- --watchAll=false'
        }
    }

    stage('Test') {
        sh 'npm test -- --watchAll=false'
    }
}
