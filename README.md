# Computer Vision using Ocatve

Learn CV using Matlab/Octave

### Installing Octave on Ubuntu

```bash
$ sudo add-apt-repository ppa:octave/stable
$ sudo apt-get update
$ sudo apt-get install octave
```

then install required packages from within octave

```matlab
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
