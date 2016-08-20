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
  pointX[0]=236.66666;
  pointY[0]=86.666664;
  pointX[1]=251.66666;
  pointY[1]=98.33333;
  pointX[2]=251.66666;
  pointY[2]=104.99999;
  pointX[3]=251.66666;
  pointY[3]=108.33333;
  pointX[4]=251.66666;
  pointY[4]=109.99999;
  pointX[5]=243.33333;
  pointY[5]=118.33333;
  pointX[6]=236.66666;
  pointY[6]=119.99999;
  pointX[7]=216.66666;
  pointY[7]=124.99999;
  pointX[8]=196.66666;
  pointY[8]=126.666664;
  pointX[9]=181.66666;
  pointY[9]=124.99999;
  pointX[10]=178.33333;
  pointY[10]=121.666664;
  pointX[11]=178.33333;
  pointY[11]=114.99999;
  pointX[12]=193.33333;
  pointY[12]=104.99999;
  pointX[13]=223.33333;
  pointY[13]=96.666664;
  pointX[14]=270.0;
  pointY[14]=96.666664;
  pointX[15]=316.66666;
  pointY[15]=108.33333;
  pointX[16]=340.0;
  pointY[16]=116.666664;
  pointX[17]=353.3333;
  pointY[17]=124.99999;
  pointX[18]=353.3333;
  pointY[18]=124.99999;
  pointX[19]=345.0;
  pointY[19]=130.0;
  pointX[20]=325.0;
  pointY[20]=133.33333;
  pointX[21]=303.3333;
  pointY[21]=136.66666;
  pointX[22]=296.66666;
  pointY[22]=136.66666;
  pointX[23]=300.0;
  pointY[23]=136.66666;
  pointX[24]=306.66666;
  pointY[24]=136.66666;
  pointX[25]=328.3333;
  pointY[25]=138.33333;
  pointX[26]=348.3333;
  pointY[26]=145.0;
  pointX[27]=353.3333;
  pointY[27]=151.66666;
  pointX[28]=353.3333;
  pointY[28]=156.66666;
  pointX[29]=343.3333;
  pointY[29]=161.66666;
  pointX[30]=323.3333;
  pointY[30]=166.66666;
  pointX[31]=301.66666;
  pointY[31]=166.66666;
  pointX[32]=295.0;
  pointY[32]=165.0;
  pointX[33]=298.3333;
  pointY[33]=158.33333;
  pointX[34]=305.0;
  pointY[34]=151.66666;
  pointX[35]=305.0;
  pointY[35]=151.66666;
  pointX[36]=355.0;
  pointY[36]=143.33333;
  pointX[37]=370.0;
  pointY[37]=148.33333;
  pointX[38]=375.0;
  pointY[38]=153.33333;
  pointX[39]=375.0;
  pointY[39]=153.33333;
  pointX[40]=373.3333;
  pointY[40]=166.66666;
  pointX[41]=351.66666;
  pointY[41]=168.33333;
  pointX[42]=313.3333;
  pointY[42]=168.33333;
  pointX[43]=248.33333;
  pointY[43]=161.66666;
  pointX[44]=234.99998;
  pointY[44]=158.33333;
  pointX[45]=233.33333;
  pointY[45]=156.66666;
  pointX[46]=233.33333;
  pointY[46]=151.66666;
  pointX[47]=241.66666;
  pointY[47]=146.66666;
  pointX[48]=253.33333;
  pointY[48]=143.33333;
  pointX[49]=260.0;
  pointY[49]=141.66666;
  pointX[50]=258.3333;
  pointY[50]=143.33333;
  lineX1[1]=311.66666;
  lineY1[1]=53.333332;
  lineX2[1]=404.99997;
  lineY2[1]=96.666664;
  lineX1[2]=436.66666;
  lineY1[2]=121.666664;
  lineX2[2]=453.3333;
  lineY2[2]=156.66666;
  lineX1[3]=453.3333;
  lineY1[3]=173.33333;
  lineX2[3]=431.66666;
  lineY2[3]=223.33333;
  lineX1[4]=408.3333;
  lineY1[4]=233.33333;
  lineX2[4]=361.66666;
  lineY2[4]=270.0;
  lineX1[5]=320.0;
  lineY1[5]=281.66666;
  lineX2[5]=254.99998;
  lineY2[5]=321.66666;
  lineX1[6]=223.33333;
  lineY1[6]=328.3333;
  lineX2[6]=191.66666;
  lineY2[6]=338.3333;
  lineX1[7]=181.66666;
  lineY1[7]=360.0;
  lineX2[7]=201.66666;
  lineY2[7]=403.3333;
  lineX1[8]=265.0;
  lineY1[8]=406.66666;
  lineX2[8]=300.0;
  lineY2[8]=401.66666;
  lineX1[9]=428.3333;
  lineY1[9]=363.3333;
  lineX2[9]=471.66666;
  lineY2[9]=323.3333;
  lineX1[10]=494.99997;
  lineY1[10]=301.66666;
  lineX2[10]=509.99997;
  lineY2[10]=291.66666;
  lineX1[11]=536.6666;
  lineY1[11]=258.3333;
  lineX2[11]=538.3333;
  lineY2[11]=253.33333;
  lineX1[12]=545.0;
  lineY1[12]=206.66666;
  lineX2[12]=545.0;
  lineY2[12]=206.66666;
  lineX1[13]=536.6666;
  lineY1[13]=185.0;
  lineX2[13]=513.3333;
  lineY2[13]=165.0;
  lineX1[14]=511.66666;
  lineY1[14]=158.33333;
  lineX2[14]=494.99997;
  lineY2[14]=143.33333;
  rectX[1]=650.0;
  rectY[1]=99.99999;
  rectW[1]=51.666626;
  rectH[1]=70.00001;
  rectX[2]=735.0;
  rectY[2]=209.99998;
  rectW[2]=-15.0;
  rectH[2]=20.0;
  rectX[3]=686.6666;
  rectY[3]=265.0;
  rectW[3]=-23.333313;
  rectH[3]=38.333313;
  rectX[4]=648.3333;
  rectY[4]=325.0;
  rectW[4]=-21.666687;
  rectH[4]=30.0;
  rectX[5]=601.6666;
  rectY[5]=375.0;
  rectW[5]=-21.666626;
  rectH[5]=-16.666687;
  rectX[6]=555.0;
  rectY[6]=343.3333;
  rectW[6]=-26.666687;
  rectH[6]=-21.666656;
  rectX[7]=491.66666;
  rectY[7]=263.3333;
  rectW[7]=-3.3333435;
  rectH[7]=-3.333313;
  rectX[8]=484.99997;
  rectY[8]=253.33333;
  rectW[8]=71.66666;
  rectH[8]=-86.66667;
  rectX[9]=575.0;
  rectY[9]=155.0;
  rectW[9]=6.666626;
  rectH[9]=-3.3333435;
  rectX[10]=631.6666;
  rectY[10]=124.99999;
  rectW[10]=3.333374;
  rectH[10]=0.0;
  rectX[11]=653.3333;
  rectY[11]=145.0;
  rectW[11]=16.666687;
  rectH[11]=25.0;
  rectX[12]=705.0;
  rectY[12]=211.66666;
  rectW[12]=21.666626;
  rectH[12]=45.0;
  rectX[13]=741.6666;
  rectY[13]=278.3333;
  rectW[13]=1.666687;
  rectH[13]=26.666687;
  rectX[14]=738.3333;
  rectY[14]=316.66666;
  rectW[14]=-16.666687;
  rectH[14]=16.666656;
  vertexX[0][0]=156.66666;
  vertexY[0][0]=175.0;
  vertexX[0][1]=290.0;
  vertexY[0][1]=315.0;
  vertexX[0][2]=321.66666;
  vertexY[0][2]=386.66666;
  vertexX[0][3]=330.0;
  vertexY[0][3]=423.3333;
  vertexX[0][4]=188.33333;
  vertexY[0][4]=399.99997;
  vertexX[0][5]=98.33333;
  vertexY[0][5]=348.3333;
  vertexX[0][6]=108.33333;
  vertexY[0][6]=316.66666;
  vertexX[0][7]=170.0;
  vertexY[0][7]=303.3333;
  vertexX[0][8]=270.0;
  vertexY[0][8]=293.3333;
  vertexX[0][9]=336.66666;
  vertexY[0][9]=254.99998;
  vertexX[0][10]=406.66666;
  vertexY[0][10]=204.99998;
  vertexX[0][11]=431.66666;
  vertexY[0][11]=266.66666;
  vertexX[1][0]=421.66666;
  vertexY[1][0]=350.0;
  vertexX[1][1]=421.66666;
  vertexY[1][1]=378.3333;
  vertexX[1][2]=443.3333;
  vertexY[1][2]=418.3333;
  vertexX[1][3]=498.3333;
  vertexY[1][3]=438.3333;
  vertexX[1][4]=608.3333;
  vertexY[1][4]=409.99997;
  vertexX[1][5]=583.3333;
  vertexY[1][5]=356.66666;
  vertexX[1][6]=553.3333;
  vertexY[1][6]=358.3333;
  vertexX[1][7]=526.6666;
  vertexY[1][7]=469.99997;
  vertexX[1][8]=436.66666;
  vertexY[1][8]=488.3333;
  ellipX[1]=469.99997;
  ellipY[1]=143.33333;
  ellipR1[1]=11.666687;
  ellipR2[1]=13.333328;
  ellipX[2]=538.3333;
  ellipY[2]=201.66666;
  ellipR1[2]=33.333313;
  ellipR2[2]=75.0;
  ellipX[3]=581.6666;
  ellipY[3]=283.3333;
  ellipR1[3]=10.0;
  ellipR2[3]=18.333344;
  ellipX[4]=615.0;
  ellipY[4]=306.66666;
  ellipR1[4]=8.333313;
  ellipR2[4]=13.3333435;
  ellipX[5]=643.3333;
  ellipY[5]=373.3333;
  ellipR1[5]=-3.333313;
  ellipR2[5]=21.666656;
  ellipX[6]=551.6666;
  ellipY[6]=366.66666;
  ellipR1[6]=-13.333313;
  ellipR2[6]=-6.6666565;
  ellipX[7]=449.99997;
  ellipY[7]=280.0;
  ellipR1[7]=-3.333313;
  ellipR2[7]=-5.0;
  ellipX[8]=388.3333;
  ellipY[8]=234.99998;
  ellipR1[8]=-11.6666565;
  ellipR2[8]=-3.3333282;
  ellipX[9]=338.3333;
  ellipY[9]=241.66666;
  ellipR1[9]=-21.666656;
  ellipR2[9]=70.0;
  ellipX[10]=318.3333;
  ellipY[10]=341.66666;
  ellipR1[10]=26.666687;
  ellipR2[10]=48.333313;
  ellipX[11]=431.66666;
  ellipY[11]=378.3333;
  ellipR1[11]=43.333313;
  ellipR2[11]=-31.666656;
  ellipX[12]=518.3333;
  ellipY[12]=296.66666;
  ellipR1[12]=36.666687;
  ellipR2[12]=-41.66667;
  ellipX[13]=601.6666;
  ellipY[13]=216.66666;
  ellipR1[13]=8.333374;
  ellipR2[13]=-5.0;
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
  vertexFillFlag[0]=1;
  ellipFillFlag[1]=1;
  lineStrokeFlag[2]=1;
  lineStrokeFlag[3]=1;
  lineStrokeFlag[4]=1;
  lineStrokeFlag[5]=1;
  lineStrokeFlag[6]=1;
  rectFillFlag[7]=1;
  ellipFillFlag[7]=1;
  rectFillFlag[8]=1;
  ellipFillFlag[8]=1;
  ellipFillFlag[9]=1;
  lineStrokeFlag[10]=1;
  ellipFillFlag[10]=1;
  rectFillFlag[4]=1;
  ellipFillFlag[4]=1;
  rectFillFlag[5]=1;
  ellipFillFlag[5]=1;
  rectFillFlag[6]=1;
  ellipFillFlag[6]=1;
  lineStrokeFlag[10]=1;
  pointMoveFlag[3]=1;
  pointMoveFlag[4]=1;
  pointMoveFlag[5]=1;
  pointMoveFlag[6]=1;
  pointMoveFlag[7]=1;
  pointMoveFlag[8]=1;
  pointMoveFlag[9]=1;
  pointMoveFlag[10]=1;
  pointMoveFlag[11]=1;
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
  pointMoveFlag[43]=1;
  pointMoveFlag[44]=1;
  pointMoveFlag[45]=1;
  pointMoveFlag[46]=1;
  pointMoveFlag[47]=1;
  pointMoveFlag[48]=1;
  pointMoveFlag[49]=1;
  pointMoveFlag[50]=1;
  vertexMoveFlag[1]=1;
  ellipMoveFlag[1]=1;
  lineMoveFlag[2]=1;
  ellipMoveFlag[2]=1;
  lineMoveFlag[3]=1;
  rectMoveFlag[3]=1;
  ellipMoveFlag[3]=1;
  lineMoveFlag[4]=1;
  rectMoveFlag[4]=1;
  ellipMoveFlag[4]=1;
  lineMoveFlag[5]=1;
  rectMoveFlag[5]=1;
  ellipMoveFlag[5]=1;
  lineMoveFlag[6]=1;
  rectMoveFlag[6]=1;
  ellipMoveFlag[6]=1;
  lineMoveFlag[7]=1;
  rectMoveFlag[7]=1;
  ellipMoveFlag[7]=1;
  rectMoveFlag[8]=1;
  ellipMoveFlag[8]=1;
  lineMoveFlag[9]=1;
  rectMoveFlag[9]=1;
  ellipMoveFlag[9]=1;
  lineMoveFlag[10]=1;
  rectMoveFlag[10]=1;
  ellipMoveFlag[10]=1;
  lineMoveFlag[11]=1;
  rectMoveFlag[11]=1;
  ellipMoveFlag[11]=1;
  lineMoveFlag[12]=1;
  rectMoveFlag[12]=1;
  ellipMoveFlag[12]=1;
  lineMoveFlag[13]=1;
  ellipMoveFlag[13]=1;
  lineMoveFlag[14]=1;
  pointMoveFlag[3]=1;
  pointMoveFlag[6]=1;
  pointMoveFlag[10]=1;
  pointMoveFlag[11]=1;
  pointMoveFlag[24]=1;
  pointMoveFlag[31]=1;
  pointMoveFlag[32]=1;
  pointMoveFlag[49]=1;
  pointStrokeFlag[6]=1;
  pointStrokeFlag[12]=1;
  vertexFillFlag[0]=1;
  lineStrokeFlag[4]=1;
  ellipFillFlag[11]=1;
  pointX[51]=211.66666;
  pointY[51]=101.666664;
  pointX[52]=211.66666;
  pointY[52]=103.33333;
  pointX[53]=211.66666;
  pointY[53]=104.99999;
  pointX[54]=213.33333;
  pointY[54]=108.33333;
  pointX[55]=214.99998;
  pointY[55]=118.33333;
  pointX[56]=226.66666;
  pointY[56]=151.66666;
  pointX[57]=238.33333;
  pointY[57]=176.66666;
  pointX[58]=253.33333;
  pointY[58]=201.66666;
  pointX[59]=271.66666;
  pointY[59]=233.33333;
  pointX[60]=270.0;
  pointY[60]=239.99998;
  pointX[61]=270.0;
  pointY[61]=243.33333;
  pointX[62]=268.3333;
  pointY[62]=246.66666;
  pointX[63]=266.66666;
  pointY[63]=251.66666;
  pointX[64]=265.0;
  pointY[64]=253.33333;
  pointX[65]=265.0;
  pointY[65]=254.99998;
  pointX[66]=246.66666;
  pointY[66]=273.3333;
  pointX[67]=241.66666;
  pointY[67]=276.66666;
  pointX[68]=233.33333;
  pointY[68]=281.66666;
  pointX[69]=229.99998;
  pointY[69]=283.3333;
  pointX[70]=223.33333;
  pointY[70]=285.0;
  pointX[71]=219.99998;
  pointY[71]=285.0;
  lineX1[16]=301.66666;
  lineY1[16]=93.33333;
  lineX2[16]=384.99997;
  lineY2[16]=118.33333;
  lineX1[17]=476.66666;
  lineY1[17]=151.66666;
  lineX2[17]=508.3333;
  lineY2[17]=175.0;
  lineX1[18]=521.6666;
  lineY1[18]=185.0;
  lineX2[18]=541.6666;
  lineY2[18]=216.66666;
  lineX1[19]=543.3333;
  lineY1[19]=224.99998;
  lineX2[19]=504.99997;
  lineY2[19]=270.0;
  lineX1[20]=486.66666;
  lineY1[20]=271.66666;
  lineX2[20]=451.66666;
  lineY2[20]=280.0;
  lineX1[21]=418.3333;
  lineY1[21]=254.99998;
  lineX2[21]=383.3333;
  lineY2[21]=236.66666;
  rectX[16]=368.3333;
  rectY[16]=183.33333;
  rectW[16]=13.3333435;
  rectH[16]=16.666656;
  rectX[17]=426.66666;
  rectY[17]=238.33333;
  rectW[17]=94.99997;
  rectH[17]=84.999985;
  rectX[18]=543.3333;
  rectY[18]=343.3333;
  rectW[18]=11.666687;
  rectH[18]=26.666687;
  rectX[19]=566.6666;
  rectY[19]=383.3333;
  rectW[19]=18.333374;
  rectH[19]=45.0;
  rectX[20]=585.0;
  rectY[20]=433.3333;
  rectW[20]=-86.66669;
  rectH[20]=45.0;
  rectX[21]=456.66666;
  rectY[21]=464.99997;
  rectW[21]=-20.0;
  rectH[21]=-18.333313;
  rectX[22]=353.3333;
  rectY[22]=381.66666;
  rectW[22]=-36.666656;
  rectH[22]=-26.666656;
  rectX[23]=286.66666;
  rectY[23]=331.66666;
  rectW[23]=-5.0;
  rectH[23]=-3.3333435;
  vertexX[2][0]=515.0;
  vertexY[2][0]=199.99998;
  vertexX[2][1]=566.6666;
  vertexY[2][1]=221.66666;
  vertexX[2][2]=578.3333;
  vertexY[2][2]=258.3333;
  vertexX[2][3]=484.99997;
  vertexY[2][3]=301.66666;
  vertexX[2][4]=409.99997;
  vertexY[2][4]=286.66666;
  vertexX[2][5]=409.99997;
  vertexY[2][5]=258.3333;
  vertexX[2][6]=531.6666;
  vertexY[2][6]=268.3333;
  vertexX[2][7]=586.6666;
  vertexY[2][7]=295.0;
  vertexX[2][8]=638.3333;
  vertexY[2][8]=340.0;
  ellipX[16]=340.0;
  ellipY[16]=204.99998;
  ellipR1[16]=64.99997;
  ellipR2[16]=21.666672;
  ellipX[17]=439.99997;
  ellipY[17]=244.99998;
  ellipR1[17]=51.666687;
  ellipR2[17]=51.66667;
  ellipX[18]=550.0;
  ellipY[18]=333.3333;
  ellipR1[18]=26.666626;
  ellipR2[18]=30.0;
  ellipX[19]=581.6666;
  ellipY[19]=366.66666;
  ellipR1[19]=13.333374;
  ellipR2[19]=20.0;
  ellipX[20]=615.0;
  ellipY[20]=424.99997;
  ellipR1[20]=-41.666687;
  ellipR2[20]=6.666687;
  ellipX[21]=345.0;
  ellipY[21]=363.3333;
  ellipR1[21]=-10.0;
  ellipR2[21]=-6.6666565;
  ellipX[22]=305.0;
  ellipY[22]=338.3333;
  ellipR1[22]=-13.3333435;
  ellipR2[22]=-11.6666565;
  ellipX[23]=208.33333;
  ellipY[23]=260.0;
  ellipR1[23]=-13.3333435;
  ellipR2[23]=-10.000015;
  ellipX[24]=181.66666;
  ellipY[24]=201.66666;
  ellipR1[24]=16.666672;
  ellipR2[24]=5.0;
  ellipX[25]=275.0;
  ellipY[25]=201.66666;
  ellipR1[25]=58.333313;
  ellipR2[25]=13.333328;
  ellipX[26]=381.66666;
  ellipY[26]=236.66666;
  ellipR1[26]=28.333313;
  ellipR2[26]=28.333344;
  ellipX[27]=414.99997;
  ellipY[27]=285.0;
  ellipR1[27]=-1.6666565;
  ellipR2[27]=31.666656;
  pointStrokeFlag[0]=1;
  pointStrokeFlag[1]=1;
  pointStrokeFlag[2]=1;
  pointStrokeFlag[8]=1;
  pointStrokeFlag[12]=1;
  pointStrokeFlag[13]=1;
  pointStrokeFlag[14]=1;
  pointStrokeFlag[16]=1;
  pointStrokeFlag[22]=1;
  pointStrokeFlag[27]=1;
  pointStrokeFlag[30]=1;
  pointStrokeFlag[31]=1;
  pointStrokeFlag[32]=1;
  pointStrokeFlag[33]=1;
  pointStrokeFlag[35]=1;
  pointStrokeFlag[38]=1;
  pointStrokeFlag[39]=1;
  pointStrokeFlag[40]=1;
  pointStrokeFlag[43]=1;
  pointStrokeFlag[45]=1;
  pointStrokeFlag[46]=1;
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
  vertexFillFlag[0]=1;
  vertexFillFlag[1]=1;
  vertexFillFlag[2]=1;
  ellipFillFlag[2]=1;
  ellipFillFlag[5]=1;
  lineStrokeFlag[6]=1;
  rectFillFlag[7]=1;
  lineStrokeFlag[8]=1;
  rectFillFlag[8]=1;
  ellipFillFlag[8]=1;
  lineStrokeFlag[9]=1;
  ellipFillFlag[9]=1;
  ellipFillFlag[10]=1;
  lineStrokeFlag[11]=1;
  lineStrokeFlag[12]=1;
  ellipFillFlag[12]=1;
  lineStrokeFlag[16]=1;
  rectFillFlag[16]=1;
  ellipFillFlag[16]=1;
  lineStrokeFlag[17]=1;
  rectFillFlag[17]=1;
  ellipFillFlag[17]=1;
  lineStrokeFlag[18]=1;
  rectFillFlag[18]=1;
  ellipFillFlag[18]=1;
  lineStrokeFlag[19]=1;
  rectFillFlag[19]=1;
  ellipFillFlag[19]=1;
  lineStrokeFlag[20]=1;
  lineStrokeFlag[21]=1;
  ellipFillFlag[21]=1;
  rectFillFlag[22]=1;
  ellipFillFlag[22]=1;
  rectFillFlag[23]=1;
  ellipFillFlag[23]=1;
  ellipFillFlag[24]=1;
  ellipFillFlag[25]=1;
  ellipFillFlag[26]=1;
  ellipFillFlag[27]=1;
  pointStrokeFlag[6]=1;
  pointStrokeFlag[8]=1;
  pointStrokeFlag[10]=1;
  pointStrokeFlag[11]=1;
  pointStrokeFlag[16]=1;
  pointStrokeFlag[26]=1;
  pointStrokeFlag[27]=1;
  pointStrokeFlag[28]=1;
  pointStrokeFlag[30]=1;
  pointStrokeFlag[31]=1;
  pointStrokeFlag[33]=1;
  pointStrokeFlag[35]=1;
  pointStrokeFlag[36]=1;
  pointStrokeFlag[38]=1;
  pointStrokeFlag[39]=1;
  pointStrokeFlag[40]=1;
  pointStrokeFlag[41]=1;
  pointStrokeFlag[42]=1;
  pointStrokeFlag[43]=1;
  pointStrokeFlag[46]=1;
  rectFillFlag[2]=1;
  vertexFillFlag[2]=1;
  ellipFillFlag[2]=1;
  ellipFillFlag[3]=1;
  rectFillFlag[6]=1;
  ellipFillFlag[8]=1;
  lineStrokeFlag[9]=1;
  rectFillFlag[9]=1;
  ellipFillFlag[10]=1;
  ellipFillFlag[11]=1;
  ellipFillFlag[12]=1;
  rectFillFlag[13]=1;
  ellipFillFlag[13]=1;
  rectFillFlag[14]=1;
  rectFillFlag[16]=1;
  ellipFillFlag[16]=1;
  lineStrokeFlag[17]=1;
  rectFillFlag[17]=1;
  ellipFillFlag[17]=1;
  lineStrokeFlag[18]=1;
  rectFillFlag[18]=1;
  ellipFillFlag[18]=1;
  lineStrokeFlag[19]=1;
  rectFillFlag[19]=1;
  ellipFillFlag[19]=1;
  lineStrokeFlag[20]=1;
  rectFillFlag[20]=1;
  ellipFillFlag[20]=1;
  lineStrokeFlag[21]=1;
  rectFillFlag[21]=1;
  ellipFillFlag[21]=1;
  rectFillFlag[22]=1;
  ellipFillFlag[22]=1;
  rectFillFlag[23]=1;
  ellipFillFlag[26]=1;
  ellipFillFlag[27]=1;
  pointMoveFlag[4]=1;
  pointMoveFlag[5]=1;
  pointMoveFlag[7]=1;
  pointMoveFlag[8]=1;
  pointMoveFlag[9]=1;
  pointMoveFlag[10]=1;
  pointMoveFlag[11]=1;
  pointMoveFlag[15]=1;
  pointMoveFlag[16]=1;
  pointMoveFlag[18]=1;
  pointMoveFlag[19]=1;
  pointMoveFlag[20]=1;
  pointMoveFlag[21]=1;
  pointMoveFlag[22]=1;
  pointMoveFlag[23]=1;
  pointMoveFlag[25]=1;
  pointMoveFlag[26]=1;
  pointMoveFlag[27]=1;
  pointMoveFlag[28]=1;
  pointMoveFlag[29]=1;
  pointMoveFlag[30]=1;
  pointMoveFlag[31]=1;
  pointMoveFlag[33]=1;
  pointMoveFlag[35]=1;
  pointMoveFlag[36]=1;
  pointMoveFlag[37]=1;
  pointMoveFlag[39]=1;
  pointMoveFlag[40]=1;
  pointMoveFlag[41]=1;
  pointMoveFlag[43]=1;
  pointMoveFlag[44]=1;
  pointMoveFlag[46]=1;
  pointMoveFlag[47]=1;
  pointMoveFlag[49]=1;
  pointMoveFlag[50]=1;
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
  lineMoveFlag[2]=1;
  rectMoveFlag[2]=1;
  vertexMoveFlag[2]=1;
  ellipMoveFlag[2]=1;
  lineMoveFlag[3]=1;
  rectMoveFlag[3]=1;
  ellipMoveFlag[3]=1;
  lineMoveFlag[4]=1;
  rectMoveFlag[4]=1;
  ellipMoveFlag[4]=1;
  lineMoveFlag[5]=1;
  rectMoveFlag[5]=1;
  ellipMoveFlag[5]=1;
  ellipMoveFlag[6]=1;
  lineMoveFlag[7]=1;
  ellipMoveFlag[7]=1;
  lineMoveFlag[8]=1;
  ellipMoveFlag[8]=1;
  lineMoveFlag[9]=1;
  rectMoveFlag[9]=1;
  lineMoveFlag[10]=1;
  rectMoveFlag[10]=1;
  ellipMoveFlag[10]=1;
  rectMoveFlag[11]=1;
  ellipMoveFlag[11]=1;
  rectMoveFlag[12]=1;
  ellipMoveFlag[12]=1;
  lineMoveFlag[13]=1;
  rectMoveFlag[13]=1;
  ellipMoveFlag[13]=1;
  rectMoveFlag[14]=1;
  rectMoveFlag[16]=1;
  ellipMoveFlag[16]=1;
  lineMoveFlag[17]=1;
  rectMoveFlag[17]=1;
  ellipMoveFlag[17]=1;
  lineMoveFlag[18]=1;
  rectMoveFlag[18]=1;
  ellipMoveFlag[18]=1;
  lineMoveFlag[19]=1;
  rectMoveFlag[19]=1;
  ellipMoveFlag[19]=1;
  lineMoveFlag[20]=1;
  rectMoveFlag[20]=1;
  ellipMoveFlag[20]=1;
  lineMoveFlag[21]=1;
  rectMoveFlag[21]=1;
  ellipMoveFlag[21]=1;
  rectMoveFlag[22]=1;
  ellipMoveFlag[22]=1;
  rectMoveFlag[23]=1;
  ellipMoveFlag[23]=1;
  ellipMoveFlag[24]=1;
  ellipMoveFlag[25]=1;
  ellipMoveFlag[26]=1;
  ellipMoveFlag[27]=1;
  pointMoveFlag[5]=1;
  pointMoveFlag[7]=1;
  pointMoveFlag[9]=1;
  pointMoveFlag[16]=1;
  pointMoveFlag[17]=1;
  pointMoveFlag[22]=1;
  pointMoveFlag[23]=1;
  pointMoveFlag[27]=1;
  pointMoveFlag[31]=1;
  pointMoveFlag[32]=1;
  pointMoveFlag[34]=1;
  pointMoveFlag[35]=1;
  pointMoveFlag[37]=1;
  pointMoveFlag[41]=1;
  pointMoveFlag[43]=1;
  pointMoveFlag[45]=1;
  pointMoveFlag[47]=1;
  pointMoveFlag[48]=1;
  pointMoveFlag[56]=1;
  pointMoveFlag[57]=1;
  pointMoveFlag[58]=1;
  pointMoveFlag[60]=1;
  pointMoveFlag[64]=1;
  pointMoveFlag[68]=1;
  vertexMoveFlag[0]=1;
  ellipMoveFlag[1]=1;
  lineMoveFlag[3]=1;
  rectMoveFlag[3]=1;
  lineMoveFlag[5]=1;
  rectMoveFlag[5]=1;
  lineMoveFlag[6]=1;
  rectMoveFlag[6]=1;
  rectMoveFlag[8]=1;
  rectMoveFlag[9]=1;
  ellipMoveFlag[9]=1;
  rectMoveFlag[12]=1;
  rectMoveFlag[13]=1;
  ellipMoveFlag[16]=1;
  lineMoveFlag[17]=1;
  ellipMoveFlag[24]=1;
  ellipMoveFlag[25]=1;
  ellipMoveFlag[27]=1;
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
