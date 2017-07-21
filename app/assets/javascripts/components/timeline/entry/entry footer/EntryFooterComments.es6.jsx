class EntryFooterComments extends React.Component {
  render() {
    let pic = this.props
    let comments = pic.pic.picture.comments
    return(
      <div className="entry-footer-comments">
        { comments.map( (comment, i) =>
          <EntryFooterCommentsComment comment={comment} key={i}/>
        )}
      </div>
    )
  }
}
