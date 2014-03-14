class ViewController < UIViewController
  def viewDidLoad
    super

    view.backgroundColor = UIColor.whiteColor

    @table_view            = UITableView.alloc.initWithFrame(view.bounds, style: UITableViewStylePlain)
    @table_view.dataSource = self

    view.addSubview(@table_view)
  end

  def tableView(table_view, numberOfRowsInSection: section)
    10
  end

  def tableView(table_view, cellForRowAtIndexPath: index_path)
    ScrollCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: 'IDENTIFIER')
  end
end
