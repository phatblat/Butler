Pod::Spec.new do |s|
  s.name             = 'Butler'
  s.version          = '0.1.0'
  s.summary          = 'Swift bindings for the Jenkins API.'
  s.description      = <<-DESC
Swift framework for accessing the Jenkins
[remote access API](https://wiki.jenkins-ci.org/display/JENKINS/Remote+access+API).
                       DESC

  s.homepage         = 'https://github.com/phatblat/Butler'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'Ben Chatelain' => 'ben@octop.ad' }
  s.source           = { git: 'https://github.com/phatblat/Butler.git', tag: s.version.to_s }
  s.social_media_url = 'https://twitter.com/phatblat'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'

  s.source_files = 'Sources/**/*'
end
