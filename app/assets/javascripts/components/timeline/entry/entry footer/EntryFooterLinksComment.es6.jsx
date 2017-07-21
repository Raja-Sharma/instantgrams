class EntryFooterLinksComment extends React.Component {
  render() {
    return(
      <div className="entry-footer-links-item">
        <form action="/comments/new" method="get">
          <input type="submit" value="Comment"/>
        </form>
      </div>
    )
  }
}
