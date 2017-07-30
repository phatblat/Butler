/**
 * Jenkinsfile
 * Butler
 */

String gitRepoUrl = 'git@github.com:phatblat/Butler.git'
String gitCredentials = '6715cdce-69af-499f-a621-05488b298ae1'
String gitRefspec = '+refs/heads/*:refs/remotes/origin/* +refs/pull/*:refs/remotes/origin/pr/*'

node {
    stage('Clone') {
        step([$class: 'WsCleanup'])
        if (env.sha1) {
            // PRB needs custom refspec
            Map scm = [
                $class: 'GitSCM',
                branches: [[name: env.sha1]],
                extensions: [
                    //[$class: 'RelativeTargetDirectory', relativeTargetDir: conf.dir],
                    //[$class: 'CleanCheckout'],
                    //[$class: 'PruneStaleBranch']
                ],
                userRemoteConfigs: [[
                    credentialsId:  gitCredentials,
                    refspec: gitRefspec,
                    url: gitRepoUrl
                ]]
            ]
            checkout scm
        } else {
            // Normal build
            git gitRepoUrl
        }
        sh './gradlew xcodeVersion'
        sh './gradlew swiftVersion'
        sh './gradlew spmVersion'
        sh './gradlew spmDescribe'
    }
    stage('Build') {
        sh './gradlew xcodebuild'
        sh './gradlew swiftBuild'
    }
    stage('Test') {
        echo 'Testing disabled due to issues with generated Xcode project'
        //sh './gradlew xcodetest'
        //sh './gradlew swiftTest'
    }
    stage('Integrate') {
        echo 'TODO: Configure integration tests'
/*        dir('example') {
            [
                'swiftVersion',
                'swiftpmVersion',
                'swiftpmToolsVersion',
                'swiftpmDescribe',
                'swiftpmDumpPackage',
                'swiftpmClean',
            ].each {
                sh "./gradlew ${it}"
            }
        }*/
    }
    stage('Assemble') {
        sh './gradlew archiveFramework'
    }
    stage('Archive') {
        archiveArtifacts artifacts: 'build/*.zip', fingerprint: true
    }
}
