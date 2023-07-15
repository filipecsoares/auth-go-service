# Authentication Manager in Go

This is a personal project to study and implement user authentication functionality using the Go programming language. It aims to provide a basic framework for managing user authentication and session management in a web application.

## Features

- Registration: Allows to create an credential account by providing their login and password;
- Login: Authenticates users by verifying their login and password combination and give them a session token;
- Password hashing: Securely stores passwords by hashing them using a strong cryptographic algorithm;
- Session management: Manages user sessions by generating and storing session tokens in a secure manner;
- Middleware: Provides middleware functions to handle authentication and authorization in web routes;

## Installation

- Make sure you have Go installed and set up on your machine. You can download and install Go from the official website;
- Make sure you have Postgres installed and set up on your machine. You can download and install Postgres from the official website;
- Clone the project repository:

``` bash
git clone https://github.com/filipecsoares/auth-go-service.git
```

- Change to the project directory:

``` bash
cd auth-go-service
```

- Install the project dependencies:

``` bash
go mod download
```

## Configuration

Before running the application, you need to configure the following settings:

- Database configuration: Open the config.go file and add the database information to meet your application's database requirements or add the environment variables;
- Optionally, you can run the application with docker-compose:

``` bash
docker-compose up
```

## Usage

To run the application, execute the following command in the project directory:

``` bash
go run main.go
```

By default, the application will start a web server on <http://localhost:8089>. You can access the application using a web browser or integrate it with other systems.

## API Endpoints

The following API endpoints are available:

- POST /api/v1/credentials: Registers a new credential account;
- POST /api/v1/login: Logs in an existing user;
- POST /api/v1/logout: Logs out the currently authenticated user
- GET /api/v1/credentials: Retrieves the credentials;
- DELETE /api/v1/credentials/:id: Deletes a credential account;

## Contributing

- This project is a personal study project, and contributions are not currently accepted. However, you are free to fork the repository and modify it according to your needs.

## References

- <https://bitsbydenis.medium.com/go-auth-microservice-20c5da502329>

## Observations

- *This project is intended for educational purposes only. It is not meant to be used in production environments without proper security review and enhancements*
