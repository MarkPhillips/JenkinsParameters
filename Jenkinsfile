pipeline{
   agent any
   parameters {
      choice(choices: ['DV1', 'DV2', 'QA1', 'QA2', 'UAT'], description: '', name: 'ENVIRONMENT')
    }
    environment{
       PATH = "PATH_0"
    }
    stages{

         stage("Git"){
               steps{
                  git changelog: false, poll: false, url: 'https://github.com/MarkPhillips/JenkinsParameters'
               }
         }

         stage("Set Path"){
               steps{

                  script{
                     if( params.ENVIRONMENT == "DV1" || params.ENVIRONMENT == "QA1"){
                       $PATH = "PATH_1"
                       echo "params.ENVIRONMENT =  params.ENVIRONMENT"
                     }else if(params.ENVIRONMENT == "DV2" || params.ENVIRONMENT == "QA2"){
                        $PATH = "PATH_2"
                        echo "params.ENVIRONMENT =  params.ENVIRONMENT"
                     }
                     else{
                        $PATH = "UAT"
                        echo "params.ENVIRONMENT =  params.ENVIRONMENT"
                     }

                     echo "PATH is $PATH"
                  }

               }
         }

         stage("DV1"){
            when {
               equals expected: "DV1", actual: params.ENVIRONMENT

            }
               steps{
                  echo "You have requested DV1"
                  echo "$PATH"
               }
         }

         stage("DV2"){
            when {
               equals expected: "DV2", actual:params.ENVIRONMENT
            }
               steps{
                  echo "You have requested DV2"
                  echo "$PATH"
               }
         }

         stage("QA1"){
            when {
               equals expected: "QA1", actual:params.ENVIRONMENT
            }
               steps{
                  echo "You have requested QA1"
                  echo "$PATH"
               }
         }

         stage("QA2"){
            when {
               equals expected: "QA2", actual: params.ENVIRONMENT
            }
               steps{
                  echo "You have requested QA2"
                  echo "$PATH"
               }
         }

         stage("UAT"){
            when {
               equals expected: "UAT", actual: params.ENVIRONMENT
            }
               steps{
                  echo "You have requested UAT"
                  echo environment.PATH
               }
         }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}

