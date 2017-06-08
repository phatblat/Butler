use_frameworks!
inhibit_all_warnings!

target 'Butler' do
  platform :osx, '10.10'

  target 'ButlerTests' do
    inherit! :search_paths

    pod 'Quick', git: 'git@github.com:phatblat/Quick.git', branch: 'swift4'
    # path: '../../ios/pods/Quick'

    pod 'Nimble', git: 'git@github.com:phatblat/Nimble.git', branch: 'swift4'
    # , path: '../../ios/pods/Nimble'
  end
end
