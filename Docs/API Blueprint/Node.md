# GET /jenkins/api/json

+ Request

    + Headers

            Cookie: JSESSIONID.aa30d0f7=node013r8rs2sz5xap1ri7pdaaquij026.node0
            Authorization: Basic cmVhZG9ubHk6NWJiNWU4NzMwNTY4ODIzNGI1MWI0N2ExMzNmOTFiNmE=



+ Response 200 (application/json;charset=utf-8)

    + Headers

            X-Content-Type-Options: nosniff
            X-Jenkins-Session: 9a2c8d2b
            X-Jenkins: 2.62

    + Body

            {"_class":"hudson.model.Hudson","assignedLabels":[{}],"mode":"NORMAL","nodeDescription":"the master Jenkins node","nodeName":"","numExecutors":2,"description":null,"jobs":[{"_class":"org.jenkinsci.plugins.workflow.job.WorkflowJob","name":"gradle-xcodePlugin","url":"http://mini.log-g.co/jenkins/job/gradle-xcodePlugin/","color":"red"},{"_class":"org.jenkinsci.plugins.workflow.job.WorkflowJob","name":"mas","url":"http://mini.log-g.co/jenkins/job/mas/","color":"blue"},{"_class":"hudson.model.FreeStyleProject","name":"whoami","url":"http://mini.log-g.co/jenkins/job/whoami/","color":"blue"}],"overallLoad":{},"primaryView":{"_class":"hudson.model.AllView","name":"all","url":"http://mini.log-g.co/jenkins/"},"quietingDown":false,"slaveAgentPort":-1,"unlabeledLoad":{"_class":"jenkins.model.UnlabeledLoadStatistics"},"useCrumbs":true,"useSecurity":true,"views":[{"_class":"hudson.model.AllView","name":"all","url":"http://mini.log-g.co/jenkins/"}]}


