# PROJECT EXECUTION

## D. EXECUTING THE PROJECT

### Project Design and Coding

Flowchart Design:

![flow](https://user-images.githubusercontent.com/121591014/211717209-98f795b8-910d-4a2f-86e6-f89de3ecd075.png)

Fruit Spoilage Detection Example

### Description-of-the-project-coding-and-implementation

The program starts with calling in an image of a fruit that we want to analyze and store it into a variable, denoted by I in this program. Next, we use the imhist function in MatLAB to display the histogram of the image in order for us to see the color gradiation in the image.
![image](https://user-images.githubusercontent.com/121591014/211720688-7a2f543d-da7b-421d-bacd-f20df3532a16.png)

After that we turn the image into a binary image in order to ease the image analyzation process by using the roicolor() function with three parameters.
The first parameter is the variable that refers to the image we are using, in this case 'I'. The second variable is the lowest color that it will be able to detect and the last variable it the highest color it will be able to detect. In this case we decide on 90 for the lowest and 255 for the highest. this way any pixel within the range of the 90-255 spectrum will be labeled as 1 and the rest will be labeled as black.
![image](https://user-images.githubusercontent.com/121591014/211722675-8ced6b16-4a1b-47d5-b503-672ddca41df8.png)

Next, we check every labeled object sections in the image. The image is labeled according to areas that are bright. The centroid of each object is located and relabeled. 
![image](https://user-images.githubusercontent.com/121591014/211722817-452152ed-4354-41fd-a6c4-78f1d0f53555.png)

In this section, we calculate the area of 'spoilage' in the image to see if the fruit is spoilt by calculating how large each object is.
![image](https://user-images.githubusercontent.com/121591014/211723749-b8537696-6a08-4e12-ac55-34e58ed29949.png)

Finally, we check if the area of spoilage is more than 2000 or less than 2000. If the spoilage area is less than 2000, it will add 10 to the total condition and if it is more than 2000, 20 will be added. After the total condition in each object has been accumulated, the total condition is divided by 100 to see the percentage of spoilage.
If the percentage is less than 1, the program will give a message telling us the fruit is not spoilt and safe to eat. If the percentage is more than 1, the program will give a message telling us the fruit is spoilt and not safe to eat.
![image](https://user-images.githubusercontent.com/121591014/211723993-89651ed4-1327-46fb-8f53-2747702d8b26.png)

### Project-Result

Result using MatLAB

#### Spoilt fruit result example
![Screenshot 2023-01-11 121009](https://user-images.githubusercontent.com/121591014/211725018-b86589a4-f2eb-42f0-9681-0a9edb01d6f7.png)

#### Unspoilt fruit result example
![Screenshot 2023-01-11 121056](https://user-images.githubusercontent.com/121591014/211725062-95b791f3-343b-4e29-8ce0-9538cedda501.png)


##### Next: [Project Closing](https://github.com/n-miera/Fruit-Spoilage-Detection-System/blob/main/PMP/E-PROJECT_CLOSING.md)
