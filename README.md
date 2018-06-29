# Computer Vision using Ocatve

Learn CV using Matlab/Octave

### Installing Octave on Ubuntu

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
$ sudo octave
>> pkg -forge -global install signal control general image
```

to check installed packages:

```matlab
>> pkg list
```
to load package:

```matlab
>> pkg load image
```
