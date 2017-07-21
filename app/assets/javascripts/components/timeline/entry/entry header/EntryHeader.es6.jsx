class EntryHeader extends React.Component {
  render() {
    let username = this.props.username
    let url = this.props.avatar
    return(
      <div className='entry-header'>
        <EntryHeaderAvatar url={url} />
        <EntryHeaderUsername username={username} />
      </div>
    )
  }
}
