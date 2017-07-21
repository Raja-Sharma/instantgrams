class EntryFooterLikes extends React.Component {
  render() {
    let pic = this.props
    return(
      <div className="entry-footer-likes">
        <p> {pic.pic.picture.num_likes} </p>
      </div>
    )
  }
}
