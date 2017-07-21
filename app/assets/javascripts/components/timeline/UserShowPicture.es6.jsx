class UserShowPicture extends React.Component {
  render() {
    let picture = this.props.picture
    return(
      <div className="user-show-picture"><img src={picture.url} className="user-show-picture" /></div>
    )
  }
}