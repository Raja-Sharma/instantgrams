class UserShow extends React.Component {
  render() {
    let Pictures = this.props.pictures
    return(
      <div className="user-show"> {
        Pictures.map( (picture, i) =>
        <UserShowPicture picture={picture} key={i} />
      )} </div>
    )
  }
}