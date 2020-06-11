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
      
* Access file `docker-compose.yml` in command set **your name app**:

        command: bash -c "cd your name app && flutter run"
        
     * **example**:
        
        command: bash -c "cd hello_world && flutter run"
     
     * **note**: the command is required your user root password
        
* Create app execute: 
        
      make create-app NAME_APP=your name app
      
     * **example**:
      
      make create-app NAME_APP=hello_world
       
* Start project execute: 

      make start