class Footer extends React.Component {
  render() {
    if (this.props.user === !null) {
      return(
        <div className="main-footer">
          <FooterHome />
          <FooterSearch />
          <FooterEntryNew />
          <FooterLikesFeed />
          <FooterCurrentUser />
        </div>
      )
    } else {
      return(
        <div className="main-footer">
          <FooterHome />
          <Register />
          <Login />
        </div>
      )
    }
  }
}

// add logic:
// if (not logged in) {
//   components: Home, Register, Login
// } else { see: above }
