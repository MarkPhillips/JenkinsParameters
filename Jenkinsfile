pipeline{
    agent {
        label "any"
    }
    stages{

        stage("Gather Parameters"){
            steps{
               script{
                  env.TEST_ENVIRONMENT = input message: '', parameters: [choice(choices: ['DV1', 'DV2', 'QA1', 'QA2', 'UAT'], description: 'Test Environment', name: 'Environment')]
               }
            }
            post{
                always{
                    echo "${env.TEST_ENVIRONMENT}"
                }
            }
            stage("Git"){
                steps{
                    git changelog: false, poll: false, url: 'https://github.com/MarkPhillips/JenkinsParameters'
                }
            }
            stage("DV1"){
               when {
                  equals expected: "DV1", actual: "${env.TEST_ENVIRONMENT}"

               }
                steps{
                     echo "You have requested DV1"
                }
            }
            stage("DV2"){
               when {
                  equals expected: "DV2", actual: "${env.TEST_ENVIRONMENT}"

               }
                steps{
                     echo "You have requested DV2"
                }
            }
            stage("QA1"){
               when {
                  equals expected: "QA1", actual: "${env.TEST_ENVIRONMENT}"

               }
                steps{
                     echo "You have requested QA1"
                }
            }
           stage("QA2"){
               when {
                  equals expected: "QA2", actual: "${env.TEST_ENVIRONMENT}"

               }
                steps{
                     echo "You have requested QA2"
                }
            }
           stage("UAT"){
               when {
                  equals expected: "UAT", actual: "${env.TEST_ENVIRONMENT}"

               }
                steps{
                     echo "You have requested UAT"
                }
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

