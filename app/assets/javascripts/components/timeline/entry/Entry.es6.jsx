class Entry extends React.Component {
  render() {
    picture = this.props.picture
    return(
      <div className='entry'>
        <EntryHeader username={picture.poster}/>
        <EntryPicture picture={picture} />
        <EntryFooter picture={picture}/>
      </div>
    )
  }
}
