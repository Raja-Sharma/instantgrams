class EntryFooterCaption extends React.Component {
  render() {
    let pic = this.props
    return(
      <div className="entry-footer-caption">
        <p> {pic.pic.picture.poster}: {pic.pic.picture.caption}</p>
      </div>
    )
  }
}
