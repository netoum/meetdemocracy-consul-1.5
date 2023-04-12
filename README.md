<!--
  Title: Meet Democracy Fork on Consul 1.5
  Description: A fork on the latest stable Consul Project version 1.5
  Keywords: democracy, citizen participation, eparticipation, debates, proposals, voting, consultations, crowdlaw, participatory budgeting
-->


**NOTE** This is the opensource code repository of the Meet Democracy **fork** of Consul project version 1.5 .
The Consul Project has been origially developed for the Madrid City government eParticipation website.
[See the original Consul Project Github Repository](https://github.com/consul/consul)
A special thanks go the Consul Project Team who did and still doing amzing job with continious updates and support

![Meet Democracy logo](https://meetdemocracy.com/images/LogoMeetDemocracy.png)

# Meet Democracy
[https://meetdemocracy.com](https://meetdemocracy.com)

Meet democracy platform allows the participants of your community to debate and vote on legislation, budget and more. Our goal is to make community development easy. We intend to democratize community participation by making it accessible to all. We recognize the importance of having access to a democratic and trustworthy platform. Give your community citizens the freedom to express themselves.


## What is new ?

- Add a cookie consent form and a link to privacy page
Using Gem 'cookies_eu'
You can customize the content, link, html and css
Translation ready in dozens of languages
[See Gem doc](https://github.com/infinum/cookies_eu)


- Debates vote count changes
Changing the way debates votes are showed to the users. 
Show total votes instead of vote score

- Gem 'rails-timeago', '~> 2.0' ( coming soon )
Format the date in a pretty way ( 1 days ago, 1 month ago)
Translation ready in dozens of languages

## Configuration for development and test environments

**NOTE**: For more detailed instructions check the original Consul project [docs](https://docs.consulproject.org)

Prerequisites: install git, Ruby 2.7.6, CMake, pkg-config, shared-mime-info, Node.js and PostgreSQL (>=9.5).

```bash
git clone https://github.com/netoum/meetdemocracy-consul-1.5.git
cd meetdemocracy-consul-1.5
bundle install
cp config/database.yml.example config/database.yml
cp config/secrets.yml.example config/secrets.yml
bin/rake db:create
bin/rake db:migrate
bin/rake db:dev_seed
RAILS_ENV=test rake db:setup
```

Run the app locally:

```bash
bin/rails s
```


You can use the default admin user from the seeds file:

 **user:** admin
 **pass:** meetdemocracy

But for some actions like voting, you will need a verified user, the seeds file also includes one:

 **user:** verified
 **pass:** meetdemocracy

## License

Code published under AFFERO GPL v3 (see [LICENSE-AGPLv3.txt](LICENSE-AGPLv3.txt))

