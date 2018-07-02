# Udacity Introduction to Computer Vision 

## Course Code using MatLab/Octave.

<p align="center"> <img src="/misc/topics.png"> </p>

### Installing Octave on Ubuntu

All code was tested on Ubuntu 16.04 LTS with Octave 4.2.2. Octave installation steps are as following:

```bash
$ sudo add-apt-repository ppa:octave/stable
$ sudo apt-get update
$ sudo apt-get install octave
```
also install the following required lib:

```bash
$ sudo apt-get install liboctave-dev
```

then install required packages from within octave

```matlab
>> pkg -forge install signal control general image
>> exit
```

to check installed packages:

```matlab
>> pkg list
```
to load package:

```matlab
>> pkg load image
```

Now you can try the many examples included in this repository.
