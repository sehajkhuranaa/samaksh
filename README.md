# samaksh APP


### The Goal

Deliver MVP with the following features:

- Login/Register
- Create Borrow Requests
- Have lender approve or deny the request
- Track that transaction
- Ability for the lender to mark a transaction as "paid"
- Ability for the lender to rate the borrower
- Currency conversion

### Screenshots
![Screenshot_20240424_014246](https://github.com/g4ze/samaksh/assets/102874321/c1234079-3fd7-4b53-b6d5-4ffa9175a336)


## Tech

### Built With

- Frontend
  - React.js with CRA TypeScript templated
- Backend
  - Node.js
  - Express
  - Jest
- DB
  - Postgres
- Tech
  - Discord
  - Slack
  - VS Code live-share extension
  - git/Github
- Management
  - Agile/SCRUM
  - Github Projects

### Running

#### Fork/Clone

- Fork/Clone project
- On the root, run `npm install` to install backend dependencies
- `cd client` and run `npm install` to install client dependencies
- Create .env file on the root and add: `TOKEN_SECRET=chooseStringWithoutQuotes`

#### DB Set up

> do once on local machine - from home directory

- (Mac) brew install postgresql
- brew services start postgresql
- psql postgres
- CREATE ROLE postgres WITH LOGIN PASSWORD 'postgres1';
- ALTER ROLE postgres CREATEDB;
- \q
- psql postgres -U postgres

> do every time re-setting database - from project directory

- cd server/database
- sh create.sh

#### Run development

- At the root, run `npm run dev` to start the API
- On a second terminal, `cd client` and `npm start`
