folder('Jobs') {
    description('Jobs related to my software projects')
}

pipelineJob('Jobs/Pipeline Github Example') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url("https://github.com/JCFlores93/cicd-terraform-jenkins.git")
                    }
                    branches("master")
                    scriptPath('Jenkinsfile')
                }
            }
        }
    }
}