class EntryFooter extends React.Component {
  render() {
    let picture = this.props
    return(
      <div className="entry-footer">
        <EntryFooterLinks pic={picture}/>
        <EntryFooterLikes pic={picture} />
        <EntryFooterCaption pic={picture}/>
        <EntryFooterComments pic={picture}/>
        <EntryFooterTimestamp pic={picture}/>
      </div>
    )
  }
}
