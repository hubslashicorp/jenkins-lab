#!groovy

pipeline {
    agent { label 'swarm-docker-slave' }

    environment {
        local_time = java.time.LocalTime.now()
        git_url = 'jenkins-lab.git'
        GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
    }

    stage('Script 1') {
        steps {
            dir('app') {
                retry(2) {
                    script {
                        try {
                            sh 'script-directory/script-one.sh'
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

    stage('Script 2') {
        steps {
            dir('app') {
                retry(2) {
                    script {
                        try {
                            sh 'script-directory/script-two.sh'
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

    stage('Script 3') {
        steps {
            dir('app') {
                retry(2) {
                    script {
                        try {
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
