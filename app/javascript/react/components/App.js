import React from 'react'
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import ItinerariesIndexPage from './ItinerariesIndexPage'
import ItineraryShowPage from './ItineraryShowPage'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={ItinerariesIndexPage} />
        <Route exact path="/itineraries" component={ItinerariesIndexPage} />
        <Route exact path="/itineraries/:id" component={ItineraryShowPage} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
