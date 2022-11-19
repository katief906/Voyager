import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import ItinerariesIndexPage from './ItinerariesIndexPage'
import ItineraryShowPage from './ItineraryShowPage'
import CountryShowPage from './CountryShowPage'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={ItinerariesIndexPage} />
        <Route exact path="/itineraries" component={ItinerariesIndexPage} />
        <Route exact path="/itineraries/:id" component={ItineraryShowPage} />
        <Route exact path="/countries/:id" component={CountryShowPage} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
