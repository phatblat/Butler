# GET /jenkins/

+ Request

    + Headers

            Cookie: JSESSIONID.aa30d0f7=node0100rhmix7qanzacqve2xaszhz21.node0



+ Response 403 (text/html;charset=utf-8)

    + Headers

            X-You-Are-In-Group-Disabled: JENKINS-39402: use -Dhudson.security.AccessDeniedException2.REPORT_GROUP_HEADERS=true or use /whoAmI to diagnose
            Set-Cookie: JSESSIONID.aa30d0f7=node0100rhmix7qanzacqve2xaszhz21.node0;Path=/jenkins;HttpOnly
            X-Jenkins: 2.62
            Expires: Thu, 01 Jan 1970 00:00:00 GMT
            X-Hudson: 1.395
            X-You-Are-Authenticated-As: anonymous
            X-Jenkins-Session: 9a2c8d2b
            X-Required-Permission: hudson.model.Hudson.Read
            X-Permission-Implied-By: hudson.security.Permission.GenericRead, hudson.model.Hudson.Administer
            X-Content-Type-Options: nosniff

    + Body

            <html><head><meta http-equiv='refresh' content='1;url=/jenkins/login?from=%2Fjenkins%2F'/><script>window.location.replace('/jenkins/login?from=%2Fjenkins%2F');</script></head><body style='background-color:white; color:white;'>
            
            
            Authentication required
            <!--
            You are authenticated as: anonymous
            Groups that you are in:
              
            Permission you need to have (but didn't): hudson.model.Hudson.Read
             ... which is implied by: hudson.security.Permission.GenericRead
             ... which is implied by: hudson.model.Hudson.Administer
            -->
            
            </body></html>                                                                                                                                                                                                                                                                                                            


