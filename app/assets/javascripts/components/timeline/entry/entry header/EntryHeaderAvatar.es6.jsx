class EntryHeaderAvatar extends React.Component {
  render() {
    return(
      <div className="footer-item avatar">
        <img src={this.props.url} className='avatar' />
      </div>
    )
  }
}
