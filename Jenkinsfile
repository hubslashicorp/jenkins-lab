#!groovy

pipeline {

    agent { label 'master' }

    environment {
        local_time = java.time.LocalTime.now()
        app_name = "ecargo_pacotes"
        git_url = "EcargoPacotes.git"
        GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
    }

        stage('Script 1') {
            steps {
                dir('app') {
                    retry(2) {
                        script {
                            try {
                                sh 'script-directory/script-one.sh'
                                echo "Script executado com sucesso..."
                            } catch (err) {
                                echo "Não foi possível realizar a copia...";
                                echo err.getMessage();
                            }
                        }
                    }
                }
            }
        }
    }
}
