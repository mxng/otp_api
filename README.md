# OTP api

## What it does
* At http://localhost:3000/
  * takes in a JSON with "phone_number" as the key and 8 digits as the value
* At http://localhost:3000/verification
  * takes in a JSON with "phone_number" as the key and 8 digits as the value
  * takes in "otp" as the key and 6 digits as the value
  * checks against database if the otp is valid and never used, which results in either a "succesful" or "failure" message in JSON

## Technology

* Ruby on Rails 6.1.4

## Configuration

1. Run the server
```
rails s
```
2. Use api clients like [Insomnia](https://insomnia.rest/)
3. Do a post request to `http://localhost:3000/`
* Input JSON with the format
  ```
  {
	  "phone_number": 12341234
  }
  ```
* You should expect this output:
  ```
  {
    "phone_number": 88891987,
    "status": "successful"
  }
  ```
4. Do a post request to `http://localhost:3000/verification`
* Input JSON with the format
  ```
  {
	  "otp": 707514,
	  "phone_number": 88891987
  }
  ```
* You should expect this output
  ```
  {
    "response": "success"
  }
  ```
  * If the otp is already checked against the database or it does not match the otp in it, it should return "failure" instead of "success".
