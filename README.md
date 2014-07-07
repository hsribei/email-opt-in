# email-opt-in

Simple hack to allow email opt-in with Customer.io through a form POST.

## Deploy to heroku

1. Check out the repo and cd into it
1. `heroku create <my-app-name>`
1. `heroku config:set CIO_SITE_ID=your_site_id CIO_SECRET_API_KEY=your_api_key`
1. `git push heroku master`

## Add form to your website

    <form id="cio_form" action="https://<my-app-name>.herokuapp.com/" method="post">
      <label>Nome</label><input name="name" type="text"/><br/>
      <label>E-mail</label><input name="email" type="text"/><br/>
      <button class="btn" type="submit" formmethod="post" formaction="https://<my-app-name>.herokuapp.com/">Sign up</button>
    </form>
