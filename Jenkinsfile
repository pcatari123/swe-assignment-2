pipeline{
    agent any
    environment {

	    DOCKERHUB_PASS = credentials('srikar430')
	}

    stages{
        
        stage('Building the war image') {
            steps {
                script {
                    checkout scm
                    sh 'rm -rf *.war'
                    sh 'jar -cvf swe645-assignment-1.war .'
                    sh 'echo $(BUILD_TIMESTAMP)'

                }
                    
            }
        }
 
 	   stage('Pushing latest code to Docker Hub') {
            steps {
                script {
                    sh 'docker push srikar430/studentsurvey645:$(BUILD_TIMESTAMP)'
                }
            }
        }
        
        stage('Deploying to Rancher') {
            steps {
               script{
                  sh 'kubectl set image deployment/d3 container-0=srikar430/studentsurvey645:$(BUILD_TIMESTAMP) -n jenkins-pipeline'
                  sh 'kubectl set image deployment/d-lb container-0=srikar430/studentsurvey645:$(BUILD_TIMESTAMP) -n jenkins-pipeline'
                }
            }
        }
    }
    
}
