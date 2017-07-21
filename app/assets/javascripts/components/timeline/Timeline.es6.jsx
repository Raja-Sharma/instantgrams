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

