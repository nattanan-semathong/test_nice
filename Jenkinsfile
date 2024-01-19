pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'Build Starting...'
                script {
                    sh """
                    #!/bin/bash
                    gem install fastlane -NV
                    fastlane fetch_dependencies
                    fastlane lint
                    """
                }
            }
        }
    }
}