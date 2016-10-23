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
  pointX[0]=58.333332;
  pointY[0]=33.333332;
  pointX[1]=73.33333;
  pointY[1]=40.0;
  pointX[2]=81.666664;
  pointY[2]=43.333332;
  pointX[3]=106.666664;
  pointY[3]=51.666664;
  pointX[4]=136.66666;
  pointY[4]=63.333332;
  pointX[5]=166.66666;
  pointY[5]=76.666664;
  pointX[6]=194.99998;
  pointY[6]=88.33333;
  pointX[7]=238.33333;
  pointY[7]=104.99999;
  pointX[8]=251.66666;
  pointY[8]=111.666664;
  pointX[9]=253.33333;
  pointY[9]=113.33333;
  pointX[10]=254.99998;
  pointY[10]=113.33333;
  pointX[11]=256.66666;
  pointY[11]=114.99999;
  pointX[12]=256.66666;
  pointY[12]=114.99999;
  pointX[13]=263.3333;
  pointY[13]=119.99999;
  pointX[14]=275.0;
  pointY[14]=126.666664;
  pointX[15]=278.3333;
  pointY[15]=126.666664;
  pointX[16]=288.3333;
  pointY[16]=131.66666;
  pointX[17]=293.3333;
  pointY[17]=135.0;
  pointX[18]=296.66666;
  pointY[18]=138.33333;
  pointX[19]=300.0;
  pointY[19]=138.33333;
  pointX[20]=301.66666;
  pointY[20]=140.0;
  pointX[21]=305.0;
  pointY[21]=141.66666;
  pointX[22]=306.66666;
  pointY[22]=145.0;
  pointX[23]=310.0;
  pointY[23]=148.33333;
  pointX[24]=310.0;
  pointY[24]=148.33333;
  pointX[25]=321.66666;
  pointY[25]=155.0;
  pointX[26]=345.0;
  pointY[26]=171.66666;
  pointX[27]=358.3333;
  pointY[27]=181.66666;
  pointX[28]=370.0;
  pointY[28]=190.0;
  pointX[29]=375.0;
  pointY[29]=194.99998;
  pointX[30]=391.66666;
  pointY[30]=204.99998;
  pointX[31]=394.99997;
  pointY[31]=206.66666;
  pointX[32]=398.3333;
  pointY[32]=209.99998;
  pointX[33]=401.66666;
  pointY[33]=216.66666;
  pointX[34]=404.99997;
  pointY[34]=218.33333;
  pointX[35]=404.99997;
  pointY[35]=219.99998;
  pointX[36]=404.99997;
  pointY[36]=219.99998;
  pointX[37]=406.66666;
  pointY[37]=223.33333;
  pointX[38]=406.66666;
  pointY[38]=223.33333;
  pointX[39]=406.66666;
  pointY[39]=224.99998;
  pointX[40]=408.3333;
  pointY[40]=224.99998;
  pointX[41]=408.3333;
  pointY[41]=226.66666;
  pointX[42]=408.3333;
  pointY[42]=229.99998;
  pointX[43]=408.3333;
  pointY[43]=229.99998;
  pointX[44]=408.3333;
  pointY[44]=234.99998;
  pointX[45]=406.66666;
  pointY[45]=238.33333;
  pointX[46]=403.3333;
  pointY[46]=241.66666;
  pointX[47]=398.3333;
  pointY[47]=246.66666;
  pointX[48]=388.3333;
  pointY[48]=253.33333;
  pointX[49]=368.3333;
  pointY[49]=268.3333;
  pointX[50]=363.3333;
  pointY[50]=273.3333;
  pointX[51]=348.3333;
  pointY[51]=281.66666;
  pointX[52]=331.66666;
  pointY[52]=290.0;
  pointX[53]=295.0;
  pointY[53]=303.3333;
  pointX[54]=278.3333;
  pointY[54]=305.0;
  pointX[55]=260.0;
  pointY[55]=305.0;
  pointX[56]=246.66666;
  pointY[56]=301.66666;
  pointX[57]=233.33333;
  pointY[57]=298.3333;
  pointX[58]=223.33333;
  pointY[58]=293.3333;
  pointX[59]=218.33333;
  pointY[59]=290.0;
  pointX[60]=213.33333;
  pointY[60]=276.66666;
  pointX[61]=209.99998;
  pointY[61]=261.66666;
  pointX[62]=209.99998;
  pointY[62]=241.66666;
  pointX[63]=226.66666;
  pointY[63]=198.33333;
  pointX[64]=241.66666;
  pointY[64]=176.66666;
  pointX[65]=263.3333;
  pointY[65]=160.0;
  pointX[66]=273.3333;
  pointY[66]=155.0;
  pointX[67]=296.66666;
  pointY[67]=153.33333;
  pointX[68]=315.0;
  pointY[68]=153.33333;
  pointX[69]=330.0;
  pointY[69]=156.66666;
  pointX[70]=336.66666;
  pointY[70]=160.0;
  pointX[71]=346.66666;
  pointY[71]=168.33333;
  pointX[72]=355.0;
  pointY[72]=180.0;
  pointX[73]=356.66666;
  pointY[73]=204.99998;
  pointX[74]=355.0;
  pointY[74]=228.33333;
  pointX[75]=345.0;
  pointY[75]=249.99998;
  pointX[76]=345.0;
  pointY[76]=249.99998;
  pointX[77]=315.0;
  pointY[77]=286.66666;
  pointX[78]=295.0;
  pointY[78]=298.3333;
  pointX[79]=295.0;
  pointY[79]=298.3333;
  pointX[80]=271.66666;
  pointY[80]=306.66666;
  pointX[81]=268.3333;
  pointY[81]=308.3333;
  pointX[82]=271.66666;
  pointY[82]=308.3333;
  pointX[83]=275.0;
  pointY[83]=308.3333;
  pointX[84]=295.0;
  pointY[84]=303.3333;
  pointX[85]=315.0;
  pointY[85]=303.3333;
  pointX[86]=326.66666;
  pointY[86]=301.66666;
  pointX[87]=348.3333;
  pointY[87]=296.66666;
  pointX[88]=380.0;
  pointY[88]=283.3333;
  pointX[89]=416.66666;
  pointY[89]=271.66666;
  pointX[90]=416.66666;
  pointY[90]=271.66666;
  pointX[91]=459.99997;
  pointY[91]=233.33333;
  pointX[92]=459.99997;
  pointY[92]=233.33333;
  pointX[93]=466.66666;
  pointY[93]=190.0;
  pointX[94]=456.66666;
  pointY[94]=170.0;
  pointX[95]=456.66666;
  pointY[95]=170.0;
  pointX[96]=433.3333;
  pointY[96]=146.66666;
  pointX[97]=433.3333;
  pointY[97]=146.66666;
  pointX[98]=433.3333;
  pointY[98]=146.66666;
  pointX[99]=433.3333;
  pointY[99]=146.66666;
  pointX[100]=414.99997;
  pointY[100]=148.33333;
  pointX[101]=414.99997;
  pointY[101]=161.66666;
  pointX[102]=419.99997;
  pointY[102]=193.33333;
  pointX[103]=419.99997;
  pointY[103]=193.33333;
  pointX[104]=451.66666;
  pointY[104]=249.99998;
  pointX[105]=451.66666;
  pointY[105]=249.99998;
  pointX[106]=536.6666;
  pointY[106]=325.0;
  pointX[107]=548.3333;
  pointY[107]=338.3333;
