import React from "react"
import headshot from 'images/headshot.jpeg'

const AboutTheDeveloper = (props) => {
  return(
    <div className="grid-container">
      <div className="grid-x grid-margin-x">
        <div className="cell large-12 small-text-center">
          <h1>Katie Foley</h1>
        </div>
        <div className="cell large-4 headshot">
          <img src={headshot} alt="Portraint of the developer, Katie Foley"/>
        </div>
        <div className="cell large-8">
          <h5 className="about-me-text">Hi I'm Katie - welcome to the Voyager community! I created this app to help 
        fellow travel-lovers have more fun and less stress on their journeys around the world. My first
        trip overseas was back in 2013, when I visited France, Switzerland, and Italy. I fell in love
        with communicating new languages, trying incredible food, coffee, and wine, and
        learning about cultures different from my own. Since then, I've visited over another 27 countries
        and plan to visit many more. I hope you enjoy using the app and that it helps you to curate
        enjoyable, eye-opening travels!</h5>
          <h2 className="cell">Links</h2>
          <h5 className="cell about-me-links">
            <a href="https://www.linkedin.com/in/kathleencfoley/">
              LinkedIn
            </a>
          </h5>
          <h5 className="cell about-me-links">
            <a href="https://github.com/katief906">
              Github
            </a>
          </h5>
        </div>
    </div>
  </div>
  )
}

export default AboutTheDeveloper