class EntryFooterLinksComment extends React.Component {
  constructor(){
    super()
    this.state = {
      commentDisplay: false
    }
    this.handleCommentSubmission = this.handleCommentSubmission.bind(this)
  }

  handleCommentSubmission(e) {
    e.preventDefault();
    this.setState({ commentDisplay : true })
  }

  render() {
    let data = this.props
    if (this.state.commentDisplay === false ) {
      return(
        <div className="entry-footer-links-item">
          <form onSubmit={this.handleCommentSubmission} action="/comments/new" method="get">
            <input type="submit" value="Comment"/>
          </form>
        </div>
      )
  } else {
      return(
          <EntryFooterCommentForm data={data}/>
        )
      }
  }
}
