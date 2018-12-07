# Scraping tests with Zalenium

##### Setup and run a zalenium grid 
--> https://opensource.zalando.com/zalenium/


```
docker run --rm -ti --name zalenium -p 4444:4444 \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -v /tmp/videos:/home/seluser/videos \
      --privileged dosel/zalenium start --maxTestSessions 4 --desiredContainers 5
 
```

#### Or run a docker-compose
```docker-compose up --force-recreate```
      
  
#### Build the python script image
```docker build -t pyscrapringtestselenium .```


#### Run the container
```
# Using the docker-compose
docker run --network={name_of_the_default_network_for_compose} pyscrapringtestselenium 

# Using the docker run for selenium
docker run pyscrapringtestselenium 

```

Based in:
    * https://opensource.zalando.com/zalenium/
    * https://medium.com/the-andela-way/introduction-to-web-scraping-using-selenium-7ec377a8cf72