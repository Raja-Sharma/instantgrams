class EntryFooter extends React.Component {
  render() {
    return(
      <div className="entry-footer">
        <EntryFooterLinks />
        <EntryFooterLikes />
        <EntryFooterCaption />
        <EntryFooterComments />
        <EntryFooterTimestamp />
      </div>
    )
  }
}
