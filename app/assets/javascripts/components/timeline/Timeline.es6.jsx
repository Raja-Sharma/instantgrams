class Timeline extends React.Component {
  render() {
    return(
      {
        Pictures.map( (picture, i) =>
        <Entry data={picture} key={i} />
      }
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

