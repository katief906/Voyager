import React from "react"
import greece from 'images/greece_desktop.jpg'

const LandingPage = (props) => {
  return(
    <div>
      <div class="grid landing-page-container">
        <img className="landing-page-cover-photo" src={greece} alt="Coastal landscape of Mykonos, Greece"/>
        <div>
          <h1 className="landing-page-cover-text">Explore the world</h1>
        </div>
      </div>
    </div>
  )
}
export default LandingPage