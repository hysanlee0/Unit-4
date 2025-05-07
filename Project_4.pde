//Hysan Lee
//A long time ago...
//2-3

//colours
color red = #F74B51;
color blue = #89E4FF;
color roadGrey = #707171;
color sidewalkGrey = #B7B7B7;
color buildingGrey = #CCCCCC;

//positions
int carX = 15;
int buildingX;


void setup() {
 size (600, 600);
 background(blue);
 
 //road and stuff
 fill(sidewalkGrey);
 rect(0, 425, 600, 50);
 fill(roadGrey);
 rect(0, 475, 600, 125);
 
 //car pattern
  while (carX < 600) {
    car(carX, random(510, 545));
    carX = carX + 90;
   }
   
 //building pattern
 building(25, 100);
 }
