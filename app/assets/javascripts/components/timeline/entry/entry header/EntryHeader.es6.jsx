class EntryHeader extends React.Component {
  render() {
    let username = this.props.username
    return(
      <div className='entry-header'>
        {username}
      </div>
    )
  }
}
