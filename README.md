
# Opencv Object Detection using Haar Cascade on Java Processing

The code serves as an example of implementing Haar Cascade object detection using the OpenCV library in Processing. The main reason the code was written is because the OpenCV library fails to detect objects when the size of the window is not the same as the size of the image source. This is due to the PApplet parent that it inherits, so it was concluded from my testing that a separate window is required for the detection to work correctly.



## How to use

+ Install Java Processing: 

  [Processing.org](https://processing.org/download)

+ Install the Following library in the processing:

  + Opencv-Processing (From Cansik)

+ Copy your Cascade file into the following directory: 

    + Windows 
    ```
    C:\Users\<Username>\Documents\Processing\libraries\opencv_processing\library\cascade-files
    ```
    + Linux

    ```
    ./Sketchbook/libraries/
    ```

+ Or you can use mine which is located in the folder tools.
+ Make sure to change the name of the loaded cascade on line 38 in PWindow Class.

    