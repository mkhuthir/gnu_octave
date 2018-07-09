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

## 1_A1_introduction

<p align="center"> <img src="/misc/1_A1_2.png"> </p>

## 2_A1_images_as_functions

<p align="center"> <img src="/misc/2_A1_1.png"> </p>

<p align="center"> <img src="/misc/2_A1_2.png"> </p>

<p align="center"> <img src="/misc/2_A1_3.png"> </p>

<p align="center"> <img src="/misc/2_A1_4.png"> </p>

<p align="center"> <img src="/misc/2_A1_5.png"> </p>

## 2_A2_filtering

<p align="center"> <img src="/misc/2_A2_1.png"> </p>

<p align="center"> <img src="/misc/2_A2_2.png"> </p>

## 2_A3_linearity_and_convolution

<p align="center"> <img src="/misc/2_A3_2.png"> </p>

## 2_A4_filters_as_templates

<p align="center"> <img src="/misc/2_A4_1.png"> </p>

## 2_A5_edge_detection_gradients

<p align="center"> <img src="/misc/2_A5_1.png"> </p>

<p align="center"> <img src="/misc/2_A5_2.png"> </p>

## 2_A6_edge_detection_2D_operators

<p align="center"> <img src="/misc/2_A6_1.png"> </p>

<p align="center"> <img src="/misc/2_A6_2.png"> </p>

<p align="center"> <img src="/misc/2_A6_3.png"> </p>