<!-- ReadMe -->
<a id="readme-top"></a>

<!-- Opening -->
<br />
<div align="center">
  <!-- <a href="https://github.com/do-good-2211/do_good_api">
    <img src=".github/do_good.jpg" alt="Logo" width="150" height="150">
  </a> -->

<h3 align="center">A.L.P.s</h3>
  <h1 align="center">Advanced Language Practices</h1>
    <p align="center">
      Improve your language skills with immediate feedback & inspired regular practice!
      <hr>
      We've "climbed the mountain" of learning another language but to keep our skills fresh we need to regularly practice them! Language output (speaking & writing) is key yet writing everyday can get dull and you might never know if it's completely correct or not. With A.L.P.s, every writing challenge comes with a theme image for inspiration, grammar points and verbs to practice in your target language, AND immediate feedback with the help of AI!
    </p>
</div>
<hr>
<br>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#schema">Schema</a></li>
        <li><a href="#testing">Testing</a></li>
      </ul>
    </li>
    <li><a href="#endpoints">Endpoints</a></li>
    <li><a href="#apis">APIs Used</a></li>
    <li><a href="#technologies">Other Technologies Used</a></li>
    <li><a href="#contact">Contributors</a></li>
    <li><a href="#refactor">Future Iterations</a></li>
  </ol>
</details>
<br>

