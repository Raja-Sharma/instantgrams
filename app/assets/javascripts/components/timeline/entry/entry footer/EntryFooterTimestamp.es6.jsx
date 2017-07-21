class EntryFooterTimestamp extends React.Component {
  render() {
    let pic = this.props
    return(
      <div className="entry-footer-timestamp">
        <p>{pic.pic.picture.post_time}</p>
      </div>
    )
  }
}
