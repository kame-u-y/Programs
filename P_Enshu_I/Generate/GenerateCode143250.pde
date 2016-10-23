float [] pointX = new float [5000];
float [] pointY = new float [5000];
int [] pointStrokeFlag = new int [5000];
int [] pointMoveFlag = new int [5000];
int [] pointMoveFLAGX = new int [5000];
int [] pointMoveFLAGY = new int [5000];
float [] pointVX = new float [5000];
float [] pointVY = new float [5000];

float [] lineX1 = new float [500];
float [] lineY1 = new float [500];
float [] lineX2 = new float [500];
float [] lineY2 = new float [500];
float [] lineW = new float [500];
float [] lineH = new float [500];
int [] lineStrokeFlag = new int [500];
int [] lineMoveFlag = new int [500];
int [] lineMoveFLAGX = new int [500];
int [] lineMoveFLAGY = new int [500];
float [] lineVX = new float [500];
float [] lineVY = new float [500];

float [] rectX = new float [500];
float [] rectY = new float [500];
float [] rectW = new float [500];
float [] rectH = new float [500];
float [] rectX2 = new float [500];
float [] rectY2 = new float [500];
int [] rectFillFlag = new int [500];
int [] rectMoveFlag = new int [500];
int [] rectMoveFLAGX = new int [500];
int [] rectMoveFLAGY = new int [500];
float [] rectVX = new float [500];
float [] rectVY = new float [500];

int [] beginShapeFLAG = new int [500];
float [][] vertexX = new float [500][500];
float [][] vertexY = new float [500][500];
int [] vertexFillFlag = new int [500];
int [] vertexFlag = new int [500];
int [] lastVertexFlag = new int [500];
int vertexCount;
int [] vertexMoveFlag = new int [500];
float [] vertexMoveFLAGX = new float [500];
float [] vertexMoveFLAGY = new float [500];
float [] MaxX = new float [500];
float [] minX = new float [500];
float [] MaxY = new float [500];
float [] minY = new float [500];
float [][] DistX = new float [500][500];
float [][] distX = new float [500][500];
float [][] DistY = new float [500][500];
float [][] distY = new float [500][500];
float [] vertexVX = new float [500];
float [] vertexVY = new float [500];

int [] ellipFillFlag = new int [500];
int [] ellipMoveFlag = new int [500];
int [] ellipMoveFLAGX = new int [500];
int [] ellipMoveFLAGY = new int [500];
float [] ellipX = new float [500];
float [] ellipY = new float [500];
float [] ellipR1 = new float [500];
float [] ellipR2 = new float [500];
int [] ellipFlag = new int [500];
int [] ellipFLAG = new int [500];
float [] ellipVX = new float [500];
float [] ellipVY = new float [500];

