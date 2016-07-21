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
  pointX[0]=246.66666;
  pointY[0]=124.99999;
  pointX[1]=244.99998;
  pointY[1]=124.99999;
  pointX[2]=243.33333;
  pointY[2]=123.33333;
  pointX[3]=243.33333;
  pointY[3]=119.99999;
  pointX[4]=241.66666;
  pointY[4]=118.33333;
  pointX[5]=241.66666;
  pointY[5]=114.99999;
  pointX[6]=241.66666;
  pointY[6]=113.33333;
  pointX[7]=241.66666;
  pointY[7]=111.666664;
  pointX[8]=241.66666;
  pointY[8]=109.99999;
  pointX[9]=241.66666;
  pointY[9]=108.33333;
  pointX[10]=241.66666;
  pointY[10]=106.666664;
  pointX[11]=241.66666;
  pointY[11]=104.99999;
  pointX[12]=243.33333;
  pointY[12]=104.99999;
  pointX[13]=244.99998;
  pointY[13]=104.99999;
  pointX[14]=246.66666;
  pointY[14]=104.99999;
  pointX[15]=246.66666;
  pointY[15]=104.99999;
  pointX[16]=248.33333;
  pointY[16]=104.99999;
  pointX[17]=249.99998;
  pointY[17]=104.99999;
  pointX[18]=249.99998;
  pointY[18]=104.99999;
  pointX[19]=251.66666;
  pointY[19]=104.99999;
  pointX[20]=251.66666;
  pointY[20]=106.666664;
  pointX[21]=251.66666;
  pointY[21]=108.33333;
  pointX[22]=254.99998;
  pointY[22]=108.33333;
  pointX[23]=254.99998;
  pointY[23]=109.99999;
  pointX[24]=254.99998;
  pointY[24]=111.666664;
  pointX[25]=254.99998;
  pointY[25]=113.33333;
  pointX[26]=254.99998;
  pointY[26]=114.99999;
  pointX[27]=254.99998;
  pointY[27]=116.666664;
  pointX[28]=254.99998;
  pointY[28]=118.33333;
  pointX[29]=254.99998;
  pointY[29]=119.99999;
  pointX[30]=253.33333;
  pointY[30]=119.99999;
  pointX[31]=253.33333;
  pointY[31]=121.666664;
  pointX[32]=251.66666;
  pointY[32]=121.666664;
  pointX[33]=249.99998;
  pointY[33]=121.666664;
  pointX[34]=248.33333;
  pointY[34]=121.666664;
  pointX[35]=248.33333;
  pointY[35]=119.99999;
  pointX[36]=248.33333;
  pointY[36]=118.33333;
  pointX[37]=248.33333;
  pointY[37]=116.666664;
  pointX[38]=248.33333;
  pointY[38]=114.99999;
  pointX[39]=248.33333;
  pointY[39]=114.99999;
  pointX[40]=249.99998;
  pointY[40]=114.99999;
  pointX[41]=251.66666;
  pointY[41]=114.99999;
  pointX[42]=253.33333;
  pointY[42]=114.99999;
  pointX[43]=821.6666;
  pointY[43]=316.66666;
  pointX[44]=821.6666;
  pointY[44]=315.0;
  pointX[45]=821.6666;
  pointY[45]=313.3333;
  pointX[46]=821.6666;
  pointY[46]=311.66666;
  pointX[47]=823.3333;
  pointY[47]=311.66666;
  pointX[48]=823.3333;
  pointY[48]=311.66666;
  pointX[49]=823.3333;
  pointY[49]=310.0;
  pointX[50]=823.3333;
  pointY[50]=308.3333;
  pointX[51]=823.3333;
  pointY[51]=306.66666;
  pointX[52]=824.99994;
  pointY[52]=306.66666;
  pointX[53]=824.99994;
  pointY[53]=305.0;
  pointX[54]=826.6666;
  pointY[54]=305.0;
  pointX[55]=826.6666;
  pointY[55]=303.3333;
  pointX[56]=828.3333;
  pointY[56]=303.3333;
  pointX[57]=828.3333;
  pointY[57]=301.66666;
  pointX[58]=829.99994;
  pointY[58]=301.66666;
  pointX[59]=831.6666;
  pointY[59]=301.66666;
  pointX[60]=833.3333;
  pointY[60]=301.66666;
  pointX[61]=834.99994;
  pointY[61]=301.66666;
  pointX[62]=836.6666;
  pointY[62]=301.66666;
  pointX[63]=836.6666;
  pointY[63]=303.3333;
  pointX[64]=838.3333;
  pointY[64]=303.3333;
  pointX[65]=838.3333;
  pointY[65]=305.0;
  pointX[66]=838.3333;
  pointY[66]=306.66666;
  pointX[67]=838.3333;
  pointY[67]=308.3333;
  pointX[68]=838.3333;
  pointY[68]=308.3333;
  pointX[69]=838.3333;
  pointY[69]=310.0;
  pointX[70]=838.3333;
  pointY[70]=310.0;
  pointX[71]=838.3333;
  pointY[71]=311.66666;
  pointX[72]=838.3333;
  pointY[72]=313.3333;
  pointX[73]=838.3333;
  pointY[73]=315.0;
  pointX[74]=836.6666;
  pointY[74]=315.0;
  pointX[75]=836.6666;
  pointY[75]=316.66666;
  pointX[76]=834.99994;
  pointY[76]=316.66666;
  pointX[77]=834.99994;
  pointY[77]=318.3333;
  pointX[78]=833.3333;
  pointY[78]=318.3333;
  pointX[79]=833.3333;
  pointY[79]=320.0;
  pointX[80]=831.6666;
  pointY[80]=320.0;
  pointX[81]=829.99994;
  pointY[81]=320.0;
  pointX[82]=828.3333;
  pointY[82]=320.0;
  pointX[83]=826.6666;
  pointY[83]=320.0;
  pointX[84]=826.6666;
  pointY[84]=318.3333;
  pointX[85]=826.6666;
  pointY[85]=316.66666;
  pointX[86]=826.6666;
  pointY[86]=315.0;
  pointX[87]=826.6666;
  pointY[87]=313.3333;
  pointX[88]=826.6666;
  pointY[88]=311.66666;
  pointX[89]=826.6666;
  pointY[89]=310.0;
  pointX[90]=828.3333;
  pointY[90]=310.0;
  pointX[91]=829.99994;
  pointY[91]=310.0;
  pointX[92]=831.6666;
  pointY[92]=310.0;
  pointX[93]=833.3333;
  pointY[93]=310.0;
  pointX[94]=834.99994;
  pointY[94]=310.0;
  pointX[95]=834.99994;
  pointY[95]=311.66666;
  pointX[96]=833.3333;
  pointY[96]=311.66666;
  pointX[97]=833.3333;
  pointY[97]=313.3333;
  pointX[98]=831.6666;
  pointY[98]=313.3333;
  pointX[99]=831.6666;
  pointY[99]=315.0;
  pointX[100]=829.99994;
  pointY[100]=315.0;
  lineX1[1]=153.33333;
  lineY1[1]=175.0;
  lineX2[1]=221.66666;
  lineY2[1]=223.33333;
  lineX1[2]=221.66666;
  lineY1[2]=361.66666;
  lineX2[2]=156.66666;
  lineY2[2]=433.3333;
  lineX1[3]=789.99994;
  lineY1[3]=136.66666;
  lineX2[3]=873.3333;
  lineY2[3]=98.33333;
  lineX1[4]=818.3333;
  lineY1[4]=423.3333;
  lineX2[4]=868.3333;
  lineY2[4]=469.99997;
  rectX[1]=68.33333;
  rectY[1]=286.66666;
  rectW[1]=65.0;
  rectH[1]=48.333344;
  rectX[2]=126.666664;
  rectY[2]=468.3333;
  rectW[2]=-63.333332;
  rectH[2]=-71.66666;
  rectX[3]=891.6666;
  rectY[3]=328.3333;
  rectW[3]=45.0;
  rectH[3]=-40.0;
  rectX[4]=881.6666;
  rectY[4]=543.3333;
  rectW[4]=71.66669;
  rectH[4]=43.333313;
  vertexX[0][0]=906.6666;
  vertexY[0][0]=163.33333;
  vertexX[0][1]=859.99994;
  vertexY[0][1]=199.99998;
  vertexX[0][2]=968.3333;
  vertexY[0][2]=209.99998;
  vertexX[0][3]=918.3333;
  vertexY[0][3]=229.99998;
  vertexX[1][0]=808.3333;
  vertexY[1][0]=213.33333;
  vertexX[1][1]=794.99994;
  vertexY[1][1]=258.3333;
  vertexX[1][2]=839.99994;
  vertexY[1][2]=251.66666;
  vertexX[1][3]=821.6666;
  vertexY[1][3]=258.3333;
  vertexX[1][4]=821.6666;
  vertexY[1][4]=213.33333;
  vertexX[1][5]=878.3333;
  vertexY[1][5]=233.33333;
  vertexX[1][6]=849.99994;
  vertexY[1][6]=263.3333;
  ellipX[2]=133.33333;
  ellipY[2]=561.6666;
  ellipR1[2]=-35.0;
  ellipR2[2]=-21.666626;
  ellipX[3]=145.0;
  ellipY[3]=81.666664;
  ellipR1[3]=20.0;
  ellipR2[3]=23.333328;
  ellipX[4]=919.99994;
  ellipY[4]=23.333332;
  ellipR1[4]=-40.0;
  ellipR2[4]=30.0;
  ellipX[5]=921.6666;
  ellipY[5]=135.0;
  ellipR1[5]=23.333313;
  ellipR2[5]=-25.000008;
  rectX[6]=263.3333;
  rectY[6]=31.666666;
  rectW[6]=506.66663;
  rectH[6]=313.33334;
  rectX[7]=393.3333;
  rectY[7]=228.33333;
  rectW[7]=255.0;
  rectH[7]=93.33333;
  rectX[8]=409.99997;
  rectY[8]=350.0;
  rectW[8]=230.00003;
  rectH[8]=203.33331;
  rectX[9]=283.3333;
  rectY[9]=540.0;
  rectW[9]=180.0;
  rectH[9]=55.0;
  rectX[10]=605.0;
  rectY[10]=541.6666;
  rectW[10]=173.33331;
  rectH[10]=56.666687;
  ellipX[7]=399.99997;
  ellipY[7]=126.666664;
  ellipR1[7]=81.66669;
  ellipR2[7]=78.33332;
  ellipX[8]=401.66666;
  ellipY[8]=136.66666;
  ellipR1[8]=45.0;
  ellipR2[8]=43.333344;
  ellipX[9]=616.6666;
  ellipY[9]=136.66666;
  ellipR1[9]=83.333374;
  ellipR2[9]=80.0;
  ellipX[10]=621.6666;
  ellipY[10]=145.0;
  ellipR1[10]=41.666687;
  ellipR2[10]=41.666656;
  ellipX[11]=361.66666;
  ellipY[11]=423.3333;
  ellipR1[11]=68.33331;
  ellipR2[11]=71.66666;
  ellipX[12]=695.0;
  ellipY[12]=426.66666;
  ellipR1[12]=73.33331;
  ellipR2[12]=83.33331;
  pointStrokeFlag[0]=1;
  pointStrokeFlag[1]=1;
  pointStrokeFlag[2]=1;
  pointStrokeFlag[3]=1;
  pointStrokeFlag[4]=1;
  pointStrokeFlag[5]=1;
  pointStrokeFlag[6]=1;
  pointStrokeFlag[7]=1;
  pointStrokeFlag[8]=1;
  pointStrokeFlag[9]=1;
  pointStrokeFlag[10]=1;
  pointStrokeFlag[11]=1;
  pointStrokeFlag[12]=1;
  pointStrokeFlag[13]=1;
  pointStrokeFlag[14]=1;
  pointStrokeFlag[15]=1;
  pointStrokeFlag[16]=1;
  pointStrokeFlag[17]=1;
  pointStrokeFlag[18]=1;
  pointStrokeFlag[19]=1;
  pointStrokeFlag[20]=1;
  pointStrokeFlag[21]=1;
  pointStrokeFlag[22]=1;
  pointStrokeFlag[23]=1;
  pointStrokeFlag[24]=1;
  pointStrokeFlag[25]=1;
  pointStrokeFlag[26]=1;
  pointStrokeFlag[27]=1;
  pointStrokeFlag[28]=1;
  pointStrokeFlag[29]=1;
  pointStrokeFlag[30]=1;
  pointStrokeFlag[31]=1;
  pointStrokeFlag[32]=1;
  pointStrokeFlag[33]=1;
  pointStrokeFlag[34]=1;
  pointStrokeFlag[35]=1;
  pointStrokeFlag[36]=1;
  pointStrokeFlag[37]=1;
  pointStrokeFlag[38]=1;
  pointStrokeFlag[39]=1;
  pointStrokeFlag[40]=1;
  pointStrokeFlag[41]=1;
  pointStrokeFlag[42]=1;
  pointStrokeFlag[43]=1;
  pointStrokeFlag[44]=1;
  pointStrokeFlag[45]=1;
  pointStrokeFlag[46]=1;
  pointStrokeFlag[47]=1;
  pointStrokeFlag[48]=1;
  pointStrokeFlag[49]=1;
  pointStrokeFlag[50]=1;
  pointStrokeFlag[51]=1;
  pointStrokeFlag[52]=1;
  pointStrokeFlag[53]=1;
  pointStrokeFlag[54]=1;
  pointStrokeFlag[55]=1;
  pointStrokeFlag[56]=1;
  pointStrokeFlag[57]=1;
  pointStrokeFlag[58]=1;
  pointStrokeFlag[59]=1;
  pointStrokeFlag[60]=1;
  pointStrokeFlag[61]=1;
  pointStrokeFlag[62]=1;
  pointStrokeFlag[63]=1;
  pointStrokeFlag[64]=1;
  pointStrokeFlag[65]=1;
  pointStrokeFlag[66]=1;
  pointStrokeFlag[67]=1;
  pointStrokeFlag[68]=1;
  pointStrokeFlag[69]=1;
  pointStrokeFlag[70]=1;
  pointStrokeFlag[71]=1;
  pointStrokeFlag[72]=1;
  pointStrokeFlag[73]=1;
  pointStrokeFlag[74]=1;
  pointStrokeFlag[75]=1;
  pointStrokeFlag[76]=1;
  pointStrokeFlag[77]=1;
  pointStrokeFlag[78]=1;
  pointStrokeFlag[79]=1;
  pointStrokeFlag[80]=1;
  pointStrokeFlag[81]=1;
  pointStrokeFlag[82]=1;
  pointStrokeFlag[83]=1;
  pointStrokeFlag[84]=1;
  pointStrokeFlag[85]=1;
  pointStrokeFlag[86]=1;
  pointStrokeFlag[87]=1;
  pointStrokeFlag[88]=1;
  pointStrokeFlag[89]=1;
  pointStrokeFlag[90]=1;
  pointStrokeFlag[91]=1;
  pointStrokeFlag[92]=1;
  pointStrokeFlag[93]=1;
  pointStrokeFlag[94]=1;
  pointStrokeFlag[95]=1;
  pointStrokeFlag[96]=1;
  pointStrokeFlag[97]=1;
  pointStrokeFlag[98]=1;
  pointStrokeFlag[99]=1;
  pointStrokeFlag[100]=1;
  vertexFillFlag[0]=1;
  lineStrokeFlag[1]=1;
  rectFillFlag[1]=1;
  vertexFillFlag[1]=1;
  lineStrokeFlag[2]=1;
  rectFillFlag[2]=1;
  ellipFillFlag[2]=1;
  lineStrokeFlag[3]=1;
  rectFillFlag[3]=1;
  ellipFillFlag[3]=1;
  lineStrokeFlag[4]=1;
  rectFillFlag[4]=1;
  ellipFillFlag[4]=1;
  ellipFillFlag[5]=1;
  rectFillFlag[6]=1;
  rectFillFlag[7]=1;
  ellipFillFlag[7]=1;
  rectFillFlag[8]=1;
  ellipFillFlag[8]=1;
  rectFillFlag[9]=1;
  ellipFillFlag[9]=1;
  rectFillFlag[10]=1;
  ellipFillFlag[10]=1;
  ellipFillFlag[11]=1;
  ellipFillFlag[12]=1;
  pointMoveFlag[0]=1;
  pointMoveFlag[1]=1;
  pointMoveFlag[2]=1;
  pointMoveFlag[3]=1;
  pointMoveFlag[4]=1;
  pointMoveFlag[5]=1;
  pointMoveFlag[6]=1;
  pointMoveFlag[7]=1;
  pointMoveFlag[8]=1;
  pointMoveFlag[9]=1;
  pointMoveFlag[10]=1;
  pointMoveFlag[11]=1;
  pointMoveFlag[12]=1;
  pointMoveFlag[13]=1;
  pointMoveFlag[14]=1;
  pointMoveFlag[15]=1;
  pointMoveFlag[16]=1;
  pointMoveFlag[17]=1;
  pointMoveFlag[18]=1;
  pointMoveFlag[19]=1;
  pointMoveFlag[20]=1;
  pointMoveFlag[21]=1;
  pointMoveFlag[22]=1;
  pointMoveFlag[23]=1;
  pointMoveFlag[24]=1;
  pointMoveFlag[25]=1;
  pointMoveFlag[26]=1;
  pointMoveFlag[27]=1;
  pointMoveFlag[28]=1;
  pointMoveFlag[29]=1;
  pointMoveFlag[30]=1;
  pointMoveFlag[31]=1;
  pointMoveFlag[32]=1;
  pointMoveFlag[33]=1;
  pointMoveFlag[34]=1;
  pointMoveFlag[35]=1;
  pointMoveFlag[36]=1;
  pointMoveFlag[37]=1;
  pointMoveFlag[38]=1;
  pointMoveFlag[39]=1;
  pointMoveFlag[40]=1;
  pointMoveFlag[41]=1;
  pointMoveFlag[42]=1;
  pointMoveFlag[0]=1;
  pointMoveFlag[2]=1;
  pointMoveFlag[3]=1;
  pointMoveFlag[5]=1;
  pointMoveFlag[8]=1;
  pointMoveFlag[11]=1;
  pointMoveFlag[15]=1;
  pointMoveFlag[16]=1;
  pointMoveFlag[17]=1;
  pointMoveFlag[18]=1;
  pointMoveFlag[20]=1;
  pointMoveFlag[22]=1;
  pointMoveFlag[23]=1;
  pointMoveFlag[26]=1;
  pointMoveFlag[29]=1;
  pointMoveFlag[32]=1;
  pointMoveFlag[33]=1;
  pointMoveFlag[37]=1;
  pointMoveFlag[39]=1;
  pointMoveFlag[41]=1;
  lineMoveFlag[1]=1;
  rectMoveFlag[1]=1;
  lineMoveFlag[2]=1;
  rectMoveFlag[2]=1;
  ellipMoveFlag[2]=1;
  ellipMoveFlag[3]=1;
  pointMoveFlag[1]=1;
  pointMoveFlag[4]=1;
  pointMoveFlag[7]=1;
  pointMoveFlag[12]=1;
  pointMoveFlag[19]=1;
  pointMoveFlag[25]=1;
  pointMoveFlag[31]=1;
  pointMoveFlag[36]=1;
  pointMoveFlag[38]=1;
  pointMoveFlag[43]=1;
  pointMoveFlag[44]=1;
  pointMoveFlag[45]=1;
  pointMoveFlag[46]=1;
  pointMoveFlag[47]=1;
  pointMoveFlag[48]=1;
  pointMoveFlag[49]=1;
  pointMoveFlag[50]=1;
  pointMoveFlag[51]=1;
  pointMoveFlag[52]=1;
  pointMoveFlag[53]=1;
  pointMoveFlag[54]=1;
  pointMoveFlag[55]=1;
  pointMoveFlag[56]=1;
  pointMoveFlag[57]=1;
  pointMoveFlag[58]=1;
  pointMoveFlag[59]=1;
  pointMoveFlag[60]=1;
  pointMoveFlag[61]=1;
  pointMoveFlag[62]=1;
  pointMoveFlag[63]=1;
  pointMoveFlag[64]=1;
  pointMoveFlag[65]=1;
  pointMoveFlag[66]=1;
  pointMoveFlag[67]=1;
  pointMoveFlag[68]=1;
  pointMoveFlag[69]=1;
  pointMoveFlag[70]=1;
  pointMoveFlag[71]=1;
  pointMoveFlag[72]=1;
  pointMoveFlag[73]=1;
  pointMoveFlag[74]=1;
  pointMoveFlag[75]=1;
  pointMoveFlag[76]=1;
  pointMoveFlag[77]=1;
  pointMoveFlag[78]=1;
  pointMoveFlag[79]=1;
  pointMoveFlag[80]=1;
  pointMoveFlag[81]=1;
  pointMoveFlag[82]=1;
  pointMoveFlag[83]=1;
  pointMoveFlag[84]=1;
  pointMoveFlag[85]=1;
  pointMoveFlag[86]=1;
  pointMoveFlag[87]=1;
  pointMoveFlag[88]=1;
  pointMoveFlag[89]=1;
  pointMoveFlag[90]=1;
  pointMoveFlag[91]=1;
  pointMoveFlag[92]=1;
  pointMoveFlag[93]=1;
  pointMoveFlag[94]=1;
  pointMoveFlag[95]=1;
  pointMoveFlag[96]=1;
  pointMoveFlag[97]=1;
  pointMoveFlag[98]=1;
  pointMoveFlag[99]=1;
  pointMoveFlag[100]=1;
  vertexMoveFlag[0]=1;
  vertexMoveFlag[1]=1;
  lineMoveFlag[2]=1;
  lineMoveFlag[3]=1;
  rectMoveFlag[3]=1;
  lineMoveFlag[4]=1;
  rectMoveFlag[4]=1;
  ellipMoveFlag[4]=1;
  ellipMoveFlag[5]=1;
}

