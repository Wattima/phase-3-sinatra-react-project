
# Overview
This is the backend component of a movie management application built with Ruby and Sinatra. The backend provides a RESTful API for creating, reading, updating, and deleting movies, and also handles user authentication and session management. The application uses an sqlite3 database to store data.

## Setup
To run the backend component of the application, you will need to have Ruby (version 2.6 or later) and sqlite3 installed on your system. You can then follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the backend directory.
3. Install the required gems by running bundle install.
4. Create a PostgreSQL database by running rake db:create.
5. Run the database migrations by running rake db:migrate.
6. Optionally, you can populate the database with some initial data by running ruby seeds.rb.
7. Start the backend server by running ruby app.rb.
8. The backend server should now be running on http://localhost:4567.

# API Documentation
The backend provides GET, POST, PATCH and DELETE API endpoints:

[Frontend Repository](https://github.com/Wattima/movie_finder_frontend.git)

## License
This project is licensed under the MIT License. Feel free to use and modify this code for your own purposes.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
Copyright (c) 2023 **Daryl Wattima**
