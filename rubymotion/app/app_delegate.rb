class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    @window.setRootViewController(ViewController.alloc.init)
    @window.makeKeyAndVisible

    true
  end
end
