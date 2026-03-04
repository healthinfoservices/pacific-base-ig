<a id="readme-top"></a>
<div align="center">
  <a href="https://au-ig-template.healthinfoservices.site"><img src="docimg/logo extended.png" alt="Health Info Services Logo"></a>
  <h2>Pacific Base FHIR IG</h2>
  <h4>Getting Started Using or Contributing to this IG</h4>
</div>


## Overview

This is a FHIR Implementation Guide (IG) intended to use as a base for derived national Core FHIR IG's of Pacific nations.  It provides a basic structure for commonly used FHIR profiles with definitions that are relevant to many Pacific nations.   The profile definitions are intended to be inherited and modified and/or extended as required to meet more detailed national IG requirements.

The goals of this IG are:  
- Interoperability between Pacific nations: to provide a shared interoperability standard for data exchange between Pacific nations
- Simplification of IG development:  to simplify the development of national Core IG's by providing a meaningful set of foundational profile definitions that can be inherited and thus do not need to be redeveloped for each nation
- Reuse:  to provide a common data framework that will enable and simplify development of applications and deployment configurations that will work seamlessly across the region, avoiding the substantial costs of rework for each nation

This version of the IG derives from FHIR R4B (ver 4.3.0).  

## About the Project
This IG has been developed by HealthInfoServices to support Pacific nations on their Interoperability/FHIR journey.  This is free to use.  Enjoy and please feel free to credit HealthInfoServices in your work.

This IG is currently in first draft state.  If you have experience and responsibility delivering health in the Pacific, any assistance, comments or suggestions would be deeply valued as we seek to refine this further.

## Getting Started
To configure your system to compile this code into an IG, follow the steps below. 

### Prerequisite Skills
This IG is designed to make your getting started process as easy as possible...  But if you are unfamiliar with FHIR, you are strongly recommended to first familiarise yourself with the basic concepts of FHIR resources.  There are many tutorials and guides,  but don't get lost in the weeds,  the best way to learn is actually starting with a simple project.

Equally if you are not familiar with FHIR Shorthand (FSH) it would be good to follow a tutorial   My recommendations are:
- [FSH Seminar](https://fshschool.github.io/courses/fsh-seminar/)
- [Sushi Tutorial](https://fshschool.org/docs/sushi/tutorial/)


### Required Software
You will need to have the following software installed and configured on the system that you will be using for creating the IG.
1. Node.js
2. Sushi - to install Sushi and Node.js follow these [instructions](https://fshschool.org/docs/sushi/installation/)
3. Git
4. A text editor (Notepad++ or Visual Studio Code)

### Installation
To setup and deploy the IG, ensure that you have the pre-requisite software installed,  and then follow the steps below.
1. Create or go to a folder that you will use for working with the FSH code
2. Clone this repository by executing:
  ```sh
  git clone https://github.com/healthinfoservices/pacific-base-ig.git
  ```
3. Install the FHIR packages listed in the dependencies section of the sushi-config.yaml file:
  ```sh
  sushi update-dependencies
  ```
4. Download the latest version of the HL7 FHIR IG Publisher tool into the cache.
   
   (for Linux/Mac)
   ```sh
   ./_updatePublisher.sh
   ```
   (for Windows CMD)
   ```sh
   _updatePublisher
   ```
   (for Windows Powershell)
   ```sh
   ./_updatePublisher.bat
   ```
5. Run SUSHI on the FSH files in input/fsh:
  ```sh
  sushi build .
  ```
6. Build the IG
   
   (for Linux/Mac)
   ```sh
   ./_genonce.sh
   ```
   (for Windows CMD)
   ```sh
   _genonce
   ```
   (for Windows Powershell)
   ```sh
   ./_genonce.bat
   ```

### Creating your own IG content
To customise or contribute to this IG you will need to use a text editor to modify the following:

1. Change the information in the sushi-config.yaml file to set overall settings for your IG.

2. Using a text editor,  you can adapt or extend the IG by editing the .fsh files in the input/fsh folder.  You can also delete and .fsh files for profiles that you will not be using,  and/or create new fsh files for additional profiles.

3. Using a text editor,  modify the index.md.  This creates the content for the home page of your IG.

4. Make use of the aliases.fsh file.  It contains a set of aliases that you can use in your fsh files to prevent having to type in long url's.



5. After each modification to fsh or md files,  run the following command:
  (for Linux/Mac)
  ```sh
  ./_genonce.sh
  ```
  (for Windows CMD)
  ```sh
  _genonce
  (for Windows Powershell)
  ```sh
  ./_genonce.bat
  ```

### References and Acknowledgements
* [FHIR Shorthand repository for this IG](https://github.com/healthinfoservices/pacific-base-ig)
* [FHIR Shorthand FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/overview.html)
* [FHIR Shorthand training][fsh-url]
* [HealthInfoServices - Australia](https://healthinfoservices.net)
* [Daniel Foulkes][linkedin-df-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-df-url]: https://www.linkedin.com/in/daniel-foulkes/
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg
[fsh-badge]: https://fshschool.org/favicon.ico
[fsh-url]: https://fshschool.org/
[license-url]: https://pacific-base-ig.healthinfoservices.net/LICENSE.txt

