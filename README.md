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
        
    * in container terminal: `chown developer:developer /dev/kvm`
    * in container terminal: `exit`
      
                                      
* Open container docker execute: 

    * in terminal host execute: `make run`
        * **note**: the container terminal will open, in development mode. To close the terminal, run `exit`
      
          
* Create emulators execute the steps:
  
     * in container terminal execute, to create emulator: `flutter emulators --create`
     * in container terminal execute, to list emulatos: `flutter emulators`
     * in container terminal execute, to start emulator: `flutter emulators --launch <emulator id>`
        * **note**: if the emulator does not open, run the permission again



* Create your app flutter:

    * in container terminal execute: `flutter create yournameapp`
 
 
* Start app with emulator:
 
     * in container terminal execute: `cd yournameapp && flutter run`
        * **note**: using hot reload, press **r** or **R** on the terminal

     
* Open VsCode, *optional*:
 
     * in container terminal execute: `code`