## Flutter with docker

#### 1. Requirements Installation

* Install docker
* Install docker-compose
* Install make


#### 2.  Steps to run this project

     
* Build docker cli execute: 

      make cli-build
      
              
* Create app execute: 
        
      make create-app name=your name app
      
     * **example**:
      
      make create-app name=hello_world
      
    * **note**: the command is required your user root password
 
  
 * Access file `docker-compose.cli.yml` in volumes change at line: 
         
       volumes:
         - ./app:/application
       
      * **example**:
       
       volumes:
         - ./app/hello_world:/application
             
* Execute commands flutter in docker: 
        
      make flutter cmd=your command flutter
      
     * **example**:
      
      make flutter cmd=doctor

     * **note**: you need to check your smartphone's USB configuration, leaving in development mode         

                        
* Run project execute: 

      make run
      
      
* Generator apk project execute: 

      make apk

      
* Generator ios project execute: 
      
      make ios