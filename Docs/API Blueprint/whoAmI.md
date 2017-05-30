# GET /jenkins/whoAmI/api/json

+ Request

    + Headers

            Cookie: JSESSIONID.aa30d0f7=node0100rhmix7qanzacqve2xaszhz21.node0



+ Response 200 (application/json;charset=utf-8)

    + Headers

            X-Content-Type-Options: nosniff
            X-Jenkins-Session: 9a2c8d2b
            X-Jenkins: 2.62

    + Body

            {"_class":"hudson.security.WhoAmI","anonymous":true,"authenticated":true,"authorities":[""],"details":"org.acegisecurity.ui.WebAuthenticationDetails@2cd90: RemoteIpAddress: 76.120.115.42; SessionId: node0100rhmix7qanzacqve2xaszhz21","name":"anonymous","toString":"org.acegisecurity.providers.anonymous.AnonymousAuthenticationToken@7ce94639: Username: anonymous; Password: [PROTECTED]; Authenticated: true; Details: org.acegisecurity.ui.WebAuthenticationDetails@2cd90: RemoteIpAddress: 76.120.115.42; SessionId: node0100rhmix7qanzacqve2xaszhz21; Granted Authorities: "}


