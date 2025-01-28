# martes docker labs

in this setup 
- the angular app will be served by nginx and so will the backend server but it is still its own image. 
- The "dist" files from the angular build is now included in the martes_nginx image.
- nginx is setup to use "sticky session" for the backend (http://localhost/api/) 
- nginx uses port 80 so you will reach the application here: http://localhost/ and the backend here http://localhost/api/

# todos
- the backend image for prod still exposes port 8000 but that is no longer necessary and can be removed
- the angular code should now use http://localhost/api/ instead of http://localhost:8000/ when accessing the backend


