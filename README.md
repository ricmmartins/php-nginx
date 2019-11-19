# simple-php-app-container
This is my conteinerized version of https://github.com/ricmmartins/simple-php-app

## Usage
1. Clone this repo
2. Go to the app folder ``` cd simple-php-app-container```
2. Build ``` sudo docker build . -t <imagename>```
3. Run ```sudo docker run -d -p 8080:80 <imagename>```

## Publish to Docker HUB
1. ```sudo docker login```
2. ```sudo docker tag simple-php-app rmartins/simple-php-app ```
3. ```sudo docker push rmartins/single-php-app ```


