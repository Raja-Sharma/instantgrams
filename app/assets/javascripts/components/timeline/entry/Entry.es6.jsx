class Entry extends React.Component {
  render() {
    picture = this.props.picture
    return(
      <div className='entry'>
        <EntryHeader avatar={picture.poster_avatar_url} username={picture.poster}/>
        <EntryPicture picture={picture} />
        <EntryFooter picture={picture}/>
      </div>
    )
  }
}
