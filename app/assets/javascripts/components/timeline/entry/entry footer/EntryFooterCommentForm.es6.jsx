class EntryFooterCommentForm extends React.Component {

  render() {
    let data = this.props
    return(
      <form className="" action="pictures/{data.data.data.pic.picture.id}/comments/new" method="post">
          <textarea name="" rows="8" cols="80"></textarea>
          <div>
            <input type="submit"/>
          </div>
      </form>
    )
  }
}
