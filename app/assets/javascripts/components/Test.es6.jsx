class Test extends React.Component {

  componentDidMount() {
    $.ajax({
      url: "/pictures",
      method: "get"
    }).done(response=> {
      console.log(response)
    } )
}


  render() {
    return(
      <h1>worked</h1>
    )
  }
}
