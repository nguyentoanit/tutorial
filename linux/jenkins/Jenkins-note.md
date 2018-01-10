Jenkins
- Write jenkinsfile  to decribe about steps
- In jenkinsfile define stage (Build, Test, Deploy):
	+ Stage: Write shell script to build, test or deploy
	+ Can use Timeouts, retries and more for stages.
	+ Post: perform some actions based on the outcome of the Pipeline.
- Agent:
	+ Directive tells Jenkins where and how to execute the Pipeline.
	+ Pipeline is designed to easily use Docker images and containers to run inside
		
        ```
        pipeline {
    	    agent {
    	        docker { image 'node:7-alpine' }
    	    }
    	    stages {
    	        stage('Test') {
    	            steps {
    	                sh 'node --version'
    	            }
    	        }
    	    }
    	}
        ```

	+ When the Pipeline executes, Jenkins will automatically start the specified container and execute the defined steps within it:

- Example:

``` 
pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'hg pull'
            }
        }
        stage('Test'){
            steps {
                sh 'phpunit --verbose index'
            }
        }
        stage('Deploy') {
            steps {
                sh 'sh /usr/local/bin/deploy.sh'
                sh 'sh /usr/local/bin/migrate-db.sh'
            }
        }
    }
    post {
        failure {
            /**
            	* Send message to Chatwork
            	* Get chatwork API
            */
            sh 'curl -X POST -H "X-ChatWorkToken: xxx" -d "body=Faile%21" "https://api.chatwork.com/v2/rooms/{Room ID}/messages"'
        }
        success {

            sh 'curl -X POST -H "X-ChatWorkToken: xxx" -d "body=Success%21" "https://api.chatwork.com/v2/rooms/{Room ID}/messages"'
        }
    }
}
```