## OWASP plugin
The patch is created for the H5 version from [L2J_Mobius](https://bitbucket.org/MobiusDev/l2j_mobius/src/master/) . If you want to apply it in another l2 version then you should edit it.
The build.xml is modified. What is change:
- The script entry point change from "cleanup" to "build"
- The build directory will be created inside project
- Added zip64Mode to build.xml
- Added new target to check for vulnerabilities on dependencies

---
### Requirements
Tutorial is based on Windows OS and is mainly for users who like to work from command line (like me), of course can be used it on any other OS and with other tools.
- Git Bash

---

### 1. Download Dependencies
- Plugin webpage: [Dependency-Check](https://jeremylong.github.io/DependencyCheck/dependency-check-ant/index.html)
- [Direct download](https://github.com/jeremylong/DependencyCheck/releases/download/v7.0.0/dependency-check-ant-7.0.0-release.zip)

---

### 2. Setup
- apply patch: `git am < 0001-owasp.patch`
- open build.xml and update the "value" on line 35: ```<property name="dependency-check.home" value="full/path/to/downloaded/dependencies/dependency-check-ant"/>```

---

### 3. How to use
- To build the project: `ant build`
- to check the dependencies for vulnerabilities: `ant owasp`

---

Copyright ©2012–2022 [OWASP](https://owasp.org/). All rights reserved.
