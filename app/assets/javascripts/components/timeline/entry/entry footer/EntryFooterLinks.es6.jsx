class EntryFooterLinks extends React.Component {
  render() {
    let pic = this.props
    return(
      <div className="entry-footer-links">
        <EntryFooterLinksLike />
        <EntryFooterLinksComment data ={ pic}/>
      </div>
    )
  }
}
