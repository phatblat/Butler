# GET /jenkins/whoAmI/api/json

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

            {"_class":"hudson.security.WhoAmI","anonymous":false,"authenticated":true,"authorities":["authenticated"],"details":null,"name":"readonly","toString":"org.acegisecurity.providers.UsernamePasswordAuthenticationToken@5f87f5a9: Username: readonly; Password: [PROTECTED]; Authenticated: true; Details: null; Granted Authorities: authenticated"}


