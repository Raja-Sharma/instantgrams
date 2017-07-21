class EntryPicture extends React.Component {
  render() {
    let url = this.props.url
    return(
      <div className='entry-picture'>
        <image src={url} />
      </div>
    )
  }
}
