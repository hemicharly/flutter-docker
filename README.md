## Flutter with the docker, emulator android and VsCode

#### 1. Requirements Installation

* Install docker
* Install docker-compose
* Install make


#### 2.  Steps to run this project

     
* Build docker: 

    * at the host terminal: `make build`
        * **note**: avoid building repeatedly, especially if you have already created the project and executed
      

* The `/dev/kvm` permission perform the steps: 
    
    * at the host terminal: `make permission`
        * **note**: the container terminal will open, in mode root
        
    * in container terminal: `chown developer:developer /dev/kvm`
    * in container terminal: `exit`
      
                                      
* Opening the container: 

    * at the host terminal: `make run`
        * **note**: the container terminal will open, in development mode. To close the terminal, run `exit`
      
          
* Create emulators execute the steps:
  
     * at the container terminal, to create emulator: `flutter emulators --create`
     * at the container terminal, to list emulators: `flutter emulators`
     * at the container terminal, to start emulator: `flutter emulators --launch <emulator id>`
        * **note**: if the emulator does not open, run the permission again
     * at the container terminal, to check with doctor: `flutter doctor`


* Create your app flutter:

    * at the container terminal: `flutter create yournameapp`
 
 
* Launch application with an emulator:
 
     * at the container terminal: `cd yournameapp && flutter run`
        * **note**: using hot reload, press **r** or **R** on the terminal
        
* Using with existing project:
    * clean the `workdir` folder
    * change the `volume` of the file` docker-compose.yml`
        * from:
        
                volumes:
                  - ./workdir:/home/developer
              
        * to:
        
                volumes:
                  - ./workdir/yourproject:/home/developer              


* Open VsCode, *optional*:
 
     * at the container terminal: `code`
     * open your application folder in `VsCode`