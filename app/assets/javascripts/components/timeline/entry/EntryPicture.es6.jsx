class EntryPicture extends React.Component {
  render() {
    let url = this.props.picture.url
    return(
      <div className='entry-picture'>
        <img src={url} className='entry-picture' />
      </div>
    )
  }
}
