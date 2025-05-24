# Nginx Reverse Proxy Setup

## Prerequisites

Before you begin, make sure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [OpenSSL](https://www.openssl.org/) (used to generate self-signed certificates)

## 1. Generate SSL Certificates

Run the following command to generate self-signed SSL certificates:

````bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsignes.key -out nginx-selfsigned.crt
````

Create the certs directory and move the files:

```bash
mkdir -p var/development/nginx-certs
mv nginx-selfsigned.crt var/development/nginx-certs/
mv nginx-selfsignes.key var/development/nginx-certs/
```

---

## 2. Start the Project

Build and run all services using Docker Compose:

```bash
docker-compose up --build
```

---

## 3. Access the Application

Open your browser and go to:

```
https://localhost
```

> ⚠️ You may see a security warning due to the self-signed certificate. Accept it to proceed.