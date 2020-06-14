# Flutter with the docker, emulator android and VsCode

### 1. Requirements Installation
* Install docker
* Install docker-compose
* Install make

### 2.  Steps to run this project
#### 2.1. Build docker
* at the host terminal: `make build`
    * **note**: avoid building repeatedly, especially if you have already created the project and executed    

#### 2.2. Run the container docker
###### 2.2.1. Open with user `root` 
The `/dev/kvm` permission perform the steps *optional*
* at the host terminal: `make permission`
    * **note**: the container terminal will open, in mode root  
* in container terminal: `chown developer:developer /dev/kvm`
* in container terminal: `exit`
                                   
###### 2.2.2. Open with user `developer` 
* at the host terminal: `make run`
    * **note**: the container terminal will open, in development mode. To close the terminal, run `exit`

#### 2.3. Working with application
###### 2.3.1. Create your app flutter *optional*
**note**: Use the container with user **developer**
* at the container terminal, access project folder: `cd project`
* at the container terminal, run: `flutter create yournameapp`
    * **note**: it is necessary to create your application in the`project` folder

###### 2.3.2. Using with existing project *optional*
* copy your project to `workdir` folder 
     
#### 2.4. Testing application with `emulator` or your `device`       
###### 2.4.1. Create emulators execute the steps *optional*
**note**: Use the container with user **developer**
* at the container terminal, to create an emulator: `flutter emulators --create`
* at the container terminal, to list emulators: `flutter emulators`
* at the container terminal, to start emulator: `flutter emulators --launch <emulator id>`
    * **note**: if the emulator does not open, run the permission again
* at the container terminal, to check with doctor: `flutter doctor`

###### 2.4.2. Using `adb` to connect  an `emulator` or `cable usb`
**note**: Use the container with user **developer**  
* at the host terminal, install `adb`: `sudo apt-get update && sudo apt-get install adb`
* at the host terminal, list devices with the `adb`: `adb devices`
    * **note**: open the `emulator` or connect your` smartphone` with the usb cable, check the list of devices
* at the container terminal, list devices with the `adb`: `adb devices`
    * **note**: check the list of devices
* at the container terminal, to check with doctor: `flutter doctor`
    * **note**: check the `emulator` or `smartphone` and **confirm access to the permission**
    
###### 2.4.3. Using your smartphone with `cable usb` *optional*
**note**: Maybe this might not work without `adb`
* configure your smartphone, development permission:
    * **note**: connect your smartphone to the USB cable on your computer
* at the container terminal, to check devices usb: `lsusb`
* at the container terminal, to check with doctor: `flutter doctor`

###### 2.4.4. Launch application with an `emulator` or `cable usb`
**note**: Use the container with user **developer**   
* at the container terminal, access project folder: `cd project/yournameapp`
* at the container terminal, run: `flutter run`
    * **note**: using hot reload, press **r** or **R** on the terminal
        
        
#### 2.5. Open VsCode, *optional*
**note**: Use the container with user **developer**   
* at the container terminal: `code`
* open your application folder in `VsCode`