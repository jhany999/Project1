pipeline{
    agent any
    stages{
        stage("con_down"){
            steps{
            git branch: 'main', url: 'https://github.com/jhany999/Project1.git'
                 }
                          }
         stage("con_build"){
            steps{
            sh 'mvn package
                 }
                     }
         stage("con_deploy"){
            steps{
            deploy adapters: [tomcat9(credentialsId: '449f2b82-0b3d-4a6b-b29b-ca4d1a52899d', path: '', url: 'http://172.31.0.227:8080')], contextPath: 'test', war: '**/*.war'
                 }
                     }             
        stage("con_test"){
            steps{
                sh'test passed'
                 }
                     } 
        stage("con_deliver"){
            steps{
                sh 'scp /var/lib/jenkins/workspace/pipe/target/devops.war ubuntu@172.31.4.79:/var/lib/tomcat9/webapps/release.war'
                 }
                     }             
    }
}
