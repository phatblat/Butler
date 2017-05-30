# GET /jenkins/api/json?tree=jobs%5Bname,color%5D

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

            {"_class":"hudson.model.Hudson","jobs":[{"_class":"org.jenkinsci.plugins.workflow.job.WorkflowJob","name":"gradle-xcodePlugin","color":"red"},{"_class":"org.jenkinsci.plugins.workflow.job.WorkflowJob","name":"mas","color":"blue"},{"_class":"hudson.model.FreeStyleProject","name":"whoami","color":"blue"}]}


