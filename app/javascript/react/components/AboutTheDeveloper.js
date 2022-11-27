import React from "react"
import headshot from 'images/headshot.jpeg'

const AboutTheDeveloper = (props) => {
  return(
    <div className="grid-container">
      <div className="grid-x">
        <div className="grid-container cell medium-6 large-4">
          <h1 className="cell small-text-center">Katie Foley</h1>
          <img src={headshot} alt="Portraint of the developer, Katie Foley" className="headshot"/>
          <button className="button about-me-button">
            <a href="https://www.linkedin.com/in/kathleencfoley/" target="_blank" className="about-me-link">
              <h5>Katie's LinkedIn</h5>
            </a>
          </button>
          <button className="button about-me-button medium 8">
            <a href="https://github.com/katief906" target="_blank" className="about-me-link">
              <h5>Katie's Github</h5>
            </a>
          </button>
        </div>
        <div className="grid-container cell medium-6 large-8 second-column">
          <h1 className="holder">Holder</h1>
          <h4 className="about-me-text">
            Hi I'm Katie - welcome to the Voyager community! 
          </h4>
          <h4 className="about-me-text">
            My first trip overseas was back in 2013, when I visited France, Switzerland, 
            and Italy. I fell in love with communicating new languages, trying incredible 
            food, coffee, and wine, and learning about cultures different from my own.
          </h4>
          <h4>
          Since then, I've visited another 27 countries and have become a bit of an expert 
          in planning out how to maximize my time, with several back-up plans should weather 
          or luck turn against me. But that kind of planning doesn't come easily to everyone.
          travelers. So, I created Voyager with the goal of helping fellow travel-lovers 
          have more fun and less stress on their journeys around the world.
          </h4>
          <h4 className="about-me-text">
            I hope you enjoy using the app to curate enjoyable, eye-opening travels!
          </h4>
        </div>
      </div>
    </div>
  )
}

export default AboutTheDeveloper