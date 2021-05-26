<h1 align="center">Run Angular Universal with Docker </h1>

<p align="center">
  <img src="https://camo.githubusercontent.com/599f5e0a0b57648b72e3c9098c6c1a7b94e51d70bfaea61613f8d635cae186fe/68747470733a2f2f616e67756c61722e696f2f67656e6572617465642f696d616765732f6d61726b6574696e672f636f6e636570742d69636f6e732f756e6976657273616c2e706e67" alt="angular-logo" width="120px" height="120px"/>
  <br>
  <i>Angular is a development platform for building mobile and desktop web applications
    <br> using Typescript/JavaScript and other languages.</i>
  <br>
</p>


<hr>


##Installation
```zsh
git clone https://github.com/EfrainGaray/angular-universal-landing.git
cd angular-universal-landing
docker build -t angular-universal-landingpage .
docker run --rm -it -p 80:80 angular-universal-landingpage
```
