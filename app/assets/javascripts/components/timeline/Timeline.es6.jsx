class Timeline extends React.Component {
  render() {
    let Pictures = this.props.pictures
    return(
      <div className="timeline"> {
        Pictures.map( (picture, i) =>
        <Entry picture={picture} key={i} />
      )} </div>
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

