```
pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'hg pull'
                sh 'hg up'
            }
        }
        stage('Test'){
            steps {
                sh 'phpunit --verbose index'
            }
        }
        stage('Deploy') {
            steps {
                sh 'bash /usr/local/bin/deploy.sh'
            }
        }
        stage('Migrate Databse') {
            steps {
                sh 'sh /usr/local/bin/migrate.sh'
            }
        }
    }
    /*
    post {
        failure {
            sh 'curl -X POST -H "X-ChatWorkToken: XXX" -d "body=Build+faile%21" "https://api.chatwork.com/v2/rooms/{room-id}/messages"'
        }
        success {
            sh 'curl -X POST -H "X-ChatWorkToken: XXX" -d "body=Build+successfuly%21" "https://api.chatwork.com/v2/rooms/{room-id}/messages"'
        }
    }
    */
}
```