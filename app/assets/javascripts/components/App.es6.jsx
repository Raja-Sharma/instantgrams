class App extends React.Component {
  constructor() {
    super();
    this.state = {
      user: null,
      pictures: [],
    }
  }

  ComponentDidMount() {
    $.ajax({
      url: "/",
      method: 'get'
    }).done(function(response){
      this.setState({pictures: response})
    }.bind(this));
  }

  render() {
    return(
      <div>
        <Header />
        <Timeline pictures={this.state.pictures}/>
        <Footer user={this.state.user} />
      </div>
    )
  }
}
