node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build & Test') {
        // Gunakan Docker Node.js
        docker.image('node:lts').inside {
            sh 'npm install'
            sh 'npm run build'
            sh 'npm test -- --watchAll=false'
        }
    }
}
