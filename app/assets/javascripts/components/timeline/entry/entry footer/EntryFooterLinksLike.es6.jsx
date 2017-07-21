class EntryFooterLinksLike extends React.Component {
  render() {
    return(
      <div className="entry-footer-links-item">
        <form action="/likes" method="post">
          <input type="submit" value="Like"/>
        </form>
      </div>
    )
  }
}
