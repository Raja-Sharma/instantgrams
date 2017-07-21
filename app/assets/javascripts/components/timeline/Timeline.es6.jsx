class Timeline extends React.Component {

  render() {
    let Pictures = this.props.pictures
    return(
      {
        Pictures.map( (picture, i) =>
        <Entry picture={picture} key={i} />
      )}
    )
  }
}

    //  <div className="timeline">
    //    <Entry />
    //    <Entry />
    //  </div>

    //  <div className="user-show">
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //    <UserShowPicture />
    //  </div>

