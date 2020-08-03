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

         stage("Powershell"){
            when {
               equals expected: "DV1", actual: params.ENVIRONMENT
            }
            steps{
               powershell "PS\\automatedTests.ps1 -appName RTS -serverEnv DV1 -testCategory how"
            }
         }
    }
}