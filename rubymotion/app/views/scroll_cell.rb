class ScrollCell < UITableViewCell
  def initWithStyle(style, reuseIdentifier: reuse_identifier)
    super.tap do |cell|
      cell.selectionStyle = UITableViewCellSelectionStyleNone

      cell.setup
    end
  end

  def setup
    @scroll_view = UIScrollView.alloc.init
    @scroll_view.backgroundColor = UIColor.redColor
    @scroll_view.delegate        = self
    @scroll_view.frame           = contentView.frame

    contentView.addSubview(@scroll_view)

    @scroll_view.contentSize = [contentView.frame.size.width * 2, contentView.frame.size.height]
  end

  def scrollViewWillEndDragging(scroll_view, withVelocity: velocity, targetContentOffset: target_content_offset)
    p 'scrollViewWillEndDragging'
  end
end
