node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build & Test') {
        sh 'npm install'
        sh 'npm run build'
        sh 'npm test -- --watchAll=false'
    }
}
