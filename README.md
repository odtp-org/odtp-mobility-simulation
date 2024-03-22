# ODTP Mobsim Component
ODTP component for running Mobsim. 

## Prepare dataset


## How to run this component in docker. 

1. Prepare manually a folder called `odtp-input` containing the following datafolder of our selected scenario:

- data

2. Create your `.env` file with this structure.

3. Build the dockerfile 

```
docker build -t Mobsim .
```

4. Run the following command. Mount the correct volumes for input/output folders. 

```
docker run -it --rm \
-v {PATH_TO_YOUR_INPUT_VOLUME}:/odtp/odtp-input \
-v {PATH_TO_YOUR_OUTPUT_VOLUME}:/odtp/odtp-output \
--env-file .env odtp-Mobsim
```

## Example 

## Usage with ODTP

To connect this docker with an existing implementation of ODTP the following variables should be added to the env file. 

```
ODTP_MONGO_SERVER="mongodb://USER:PASSWORD@.....
ODTP_S3_SERVER=http://....
ODTP_BUCKET_NAME=...
ODTP_ACCESS_KEY=....
ODTP_SECRET_KEY=...
```


## Changelog


## Development. 

Developed by SDSC/CSFM.