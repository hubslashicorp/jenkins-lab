#!groovy

pipeline {

    agent { label 'swarm-docker-slave' }

    environment {
        local_time = java.time.LocalTime.now()
        git_url = 'jenkins-lab.git'
        GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
    }
    stages{
        stage('script-1') {
            steps {
                dir('app') {
                    checkout scm
                    retry(2) {
                        script {
                            try {
                                sh 'chmod 777 -R ./script-directory'
                                sh 'ls -lha'
                                sh './script-directory/script-one.sh'
                                echo 'Script executado com sucesso...'
                            }
                            catch (err) {
                                echo 'Não foi possível realizar a copia...'
                                echo err.getMessage()
                            }
                        }
                    }
                }
            }
        }
        stage('script-2') {
            steps {
                dir('app') {
                    checkout scm
                    retry(2) {
                        script {
                            try {
                                sh 'chmod 777 -R ./script-directory'
                                sh './script-directory/script-two.sh'
                                echo 'Script executado com sucesso...'
                            } catch (err) {
                                echo 'Não foi possível realizar a copia...'
                                echo err.getMessage()
                            }
                        }
                    }
                }
            }
        }
        stage('script-3') {
            steps {
                dir('app') {
                    checkout scm
                    retry(2) {
                        script {
                            try {
                                 sh 'chmod 777 -R script-directory'
                                sh 'script-directory/script-three.sh'
                                echo 'Script executado com sucesso...'
                            } catch (err) {
                                echo 'Não foi possível realizar a copia...'
                                echo err.getMessage()
                            }
                        }
                    }
                }
            }
        }
    }
}
