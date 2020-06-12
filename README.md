## Flutter with docker

#### 1. Requirements Installation

* Install docker
* Install docker-compose
* Install make


#### 2.  Steps to run this project


* Build docker execute: 

      make build
 
      
* Build docker cli execute: 

      make cli-build
      
     
* Create app execute: 
        
      make create-app NAME_APP=your name app
      
     * **example**:
      
      make create-app NAME_APP=hello_world
      
    * **note**: the command is required your user root password
  
    
 * Access file `docker-compose.yml` in volumes set at line: 
         
       volumes:
         - ./app/your path app:/application
       
      * **example**:
       
       volumes:
         - ./app/hello_world:/application

  
* Execute commands flutter in docker: 
        
      make flutter cmd=your command flutter
      
     * **example**:
      
      make flutter cmd=doctor

     * **note**: you need to check your smartphone's USB configuration, leaving in development mode         

                        
* Start project execute: 

      make start
      
      
* Generator apk project execute: 

      make apk