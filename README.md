## Flutter with docker

#### 1. Requirements Installation

* Install docker
* Install docker-compose
* Install make


#### 2.  Steps to run this project

     
* Build docker execute: 

      make build

* Permission `/dev/kvm` execute the steps: 
    
    * in terminal host execute: `make permission`
        * **note**: the container terminal will open, in mode root
        
    * in container terminal: `chown developer /dev/kvm`
    * in container terminal: `exit`
      
            
                                    
* Run project execute: 

    * in terminal host execute: `make run`
        * **note**: the container terminal will open, in mode development
      
      
