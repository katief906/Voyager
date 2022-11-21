import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import ItinerariesIndexPage from './ItinerariesIndexPage'
import ItineraryShowPage from './ItineraryShowPage'
import CountryShowPage from './CountryShowPage'
import CityShowPage from './CityShowPage'
import NewItineraryForm from './NewItineraryForm'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={ItinerariesIndexPage} />
        <Route exact path="/itineraries" component={ItinerariesIndexPage} />
        <Route exact path="/itineraries/new" component={NewItineraryForm} />
        <Route exact path="/itineraries/:id" component={ItineraryShowPage} />
        <Route exact path="/countries/:id" component={CountryShowPage} />
        <Route exact path="/cities/:id" component={CityShowPage} />
        <Route exact path="/cities/:id/itineraries/new" component={NewItineraryForm} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
