// jenkinsfile
pipeline{
    agent any
    environment {
        DOCKERHUB_PASS = credentials('docker-cred')
    }
    stages {
        stage("Building the Student Survey Image") {
            steps {
                script {
                    checkout scm
                    
                    sh 'rm -rf *.war'
                    sh 'jar -cvf swe645-assignment-1.war .'
                    sh 'echo ${BUILD_TIMESTAMP}'
                    sh "docker login -u $DOCKERHUB_PASS_USR -p $DOCKERHUB_PASS_PSW"
                    sh "docker build -t srikar430/studentsurvey645:${BUILD_TIMESTAMP} ."

                }
            }
        }
        stage("Pushing Image to DockerHub") {
            steps {
                script {
                    sh 'docker push srikar430/studentsurvey645:${BUILD_TIMESTAMP}'
                }
            }
        }
        stage("Deploying to Rancher as single pod") {
            steps{
                script {
                    sh "kubectl set image deployment/d3 container-0=srikar430/studentsurvey645:${BUILD_TIMESTAMP} -n a2-n"
                }
            }
        }
        stage("Deploying to Rancher as load balancer"){
            steps {
                sh "kubectl set image deployment/d-lb container-0=srikar430/studentsurvey645:${BUILD_TIMESTAMP} -n a2-n"
            }
        }
    }
}
