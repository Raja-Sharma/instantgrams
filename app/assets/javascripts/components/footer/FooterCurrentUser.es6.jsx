class FooterCurrentUser extends React.Component {
  render() {
    return(
      <div className="footer-item">
        <%= link_to "Profile", @user %>
        # => <a href="/users/<%= @user.id %>">Profile</a>
      </div>
    )
  }
}
