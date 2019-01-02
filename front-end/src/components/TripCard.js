import React, { Component } from 'react'
import { Card, Image, Rating, Icon, Button, Header, Modal, Form } from 'semantic-ui-react'
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import moment from 'moment';


import '../tripContainer.css'
class TripCard extends Component {
  constructor(props) {
    super(props)
    this.state = {
      open: false,
      startDate: this.props.trip.checkin,
      endDate: this.props.trip.checkout,
      modalOpen: false,
      tripObject: null
    }
  }

  startHandleChange = (date) => {
    this.setState({
      startDate: date
    })
  }

  endHandleChange = (date) => {
    this.setState({
      endDate: date
    })
  }

  updateTripDate = () => {
    let data = {
      id: this.props.trip.property_id,
      checkin: this.state.startDate,
      checkout: this.state.endDate,
      owner_id: this.props.trip.owner_id,
      renter_id: this.props.trip.renter_id,
      property_id: this.props.trip.property_id
    }
    fetch(`http://localhost:3000/api/v1/leases/${this.props.trip.id}`, {
      method: "PATCH",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(data)
    }, this.setState({
      open: false,
      startDate: this.state.startDate,
      endDate: this.state.endDate
    }))

    this.props.trip.checkin = this.state.startDate
    this.props.trip.checkout = this.state.endDate
  }

  show = dimmer => () => this.setState({ dimmer, open: true })
 
  close = () => {
    this.setState({ 
      open: false,
      startDate: this.props.trip.checkin,
      endDate: this.props.trip.checkout
    })
  } 

  handleOpen = () => this.setState({ modalOpen: true })

  handleClose = () => this.setState({ modalOpen: false })

  deleteTrip = () => {
    this.setState({ 
      modalOpen: false,
      tripObject: null
    })
    this.props.deleteTrip(this.props.trip.id)
  }

  componentDidMount() {
    this.props.allTinyPlaces.map(tinyPlace => {
      if(tinyPlace.id === this.props.trip.property_id)
        this.setState({
          tripObject: tinyPlace
        })
    })
  }
  
  render() {
  
    const { open, dimmer } = this.state
    
    return (
      this.state.tripObject ? (<div className="trip-card">
      <Card>
        <Image src={this.state.tripObject.image} />
        <Card.Content>
          <Card.Header>{this.state.tripObject.name}</Card.Header>
          <Card.Meta>{this.state.tripObject.state}</Card.Meta>
          <Card.Meta>{this.state.tripObject.city}</Card.Meta>
          <Card.Description>Check In: {moment(this.props.trip.checkin).format("MM/DD/YYYY")}</Card.Description>
          <Card.Description>Check Out: {moment(this.props.trip.checkout).format("MM/DD/YYYY")}</Card.Description>
          <Card.Description>${this.state.tripObject.price} per week</Card.Description>
          <div className="right">
            <Icon link onClick={this.show('blurring')} name='edit' size='large' />
            
            <Modal dimmer={dimmer} open={open} onClose={this.close}>
              <Modal.Header>Update Trip</Modal.Header>
              <Modal.Content image>
                <Image wrapped size='medium' src={this.state.tripObject.image} />
                <Modal.Description className="update-form">
                <Header>{this.state.tripObject.city}, {this.state.tripObject.state}</Header>
                <Form>
                  <Form.Field>
                    <label>Select Start Date: </label>
                    <DatePicker
                      selected={ this.state.startDate}
                      onChange={ this.startHandleChange }
                      minDate={this.state.startDate}
                    />
                  </Form.Field>
                  <Form.Field>
                    <label>Select End Date: </label>
                    <DatePicker
                      selected={ this.state.endDate }
                      onChange={ this.endHandleChange }
                      minDate={this.state.endDate}
                    />
                  </Form.Field>
                </Form>
                </Modal.Description>
              </Modal.Content>
              <Modal.Actions>
                <Button color='black' onClick={this.close}>
                  Cancel
                </Button>
                <Button
                  positive
                  icon='checkmark'
                  labelPosition='right'
                  content="Update Trip"
                  onClick={this.updateTripDate}
                />
              </Modal.Actions>
            </Modal>

            <Modal
              trigger={<Icon link onClick={this.handleOpen} name='trash' size='large' />}
              open={this.state.modalOpen}
              onClose={this.handleClose}
              size='small'
            >
              <Header className="delete-header" icon='trash' content='Delete Trip ' />
              <Modal.Description>
                <p className="delete-message">Are you sure you want to delete this upcoming trip?</p>
              </Modal.Description>
              <Modal.Actions>
              <Button color='red' onClick={this.handleClose} inverted>
                  <Icon name='x' /> No
                </Button>
                <Button color='green' onClick={this.deleteTrip} inverted>
                  <Icon name='checkmark' /> Yes
                </Button>
              </Modal.Actions>
            </Modal>
            </div>
          </Card.Content>
        </Card>
    </div>) : null
    )
  }
}

export default TripCard;