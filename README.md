Scripts to quickly start and stop the moodle image by bitnami. 

You probably need to remove the sudo if you are using a Mac and adapt the script for windows.


1. install docker
2. use ./run.sh, wait a bit (wait till `docker logs -f moodle` confirms that it's okay.) 
3. connect to http://localhost:8880
4. sign in with istic/istic 
5. destroy everything you can
6. run clean