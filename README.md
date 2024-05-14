# README

This project uses Ruby on Rails, with the following dependencies / gems:
- Ruby (3.2.1)
- Rails (7.1.3.2)
- Postgres
- Tailwind + Foreman

For postgres, set the username and password in `config/database.yml` accordingly.

After installing the dependencies, execute the following commands to run the project:
```
rails db:create
rails db:migrate
./bin/dev
```

