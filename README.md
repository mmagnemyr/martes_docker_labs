# martes docker labs

in this setup 
- the angular app will be served by nginx and so will the backend server but it is still its own image. 
- The "dist" files from the angular build is now included in the martes_nginx image.
- nginx is setup to use "sticky session" for the backend (http://localhost/api/) 
- nginx uses port 80 so you will reach the application here: http://localhost/ and the backend here http://localhost/api/
- build the martes-nginx image by using ./build.sh (it builds it using the dist folder in this folder /martes_docker_labs/dist so you need to copy the latest build yourself.... for now)
- the nginx config file is here => ./nginx/conf.d/default.conf
- the start the whole thing using docker compose up -d


# todos
- the backend image for prod still exposes port 8000 but that is no longer necessary and can be removed
- the angular code should now use http://localhost/api/ instead of http://localhost:8000/ when accessing the backend
- build the angular app and then copy the dist files to the nginx image in a dockerfile....


