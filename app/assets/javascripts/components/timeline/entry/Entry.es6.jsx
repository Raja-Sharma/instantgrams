class Entry extends React.Component {
  render() {
    picture = this.props.picture
    return(
      <div className='entry'>
        <EntryHeader username={picture.poster}/>
        <EntryPicture url={picture.url} />
        <EntryFooter picture={picture}/>
      </div>
    )
  }
}
