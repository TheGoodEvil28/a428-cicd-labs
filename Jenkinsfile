node {
    stage('Checkout') {
        checkout scm
    }

    stage('Install') {
        sh 'npm install'
    }

    stage('Build') {
        sh 'npm run build'
    }

    stage('Test') {
        sh 'npm test -- --watchAll=false'
    }
}
