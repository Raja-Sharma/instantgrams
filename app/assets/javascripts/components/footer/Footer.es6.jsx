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
