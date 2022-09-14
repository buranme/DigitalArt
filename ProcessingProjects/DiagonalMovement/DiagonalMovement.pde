int RES = 1;      //Resolution of the image
float VRN = 1;    //Variance in colors
float LST = 10;    //Line straightness

int HEIGHT = 1920;
int WIDTH = 1920;
int BANDHEIGHT = 124;
int GAPHEIGHT = 62;
int TOPLEFTOFFSET = 0;

float[][] top = new float[WIDTH][3];
float[][] left = new float[HEIGHT][3];
float[][][] all = new float[WIDTH][HEIGHT][3]; //çok yer tutacak, eksperimental

void setup()
{
  size(1920, 1920);

  top[0][0] = 111;
  top[0][1] = 44;
  top[0][2] = 55;

  left[0][0] = top[0][0];
  left[0][1] = top[0][1];
  left[0][2] = top[0][2];
  
  fill(left[0][0], left[0][1], left[0][2]);
  noStroke();
  rect(0,0,RES,RES);
  
  for(int j = 1; j < HEIGHT/RES; j++)
  {
    left[j][0] = left[j-1][0] + random(RES/-1*VRN,RES*VRN);
    left[j][1] = left[j-1][1] + random(RES/-1*VRN,RES*VRN);
    left[j][2] = left[j-1][2] + random(RES/-1*VRN,RES*VRN);
    fill(left[j][0], left[j][1], left[j][2]);
    noStroke();
    rect(0,j*RES,RES,RES);
  }
  
  for(int i = 1; i < WIDTH/RES; i++)
  {
    top[i][0] = top[i-1][0] + random(RES/-1*VRN,RES*VRN);
    top[i][1] = top[i-1][1] + random(RES/-1*VRN,RES*VRN);
    top[i][2] = top[i-1][2] + random(RES/-1*VRN,RES*VRN);
    fill(top[i][0], top[i][1], top[i][2]);
    noStroke();
    rect(i*RES,0,RES,RES);
  }
  
  for(int i = 1; i < WIDTH/RES; i++)
  {
    left[0][0] = top[i][0];
    left[0][1] = top[i][1];
    left[0][2] = top[i][2];
    
    for(int j = 1; j < HEIGHT/RES; j++)
    {
      left[j][0] = (left[j][0] + left[j-1][0])/2 + random(RES/-1*LST,RES*LST);
      left[j][1] = (left[j][1] + left[j-1][1])/2 + random(RES/-1*LST,RES*LST);
      left[j][2] = (left[j][2] + left[j-1][2])/2 + random(RES/-1*LST,RES*LST);
      
      fill(left[j][0], left[j][1], left[j][2]);
      noStroke();
      rect(i*RES,j*RES,RES,RES);
    }
  }
  //save(str(month()) + str(day()) + str(hour()) + str(minute()) + str(second()) + ".jpg");
}

void draw()
{/**/
}

  