<!-- ABOUT THE PROJECT -->
## About The Project

   ☀️ [Production Website] (add link here)
   <br>
   ☀️ [Backend Service](https://git.heroku.com/calm-thicket-75558.git)
   <br>
   ☀️ [Front End Repository] (add link here)
   <br>
   <!-- * [Video Presentation]() -->


  **A.L.P.s** was created by a cross-functional development team of students from the Turing School of Software and Design as their [capstone project](https://mod4.turing.edu/projects/capstone/).

  The mission of**A.L.P.s** is to provide users with writing promts that ignite their imagination and immediate feedback on their language output.

  <!--Users simply click the "Find a Random Act of Kindness" button and are presented with 3 random acts to choose from. Once chosen, they schedule the "good deed" and it gets added to their dashboard. Users are able to invite others to join in on the fun as well as add it to their calendars because, let's be real, life can get hectic.

  For visitors who aren't ready to jump into completing an act, they can browse our library of kind act photos for the feel-goods. -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Built With -->
### Phase 1: Built With

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) 
![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white) 
<img src=".github/rspec_badge.png" alt="Rspec Badge" height="27">
![Postgresql](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Heroku](https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white)
<!-- ![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white) -->

### Phase 2: Built With
![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) 
![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white) 
<img src=".github/rspec_badge.png" alt="Rspec Badge" height="27">
![AmazonAWS](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Postgresql](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
<!-- ![Python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue)
![Django](https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=green)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white)
![SendGrid](https://img.shields.io/badge/Twilio-F22F46?style=for-the-badge&logo=Twilio&logoColor=white)
<img src=".github/rspec_badge.png" alt="Rspec Badge" height="27"> -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

If you'd like to demo this API on your local machine:
1. Ensure you have the prerequisites
2. Sign up for external API Keys
2. Clone this repo: `git clone git@github.com:A-L-P-s/ALPs_api.git`
3. Navigate to the root folder: `cd ALPs_api`
4. Run: `bundle install`
5. Run: `rails db:{create,migrate,seed}`
6. Run: `bundle exec figaro install`
7. In the `app/config/application.yml` file add you API keys:
  - `UNSPLASH_API_KEY: add_api_key_here`
  - `OPENAI_API_KEY: add_api_key_here`
8. Inspect the `/db/schema.rb` and compare to the 'Schema' section below to ensure migration has been done successfully
9. Run: `rails s`
10. Visit http://localhost:3000/

<!-- Prerequisites -->
### Prerequisites

- Ruby Version 3.1.1
- Rails Version 7.0.4.x
- Bundler Version 2.4.9

<!-- External API keys -->
### External APIs

- Sign up for your individual external API keys:
- [Unsplash](https://unsplash.com/documentation#creating-a-developer-account)
    - Follow instructions provided.
- [OpenAI](https://platform.openai.com/overview)
    - Once you have signed up, click on your profile at the top left and selecting `View API keys`.
    - Then click `Create new secret key`.

<!-- Schema -->
### Schema

<img src=".github/schema_diagram.png" alt="Schema" width="100%">

<!-- Testing -->
### Testing
To test the entire spec suite, run `bundle exec rspec`.
*All tests should be passing.*

Happy path, sad path, and edge testing were considered and tested. When a request cannot be completed, an error object is returned.

<details>
  <summary>Error Object</summary>
    <pre>
    <code>
{
  "error": {
      "status": "404"
      "title": "Invalid Request",
      "detail": "Couldn't find User with 'id'=<id>"
     }
}
    </code>
  </pre>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Endpoints -->
## Endpoints

<details>
  <summary><code>GET "/api/v1/users"</code></summary>
  Response:
  <pre>
    <code>
{
  "data": [{
    "id": "55",
    "type": “user",
    "attributes": {
        "name": "Deniz",
        "preferred_lang": "Turkish",
        "challenges": null (or [])
    }},
    {
    "id": "1",
    "type": “user",
    "attributes": {
        "name": "Alexis",
        "preferred_lang": "Spanish",
        "challenges": null (or [])
      }
  }]
}
    </code>
  </pre>
</details>

<details>
  <summary><code>GET "/api/v1/users/:id"</code></summary>
  Response:
  <pre>
    <code>
{
  "data": {
    "id": “55”,
    "type": “user",
    "attributes": {
        "name": "Deniz",
        "preferred_lang": "Turkish",
        "challenges": [
            {
              "challenge_id": "1", 
              "language": "Turkish", 
              "verb": "(i) gitmek",
              "eng_verb": "to go", 
              "image_url": "/random/unplash/image.url",
              "image_alt_text": "Plane flying over the Bosphorous", 
              "created_at": "05-30-2023"
            }, 
            { ...etc...}
        ]
     }  
   }
}
    </code>
  </pre>
</details>

<details>
  <summary><code>GET "/api/v1/users/:id/challenges/prompt"</code></summary>
  Response:
  <pre>
    <code>
{
  "data": {
    "id": null,
    "type": “challenge",
    "attributes": {
        "language": "Turkish", 
        "verb": "(i) gitmek"
        "eng_verb": "to go" 
        "image_url": "/random/unplash/image.url"
        "image_alt_text": "Plane flying over the Bosphorous" 
        "created_at": null
        "grammar_points": [
           {
            "grammar_point": "geçmiş zaman"
            "eng_grammar_point": "past simple"
           },
           { ...etc...}
        ]
        "sentences": null
     }  
   }
}
    </code>
  </pre>
</details>

<details>
  <summary><code>POST "/api/v1/users/:id/challenges"</code></summary>
  Request Body:
  <pre>
    <code>
{
 "language": "Turkish",
 "verb": "(i) gitmek",
 "eng_verb": "to go",
 "image_url": "/random/unplash/image.url",
 "image_alt_text": "Plane flying over the Bosphorous", 
 "sentences": [
   {
    "grammar_point": "geçmiş zaman",
    "eng_grammar_point": "past tense",
    "user_sent": "Dün havalimana gittik ama arkadaşım uçak gelmedi."
    },
    {
      "grammar_point": "geniş zaman",
      "eng_grammar_point": "future tense",
      "user_sent": "Dün havalimana gittik ama arkadaşım uçak gelmeyecek."
    }
  ]
}
    </code>
  </pre>

  Response:
  <pre>
    <code>
  {
  "data": {
    "id": “1”,
    "type": “challenge",
    "attributes": {
        "language": "Turkish", 
        "verb": "(i) gitmek",
        "eng_verb": "to go", 
        "image_url": "/random/unplash/image.url",
        "image_alt_text": "Plane flying over the Bosphorous", 
        "created_at": "05-30-2023",
        "grammar_points": null,
        "sentences": [
          {
           "sent_id": "1",
           "grammar_point": "geçmiş zaman",
           "eng_grammar_point": "past tense",
           "user_sent": "Dün havalimana gittik ama arkadaşım uçak gelmedi.",
           "ai_sent": "Dün havalimanına gittik, ancak arkadaşımızın uçağı gelmedi."
           }, 
           { ...etc...}     
         ]
     }  
   }
}
    </code>
  </pre>
</details>

<details>
  <summary><code>GET "/api/v1/users/:id/challenges/:challenge_id"</code></summary>
  Response:
  <pre>
    <code>
{
  "data": {
    "id": “1”,
    "type": “challenge",
    "attributes": {
        "language": "Turkish", 
        "verb": "(i) gitmek",
        "eng_verb": "to go", 
        "image_url": "/random/unplash/image.url",
        "image_alt_text": "Plane flying over the Bosphorous", 
        "created_at": "05-30-2023",
        "grammar_points": null,
        "sentences": [
          {
           "sent_id": "1",
           "grammar_point": "geçmiş zaman",
           "eng_grammar_point": "past tense",
           "user_sent": "Dün havalimana gittik ama arkadaşım uçak gelmedi.",
           "ai_sent": "Dün havalimanına gittik, ancak arkadaşımızın uçağı gelmedi."
           }, 
           { ...etc...}     
         ]
     }  
   }
}
    </code>
  </pre>
</details>

<details>
  <summary><code>DELETE "/api/v1/users/:id/challenges/:challenge_id"</code></summary>
  Response
  <pre>
    <code>
Status: 204
    </code>
  </pre>
</details><br>

View these endpoints in [Postman] (add link here)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- APIs Used -->
<h2 id="apis">APIs Used</h2>

[Unsplash API](https://unsplash.com/developers) was consumed to generate the random theme image for every writing challenge.

[OpenAI API](https://openai.com/product) was used to correct sentences and provide immediate feedback on user's langauge output.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Other Technologies Used 
<h2 id="technologies">Other Technologies Used</h2>

[Google Cloud Platform](https://cloud.google.com/) was used to allow users to sign in with their Google account.

<details>
  <summary><img src="https://www.loginradius.com/blog/static/a9dad0fc4bf1af95243aa5e2d017bc22/a8669/google_cover.jpg" style="width:43px; height:33px;" > <strong>Google OAuth</strong></summary><br>
  <p>Signing in to the Do Good app is made simple by allowing users to sign in with Google. </p>
  
  More information on the gem used for this(`omniauth-google-oauth2`) can be found [here](https://github.com/zquestz/omniauth-google-oauth2)
</details>
<br>

[Amazon Web Services](https://aws.amazon.com/) was used to allow users to upload photos for their completed good deeds.

<details>
  <summary><img src= "https://logos-world.net/wp-content/uploads/2021/08/Amazon-Web-Services-AWS-Logo.png" style="width:60px; height:40px;"><strong>Amazon S3 Cloud Object Storage</strong></summary><br>
  <p>By including amazon's web serfice for storage, we can allow users to upload their pictures which are then saved as objects in a "bucket".  </p>

  More information on the gem used for this(`aws-sdk-s3`) can be found [here](https://github.com/aws/aws-sdk-ruby)
</details>
<br>

[Twilio SendGrid](https://sendgrid.com/) was used to send an email to the user after they create a good deed

<details>
  <summary><img src="https://sendgrid.com/brand/sg-twilio/SG_Twilio_Lockup_RGB-WHT-Textx2.png" height="23"><strong> Email Service</strong></summary><br>
    <p>The host and attendees will receive an email upon the completion of a good deed.</p>

</details><br>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
-->

<!-- Future Iterations 

<h2 id="refactor">Future Iterations</h2>
<details>
  <summary>Rafactor/Changes</summary>
  <dl>
    <dt>Pull other APIs</dt>
      <dd>- Locally available volunteer opportunities</dd>
    <dt>Refactor Serializers</dt>
      <dd>- Specifcally the good deeds serializers</dd>
  </dl>
</details>



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<h2 id="contact">Contributors</h2>


| [<img alt="Huy Phan" width="75" src=".github/Huy.png"/>](https://www.linkedin.com/in/huy-phan-2471b3261/) | [<img alt="Jasmine Hamou" width="75" src=".github/Jasmine.jpg"/>](https://www.linkedin.com/in/jasmine-hamou/) | [<img alt="Kara Jones-Hofmann" width="75" src=".github/Kara.jpeg"/>](https://www.linkedin.com/in/81012911-91208/) | [<img alt="Matt Enyeart" width="75" src=".github/Matt.jpeg"/>](https://www.linkedin.com/in/matt-enyeart/) | [<img alt="Melony Erin Franchini" width="75" src=".github/Mel.jpeg"/>](https://www.linkedin.com/in/melony-erin-franchini/) | [<img alt="Mike Dao" width="75" src=".github/Mike.jpeg"/>](https://www.linkedin.com/in/michaeldao/) |
| ------------------ | ------------ | -------------- | ----------- | -------------- | ----------- |
| Huy Phan | Jasmine Hamou | Kara Jones-Hofmann | Matt Enyeart | Melony Erin Franchini | Mike Dao |
| Collaborator | Collaborator | Collaborator | Collaborator | Collaborator | Project Manager |
| [GitHub](https://github.com/HuyPhan2025) | [GitHub](https://github.com/hamouj) | [GitHub](https://github.com/KaraJoHo) | [GitHub](https://github.com/menyeart) | [GitHub](https://github.com/MelTravelz) | [GitHub](https://github.com/mikedao) |
| [LinkedIn](https://www.linkedin.com/in/huy-phan-2471b3261/) |  [LinkedIn](https://www.linkedin.com/in/jasmine-hamou/) | [LinkedIn](https://www.linkedin.com/in/81012911-91208/) | [LinkedIn](https://www.linkedin.com/in/matt-enyeart/) | [LinkedIn](https://www.linkedin.com/in/melony-erin-franchini/) | [LinkedIn](https://www.linkedin.com/in/michaeldao/) |

<p align="right">(<a href="#readme-top">back to top</a>)</p>
-->