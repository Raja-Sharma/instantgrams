class Footer extends React.Component {
  render() {
    return(
      <div className="main-footer">
        <FooterHome />
        <FooterSearch />
        <FooterEntryNew />
        <FooterLikesFeed />
        <FooterCurrentUser />
      </div>
    )
  }
}

// add logic:
// if (not logged in) {
//   components: Home, Register, Login
// } else { see: above }
