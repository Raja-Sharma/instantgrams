class FooterHome extends React.Component {
  render() {
    return(
      <div className="footer-item">
        <%= link_to "Home", root_path %>
        # => <a href="/">Home</a>
      </div>
    )
  }
}
