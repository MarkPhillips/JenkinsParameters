pipeline{
   agent any
   parameters {
      choice(choices: ['DV1', 'DV2', 'QA1', 'QA2', 'UAT'], description: '', name: 'ENVIRONMENT')
    }
    stages{

         stage("Git"){
               steps{
                  git changelog: false, poll: false, url: 'https://github.com/MarkPhillips/JenkinsParameters'
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

