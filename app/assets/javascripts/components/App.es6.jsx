class App extends React.Component {
  constructor() {
    super();
    this.state = {
      user: null,
      pictures: [],
      page: "timeline"
    }
  }

  componentDidMount() {
    $.ajax({
      url: "/pictures",
      method: 'get'
    }).done(function(response){
      this.setState({pictures: response.pictures})
    }.bind(this));
  }

  render() {
    if (this.state.page === "user") {
      return(
        <div>
          <Header />
          <UserShow pictures={this.state.pictures} />
          <Footer user={this.state.user} />
        </div>
      )
    } else if (this.state.page === "timeline") {
      return(
        <div>
          <Header />
          <Timeline pictures={this.state.pictures} />
          <Footer user={this.state.user} />
        </div>
      )
    }
  }
}