void draw(){
  background(255);
  for(int p=0; p<5000; p++){
    if (pointX[p]==0 && pointY[p]==0){
    continue;
    }
    if(pointStrokeFlag[p]==0){
      stroke(0);
    }
    if(pointStrokeFlag[p]==1){
      stroke(255, 0, 0);
    }
    strokeWeight(10);
    if(pointMoveFlag[p]==1){
      if(pointX[p]>width){
        pointX[p]=width;
        pointMoveFLAGX[p]=1;
      }
      if(pointX[p]<0){
        pointX[p]=0;
        pointMoveFLAGX[p]=0;
      }
      if(pointMoveFLAGX[p]==0) pointX[p]+=pointVX[p];
      if(pointMoveFLAGX[p]==1) pointX[p]-=pointVX[p];
      if(pointY[p]>height){
        pointY[p]=height;
        pointMoveFLAGY[p]=1;
      }
      if(pointY[p]<0){
        pointY[p]=0;
        pointMoveFLAGY[p]=0;
      }
      if(pointMoveFLAGY[p]==0) pointY[p]+=pointVY[p];
      if(pointMoveFLAGY[p]==1) pointY[p]-=pointVY[p];
    }
    point(pointX[p], pointY[p]);
  }
  strokeWeight(2);

  for(int l=0; l<500; l++){
    if(lineX1[l]==0 && lineY1[l]==0){
      continue;
    }
    if(lineStrokeFlag[l]==1){
      stroke(0, 0, 255);
    } else {
      stroke(0);
    }
    strokeWeight(5);
    if(lineMoveFlag[l]==1){
      if(lineX1[l]<=lineX2[l]){
        lineW[l]=lineX2[l]-lineX1[l];
        if(lineX2[l]>width){
          lineX1[l]=width-lineW[l];
          lineX2[l]=width;
          lineMoveFLAGX[l]=1;
        }
        if (lineX1[l]<0) {
          lineX1[l]=0;
          lineX2[l]=0+lineW[l];
          lineMoveFLAGX[l]=0;
        }
        if (lineMoveFLAGX[l]==0) {
          lineX1[l]=lineX1[l]+lineVX[l];
          lineX2[l]=lineX2[l]+lineVX[l];
        }
        if (lineMoveFLAGX[l]==1) {
          lineX1[l]=lineX1[l]-lineVX[l];
          lineX2[l]=lineX2[l]-lineVX[l];
        }
      }
      if (lineX1[l]>lineX2[l]) {
        lineW[l]=lineX1[l]-lineX2[l];
        if (lineX1[l]>width) {
          lineX1[l]=width;
          lineX2[l]=width-lineW[l];
          lineMoveFLAGX[l]=1;
        }
        if (lineX2[l]<0) {
          lineX1[l]=0+lineW[l];
          lineX2[l]=0;
          lineMoveFLAGX[l]=0;
        }
        if (lineMoveFLAGX[l]==0) {
          lineX1[l]=lineX1[l]+lineVX[l];
          lineX2[l]=lineX2[l]+lineVX[l];
        }
        if (lineMoveFLAGX[l]==1) {
          lineX1[l]=lineX1[l]-lineVX[l];
          lineX2[l]=lineX2[l]-lineVX[l];
        }
        if (lineY1[l]<=lineY2[l]) {
          lineH[l]=lineY2[l]-lineY1[l];
          if (lineY2[l]>height) {
            lineY1[l]=height-lineH[l];
            lineY2[l]=height;
            lineMoveFLAGY[l]=1;
          }
          if (lineY1[l]<0) {
            lineY1[l]=0;
            lineY2[l]=0+lineH[l];
            lineMoveFLAGY[l]=0;
          }
          if (lineMoveFLAGY[l]==0) {
            lineY1[l]=lineY1[l]+lineVY[l];
            lineY2[l]=lineY2[l]+lineVY[l];
          }
          if (lineMoveFLAGY[l]==1) {
            lineY1[l]=lineY1[l]-lineVY[l];
            lineY2[l]=lineY2[l]-lineVY[l];
          }
        }
        if (lineY1[l]>lineY2[l]) {
          lineH[l]=lineY1[l]-lineY2[l];
          if (lineY1[l]>height) {
            lineY1[l]=height;
            lineY2[l]=height-lineH[l];
            lineMoveFLAGY[l]=1;
          }
          if (lineY2[l]<0) {
            lineY1[l]=0+lineH[l];
            lineY2[l]=0;
            lineMoveFLAGY[l]=0;
          }
          if (lineMoveFLAGY[l]==0) {
            lineY1[l]=lineY1[l]+lineVY[l];
            lineY2[l]=lineY2[l]+lineVY[l];
          }
          if (lineMoveFLAGY[l]==1) {
            lineY1[l]=lineY1[l]-lineVY[l];
            lineY2[l]=lineY2[l]-lineVY[l];
          }
        }
      }
    }
    line(lineX1[l], lineY1[l], lineX2[l], lineY2[l]);
  }
  strokeWeight(2);

  for (int r=0; r<500; r++) {
    if (rectX[r]==0 && rectY[r]==0) {
      continue;
    }
    if (rectFillFlag[r]==1) {
      fill(0, 255, 0, 80);
    } else {
      noFill();
    }
    stroke(0);
    if (rectMoveFlag[r]==1) {
      rectX2[r]=rectX[r]+rectW[r];
      if (rectX[r]<=rectX2[r]) {
        if (rectX2[r]>width) {
          rectX[r]=width-rectW[r];
          rectMoveFLAGX[r]=1;
        }
        if (rectX[r]<0) {
          rectX[r]=0;
          rectMoveFLAGX[r]=0;
        }
      } else if (rectX[r]>rectX2[r]) {
        if (rectX[r]>width) {
          rectX[r]=width;
          rectMoveFLAGX[r]=1;
        }
        if (rectX2[r]<0) {
          rectX[r]=0-rectW[r];
          rectMoveFLAGX[r]=0;
        }
      }
      if (rectMoveFLAGX[r]==0) rectX[r]=rectX[r]+rectVX[r];
      if (rectMoveFLAGX[r]==1) rectX[r]=rectX[r]-rectVX[r];
      rectY2[r]=rectY[r]+rectH[r];
      if (rectY[r]<=rectY2[r]) {
        if (rectY2[r]>height) {
          rectY[r]=height-rectH[r];
          rectMoveFLAGY[r]=1;
        }
        if (rectY[r]<0) {
          rectY[r]=0;
          rectMoveFLAGY[r]=0;
        }
      } else if (rectY[r]>rectY2[r]) {
        if (rectY[r]>height) {
          rectY[r]=height;
          rectMoveFLAGY[r]=1;
        }
        if (rectY2[r]<0) {
          rectY[r]=0-rectH[r];
          rectMoveFLAGY[r]=0;
        }
      }
      if (rectMoveFLAGY[r]==0) rectY[r]=rectY[r]+rectVY[r];
      if (rectMoveFLAGY[r]==1) rectY[r]=rectY[r]-rectVY[r];
    }
    rect(rectX[r], rectY[r], rectW[r], rectH[r]);
  }

  for (int v1=0; v1<500; v1++) {
    vertexCount=0;
    if (vertexFillFlag[v1]==1) {
      fill(0, 255, 255, 80);
    } else {
      noFill();
    }
    stroke(0);
    strokeWeight(2);
    beginShape();
    for (int v2=0; v2<500; v2++) {
      if (vertexX[v1][v2]==0 && vertexY[v1][v2]==0) {
        lastVertexFlag[v1]=1;
        if (lastVertexFlag[v1]==1) {
          vertex(vertexX[v1][0], vertexY[v1][0]);
          vertexCount++;
        }
        break;
      }
      vertex(vertexX[v1][v2], vertexY[v1][v2]);
      vertexCount++;
    }
    endShape();
    if (lastVertexFlag[v1]==1 && vertexMoveFlag[v1]==1) {
      MaxX[v1] = vertexX[v1][0];
      minX[v1] = vertexX[v1][0];
      MaxY[v1] = vertexY[v1][0];
      minY[v1] = vertexY[v1][0];
      for (int v=0; v<vertexCount-1; v++) {
        if (MaxX[v1]<vertexX[v1][v]) MaxX[v1]=vertexX[v1][v];
        if (minX[v1]>vertexX[v1][v]) minX[v1]=vertexX[v1][v];
        if (MaxY[v1]<vertexY[v1][v]) MaxY[v1]=vertexY[v1][v];
        if (minY[v1]>vertexY[v1][v]) minY[v1]=vertexY[v1][v];
      }
      for (int v=0; v<vertexCount-1; v++) {
        DistX[v1][v]=MaxX[v1]-vertexX[v1][v];
        DistY[v1][v]=MaxY[v1]-vertexY[v1][v];
        distX[v1][v]=vertexX[v1][v]-minX[v1];
        distY[v1][v]=vertexY[v1][v]-minY[v1];
      }
      if (MaxX[v1]>width) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexX[v1][v]=width-DistX[v1][v];
        }
        vertexMoveFLAGX[v1]=1;
      }
      if (minX[v1]<0) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexX[v1][v]=0+distX[v1][v];
        }
        vertexMoveFLAGX[v1]=0;
      }
      if (vertexMoveFLAGX[v1]==0) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexX[v1][v]=vertexX[v1][v]+vertexVX[v1];
        }
      }
      if (vertexMoveFLAGX[v1]==1) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexX[v1][v]=vertexX[v1][v]-vertexVX[v1];
        }
      }
      if (MaxY[v1]>height) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexY[v1][v]=height-DistY[v1][v];
        }
        vertexMoveFLAGY[v1]=1;
      }
      if (minY[v1]<0) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexY[v1][v]=0+distY[v1][v];
        }
        vertexMoveFLAGY[v1]=0;
      }
      if (vertexMoveFLAGY[v1]==0) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexY[v1][v]=vertexY[v1][v]+vertexVY[v1];
        }
      }
      if (vertexMoveFLAGY[v1]==1) {
        for (int v=0; v<vertexCount-1; v++) {
          vertexY[v1][v]=vertexY[v1][v]-vertexVY[v1];
        }
      }
    }
  }

  for (int e=0; e<500; e++) {
    if (ellipX[e]==0 && ellipY[e]==0) {
      continue;
    }
    if (ellipFillFlag[e]==1) {
      fill(255, 255, 0, 80);
    } else {
      noFill();
    }
    if (ellipMoveFlag[e]==1) {
      if (ellipR1[e]>=0) {
        if (ellipX[e]>width-ellipR1[e]) {
          ellipX[e]=width-ellipR1[e];
          ellipMoveFLAGX[e]=1;
        }
        if (ellipX[e]<0+ellipR1[e]) {
          ellipX[e]=0+ellipR1[e];
          ellipMoveFLAGX[e]=0;
        }
      }
      if (ellipR1[e]<0) {
        if (ellipX[e]>width+ellipR1[e]) {
          ellipX[e]=width+ellipR1[e];
          ellipMoveFLAGX[e]=1;
        }
        if (ellipX[e]<0-ellipR1[e]) {
          ellipX[e]=0-ellipR1[e];
          ellipMoveFLAGX[e]=0;
        }
      }
      if (ellipMoveFLAGX[e]==0) ellipX[e]=ellipX[e]+ellipVX[e];
      if (ellipMoveFLAGX[e]==1) ellipX[e]=ellipX[e]-ellipVX[e];
      if (ellipR2[e]>=0) {
        if (ellipY[e]>height-ellipR2[e]) {
          ellipY[e]=height-ellipR2[e];
          ellipMoveFLAGY[e]=1;
        }
        if (ellipY[e]<0+ellipR2[e]) {
          ellipY[e]=0+ellipR2[e];
          ellipMoveFLAGY[e]=0;
        }
      }
      if (ellipR2[e]<0) {
        if (ellipY[e]>height+ellipR2[e]) {
          ellipY[e]=height+ellipR2[e];
          ellipMoveFLAGY[e]=1;
        }
        if (ellipY[e]<0-ellipR2[e]) {
          ellipY[e]=0-ellipR2[e];
          ellipMoveFLAGY[e]=0;
        }
      }
      if (ellipMoveFLAGY[e]==0) ellipY[e]=ellipY[e]+ellipVY[e];
      if (ellipMoveFLAGY[e]==1) ellipY[e]=ellipY[e]-ellipVY[e];
    }
    stroke(0);
    ellipse(ellipX[e], ellipY[e], 2*ellipR1[e], 2*ellipR2[e]);
  }
}
