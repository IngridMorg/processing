// i feel like a better way to do this is to create an object that holds everything
//initialise an array of those objects
//and then print them out.
void setup(){
  //we are going to create a grid of angles
  size(500,500);
  background(240);
  noLoop();
}
//takes an angle and determines what x value we will need
float pythagorasX(float hyp, float angle){
  //use cos functions
  float x = hyp * sin(angle);
  return x;
}
float pythagorasY(float hyp, float angle){
  float y = hyp * sin(angle);
  return y;
}
void draw(){
 //we will draw our grid of angles oncee
 //we need to determine our resolution
 float resolution = width * 0.05;
 //we will want to know how many columns we have
 float columns = width / resolution;
 float rows = height / resolution;
 //we need to determine our default angle
 float angle = 4;
 float steps = rows * 0.25;
 for(int i = 0;i<width;i+=resolution){
    for(int j = 0;j<height;j+=resolution){
      strokeWeight(3);
      point(i,j);
      //to draw the line we may need pythag)
      strokeWeight(1);
      line(i,j,i+pythagorasX(10,angle),j+pythagorasY(10,angle));
    }
 }
}
