class EntryFooterCommentsComment extends React.Component {
  render() {
    let comment = this.props
    return(
      <div className="entry-footer-comment">
        <p>
          {comment.comment.commenter_name}: {comment.comment.body}
        </p>
      </div>
    )
  }
}
