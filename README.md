# Udacity Introduction to Computer Vision 

## Course Code using MatLab/Octave.

<p align="center"> <img src="/misc/topics.png"> </p>

### Installing Octave on Ubuntu

All code was tested on Ubuntu 18.04 LTS with Octave 4.2.2. Octave installation steps are as following:

```bash
$ sudo apt install octave
$ sudo apt install liboctave-dev 
```
run octave command line
```bash
$ octave-cli 
GNU Octave, version 4.2.2
Copyright (C) 2018 John W. Eaton and others.
This is free software; see the source code for copying conditions.
There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  For details, type 'warranty'.

Octave was configured for "x86_64-pc-linux-gnu".

Additional information about Octave is available at http://www.octave.org.

Please contribute if you find this software useful.
For more information, visit http://www.octave.org/get-involved.html

Read http://www.octave.org/bugs.html to learn how to submit bug reports.
For information about changes from previous versions, type 'news'.

octave:1> 
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

to remove octave

```bash
$ sudo apt remove octave
$ sudo apt remove liboctave-dev
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

<p align="center"> <img src="/misc/2_A6_4.png"> </p>

## 2_B1_hough_transform_lines

## 2_B2_hough_transform_circles

No Code

## 2_B3_generalized_hough_transform

No Code

## 2_C1_fourier_transform

No Code

## 2_C2_convolution_in_frequency_domain

No Code

## 2_C3_aliasing

No Code

## 3_A1_camera_and_images

No Code

## 3_A2_prespective_imaging

## 3_B1_stereo_geometry

No Code

## 3_B2_epipolar_geometry

No Code

## 3_B3_Stereo_correspondence

## 3_C1_Extrinsic_camera_parameters

No Code

## 3_C2_Instrinsic_camera_parameters

No Code

## 3_C3_Calibrating_cameras

No Code

## 3_D1_Image_to_image_projections

No Code

## 3_D2_Homographies_and_mosaics

## 3_D3_Projective_geometry

## 3_D4_Essential_matrix

## 3_D5_Fundamental_matrix

## 4_A1_Introduction_to_features

## 4_A2_finding_corners

## 6_B3_hierarchical_lk