void setup(){
  size(1000, 600);
  for(int p=0; p<5000; p++){
    pointVX[p]=random(1, 3);
    pointVY[p]=random(1, 3);
    pointMoveFLAGX[p]=(int)random(2);
    pointMoveFLAGY[p]=(int)random(2);
  }
  for(int l=0; l<500; l++){
    lineVX[l]=random(1, 3);
    lineVY[l]=random(1, 3);
    lineMoveFLAGX[l]=(int)random(2);
    lineMoveFLAGY[l]=(int)random(2);
  }
  for(int r=0; r<500; r++){
    rectVX[r]=random(1, 3);
    rectVY[r]=random(1, 3);
    rectMoveFLAGX[r]=(int)random(2);
    rectMoveFLAGY[r]=(int)random(2);
  }
  for(int v=0; v<500; v++){
    vertexVX[v]=random(1, 3);
    vertexVY[v]=random(1, 3);
    vertexMoveFLAGX[v]=(int)random(2);
    vertexMoveFLAGY[v]=(int)random(2);
  }
  for (int e=0; e<500; e++) {
    ellipVX[e]=random(1, 3);
    ellipVY[e]=random(1, 3);
    ellipMoveFLAGX[e]=(int)random(2);
    ellipMoveFLAGY[e]=(int)random(2);
  }
  pointX[0]=360.0;
  pointY[0]=118.33333;
  pointX[1]=363.3333;
  pointY[1]=123.33333;
  pointX[2]=356.66666;
  pointY[2]=124.99999;
  pointX[3]=343.3333;
  pointY[3]=128.33333;
  pointX[4]=321.66666;
  pointY[4]=131.66666;
  pointX[5]=291.66666;
  pointY[5]=133.33333;
  pointX[6]=271.66666;
  pointY[6]=133.33333;
  pointX[7]=256.66666;
  pointY[7]=133.33333;
  pointX[8]=251.66666;
  pointY[8]=131.66666;
  pointX[9]=248.33333;
  pointY[9]=126.666664;
  pointX[10]=248.33333;
  pointY[10]=113.33333;
  pointX[11]=286.66666;
  pointY[11]=90.0;
  pointX[12]=360.0;
  pointY[12]=71.666664;
  pointX[13]=456.66666;
  pointY[13]=66.666664;
  pointX[14]=521.6666;
  pointY[14]=66.666664;
  pointX[15]=570.0;
  pointY[15]=83.33333;
  pointX[16]=603.3333;
  pointY[16]=109.99999;
  pointX[17]=618.3333;
  pointY[17]=148.33333;
  pointX[18]=590.0;
  pointY[18]=199.99998;
  pointX[19]=515.0;
  pointY[19]=261.66666;
  pointX[20]=459.99997;
  pointY[20]=295.0;
  pointX[21]=416.66666;
  pointY[21]=310.0;
  pointX[22]=380.0;
  pointY[22]=313.3333;
  pointX[23]=365.0;
  pointY[23]=308.3333;
  pointX[24]=363.3333;
  pointY[24]=285.0;
  pointX[25]=391.66666;
  pointY[25]=248.33333;
  pointX[26]=429.99997;
  pointY[26]=226.66666;
  pointX[27]=464.99997;
  pointY[27]=213.33333;
  pointX[28]=491.66666;
  pointY[28]=209.99998;
  pointX[29]=506.66666;
  pointY[29]=206.66666;
  pointX[30]=515.0;
  pointY[30]=206.66666;
  pointX[31]=493.3333;
  pointY[31]=224.99998;
  pointX[32]=451.66666;
  pointY[32]=241.66666;
  pointX[33]=396.66666;
  pointY[33]=256.66666;
  pointX[34]=363.3333;
  pointY[34]=258.3333;
  pointX[35]=338.3333;
  pointY[35]=244.99998;
  pointX[36]=338.3333;
  pointY[36]=198.33333;
  pointX[37]=371.66666;
  pointY[37]=151.66666;
  pointX[38]=419.99997;
  pointY[38]=121.666664;
  pointX[39]=481.66666;
  pointY[39]=103.33333;
  pointX[40]=481.66666;
  pointY[40]=103.33333;
  pointX[41]=565.0;
  pointY[41]=121.666664;
  pointX[42]=568.3333;
  pointY[42]=148.33333;
  pointX[43]=545.0;
  pointY[43]=196.66666;
  pointX[44]=486.66666;
  pointY[44]=238.33333;
  pointX[45]=436.66666;
  pointY[45]=256.66666;
  pointX[46]=370.0;
  pointY[46]=263.3333;
  pointX[47]=338.3333;
  pointY[47]=263.3333;
  pointX[48]=313.3333;
  pointY[48]=248.33333;
  pointX[49]=305.0;
  pointY[49]=224.99998;
  pointX[50]=316.66666;
  pointY[50]=193.33333;
  pointX[51]=356.66666;
  pointY[51]=170.0;
  pointX[52]=394.99997;
  pointY[52]=151.66666;
  pointX[53]=414.99997;
  pointY[53]=145.0;
  pointX[54]=431.66666;
  pointY[54]=141.66666;
  pointX[55]=433.3333;
  pointY[55]=143.33333;
  pointX[56]=384.99997;
  pointY[56]=180.0;
  pointX[57]=333.3333;
  pointY[57]=204.99998;
  pointX[58]=288.3333;
  pointY[58]=218.33333;
  pointX[59]=253.33333;
  pointY[59]=219.99998;
  pointX[60]=229.99998;
  pointY[60]=206.66666;
  pointX[61]=228.33333;
  pointY[61]=185.0;
  pointX[62]=246.66666;
  pointY[62]=143.33333;
  pointX[63]=303.3333;
  pointY[63]=109.99999;
  pointX[64]=361.66666;
  pointY[64]=95.0;
  pointX[65]=433.3333;
  pointY[65]=91.666664;
  pointX[66]=476.66666;
  pointY[66]=121.666664;
  pointX[67]=491.66666;
  pointY[67]=163.33333;
  pointX[68]=489.99997;
  pointY[68]=239.99998;
  pointX[69]=443.3333;
  pointY[69]=306.66666;
  pointX[70]=401.66666;
  pointY[70]=336.66666;
  pointX[71]=368.3333;
  pointY[71]=351.66666;
  pointX[72]=328.3333;
  pointY[72]=356.66666;
  pointX[73]=318.3333;
  pointY[73]=333.3333;
  pointX[74]=318.3333;
  pointY[74]=301.66666;
  pointX[75]=340.0;
  pointY[75]=268.3333;
  pointX[76]=380.0;
  pointY[76]=243.33333;
  pointX[77]=413.3333;
  pointY[77]=234.99998;
  pointX[78]=441.66666;
  pointY[78]=234.99998;
  pointX[79]=454.99997;
  pointY[79]=239.99998;
  pointX[80]=439.99997;
  pointY[80]=275.0;
  pointX[81]=398.3333;
  pointY[81]=306.66666;
  pointX[82]=361.66666;
  pointY[82]=330.0;
  pointX[83]=338.3333;
  pointY[83]=338.3333;
  pointX[84]=320.0;
  pointY[84]=341.66666;
  pointX[85]=311.66666;
  pointY[85]=341.66666;
  pointX[86]=320.0;
  pointY[86]=308.3333;
  pointX[87]=370.0;
  pointY[87]=256.66666;
  pointX[88]=448.3333;
  pointY[88]=203.33333;
  pointX[89]=508.3333;
  pointY[89]=183.33333;
  pointX[90]=538.3333;
  pointY[90]=183.33333;
  pointX[91]=571.6666;
  pointY[91]=196.66666;
  pointX[92]=570.0;
  pointY[92]=241.66666;
  pointX[93]=515.0;
  pointY[93]=313.3333;
  pointX[94]=436.66666;
  pointY[94]=376.66666;
  pointX[95]=378.3333;
  pointY[95]=396.66666;
  pointX[96]=321.66666;
  pointY[96]=401.66666;
  pointX[97]=286.66666;
  pointY[97]=391.66666;
  pointX[98]=273.3333;
  pointY[98]=360.0;
  pointX[99]=275.0;
  pointY[99]=301.66666;
  pointX[100]=320.0;
  pointY[100]=244.99998;
  pointX[101]=391.66666;
  pointY[101]=199.99998;
  pointX[102]=449.99997;
  pointY[102]=190.0;
  pointX[103]=478.3333;
  pointY[103]=190.0;
  pointX[104]=499.99997;
  pointY[104]=206.66666;
  pointX[105]=496.66666;
  pointY[105]=244.99998;
  pointX[106]=436.66666;
  pointY[106]=295.0;
  pointX[107]=376.66666;
  poin