# PROJECT-EXECUTION

## D.-EXECUTING-THE-PROJECT

### Project-Design-and-Coding

Flowchart Design:

![flow](https://user-images.githubusercontent.com/121591014/211717209-98f795b8-910d-4a2f-86e6-f89de3ecd075.png)

Fruit Spoilage Detection Example

### Description-of-the-project-coding-and-implementation

The program starts with calling in an image of a fruit that we want to analyze and store it into a variable, denoted by I in this program. Next, we use the imhist function in MatLAB to display the histogram of the image in order for us to see the color gradiation in the image.
![image](https://user-images.githubusercontent.com/121591014/211720688-7a2f543d-da7b-421d-bacd-f20df3532a16.png)

After that we turn the image into a binary image in order to ease the image analyzation process by using the roicolor() function with three parameters.
The first parameter is the variable that refers to the image we are using, in this case 'I'. The second variable is the lowest color that it will be able to detect and the last variable it the highest color it will be able to detect. In this case we decide on 90 for the lowest and 255 for the highest. this way any pixel within the range of the 90-255 spectrum will be labeled as 1 and the rest will be labeled as black.
![image](https://user-images.githubusercontent.com/121591014/211722675-8ced6b16-4a1b-47d5-b503-672ddca41df8.png)

