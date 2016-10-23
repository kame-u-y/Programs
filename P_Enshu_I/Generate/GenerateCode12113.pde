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
  pointX[0]=391.66666;
  pointY[0]=156.66666;
  pointX[1]=441.66666;
  pointY[1]=186.66666;
  pointX[2]=441.66666;
  pointY[2]=186.66666;
  pointX[3]=471.66666;
  pointY[3]=214.99998;
  pointX[4]=469.99997;
  pointY[4]=219.99998;
  pointX[5]=414.99997;
  pointY[5]=223.33333;
  pointX[6]=366.66666;
  pointY[6]=216.66666;
  pointX[7]=350.0;
  pointY[7]=213.33333;
  pointX[8]=328.3333;
  pointY[8]=206.66666;
  pointX[9]=325.0;
  pointY[9]=194.99998;
  pointX[10]=328.3333;
  pointY[10]=188.33333;
  pointX[11]=328.3333;
  pointY[11]=188.33333;
  pointX[12]=351.66666;
  pointY[12]=180.0;
  pointX[13]=356.66666;
  pointY[13]=180.0;
  pointX[14]=356.66666;
  pointY[14]=181.66666;
  pointX[15]=333.3333;
  pointY[15]=196.66666;
  pointX[16]=326.66666;
  pointY[16]=198.33333;
  pointX[17]=323.3333;
  pointY[17]=198.33333;
  pointX[18]=331.66666;
  pointY[18]=185.0;
  pointX[19]=340.0;
  pointY[19]=180.0;
  pointX[20]=345.0;
  pointY[20]=178.33333;
  pointX[21]=351.66666;
  pointY[21]=176.66666;
  pointX[22]=348.3333;
  pointY[22]=181.66666;
  pointX[23]=335.0;
  pointY[23]=185.0;
  pointX[24]=313.3333;
  pointY[24]=186.66666;
  pointX[25]=283.3333;
  pointY[25]=178.33333;
  pointX[26]=260.0;
  pointY[26]=161.66666;
  pointX[27]=251.66666;
  pointY[27]=138.33333;
  pointX[28]=251.66666;
  pointY[28]=126.666664;
  pointX[29]=253.33333;
  pointY[29]=118.33333;
  pointX[30]=253.33333;
  pointY[30]=116.666664;
  pointX[31]=253.33333;
  pointY[31]=121.666664;
  pointX[32]=248.33333;
  pointY[32]=126.666664;
  pointX[33]=234.99998;
  pointY[33]=131.66666;
  pointX[34]=228.33333;
  pointY[34]=131.66666;
  lineX1[0]=-0.6888766;
  lineY1[0]=2.4499326;
  lineX2[0]=76.666664;
  lineY2[0]=48.333332;
  lineX1[19]=313.5442;
  lineY1[19]=203.72495;
  lineX2[19]=265.0;
  lineY2[19]=244.99998;
  ellipX[0]=326.66666;
  ellipY[0]=298.3333;
  ellipR1[0]=121.66666;
  ellipR2[0]=113.33334;
  ellipX[1]=358.3333;
  ellipY[1]=330.0;
  ellipR1[1]=70.0;
  ellipR2[1]=86.66666;
  ellipX[2]=499.99997;
  ellipY[2]=330.0;
  ellipR1[2]=100.00003;
  ellipR2[2]=68.33331;
  ellipX[3]=603.3333;
  ellipY[3]=393.3333;
  ellipR1[3]=-168.33334;
  ellipR2[3]=38.333344;
  ellipX[4]=376.66666;
  ellipY[4]=446.66666;
  ellipR1[4]=-91.66666;
  ellipR2[4]=-43.333344;
  ellipX[5]=196.66666;
  ellipY[5]=301.66666;
  ellipR1[5]=-13.333328;
  ellipR2[5]=-6.6666565;
  ellipX[6]=140.0;
  ellipY[6]=258.3333;
  ellipR1[6]=-6.6666718;
  ellipR2[6]=-3.3333282;
  x[1]=399.7136;
  y[1]=105.6928;
  w[1]=25.286377;
  h[1]=37.640526;
  x[2]=667.81665;
  y[2]=295.98694;
  w[2]=-436.15;
  h[2]=-210.98694;
  x[3]=565.81433;
  y[3]=449.60596;
  w[3]=-324.14767;
  h[3]=-207.9393;
  x[4]=191.57791;
  y[4]=296.20346;
  w[4]=35.088745;
  h[4]=83.79654;
  x[5]=252.8556;
  y[5]=405.51974;
  w[5]=-1.1889496;
  h[5]=21.146912;
  x[6]=283.56165;
  y[6]=456.87314;
  w[6]=93.10501;
  h[6]=43.12683;
  x[7]=396.96677;
  y[7]=493.4934;
  w[7]=88.0332;
  h[7]=24.839905;
  x[8]=547.0746;
  y[8]=510.58902;
  w[8]=12.925415;
  h[8]=14.41098;
  x[9]=605.45074;
  y[9]=541.1802;
  w[9]=66.21588;
  h[9]=22.153137;
  x[10]=695.2998;
  y[10]=567.60767;
  w[10]=14.700195;
  h[10]=10.725647;
  strokeFlag[0]=1;
  strokeFlag[1]=1;
  strokeFlag[2]=1;
  strokeFlag[3]=1;
  strokeFlag[4]=1;
  strokeFlag[5]=1;
  strokeFlag[6]=1;
  strokeFlag[7]=1;
  strokeFlag[8]=1;
  strokeFlag[9]=1;
  strokeFlag[10]=1;
  strokeFlag[11]=1;
  strokeFlag[12]=1;
  strokeFlag[13]=1;
  strokeFlag[14]=1;
  strokeFlag[15]=1;
  strokeFlag[16]=1;
  strokeFlag[17]=1;
  strokeFlag[18]=1;
  strokeFlag[19]=1;
  strokeFlag[20]=1;
  strokeFlag[21]=1;
  strokeFlag[22]=1;
  strokeFlag[23]=1;
  strokeFlag[24]=1;
  strokeFlag[25]=1;
  strokeFlag[26]=1;
  strokeFlag[27]=1;
  strokeFlag[28]=1;
  strokeFlag[29]=1;
  strokeFlag[30]=1;
  strokeFlag[31]=1;
  strokeFlag[32]=1;
  strokeFlag[33]=1;
  strokeFlag[34]=1;
  lineStrokeFlag[0]=1;
  lineStrokeFlag[1]=1;
  lineStrokeFlag[3]=1;
  lineStrokeFlag[4]=1;
  lineStrokeFlag[6]=1;
  lineStrokeFlag[7]=1;
  lineStrokeFlag[8]=1;
  lineStrokeFlag[9]=1;
  lineStrokeFlag[10]=1;
  lineStrokeFlag[14]=1;
  lineStrokeFlag[16]=1;
  lineStrokeFlag[17]=1;
  lineStrokeFlag[18]=1;
  lineStrokeFlag[19]=1;
  lineStrokeFlag[20]=1;
  lineStrokeFlag[21]=1;
  lineStrokeFlag[22]=1;
  lineStrokeFlag[23]=1;
  lineStrokeFlag[26]=1;
  lineStrokeFlag[27]=1;
  lineStrokeFlag[28]=1;
  lineStrokeFlag[30]=1;
  lineStrokeFlag[33]=1;
  lineStrokeFlag[34]=1;
  lineStrokeFlag[37]=1;
  lineStrokeFlag[38]=1;
  lineStrokeFlag[39]=1;
  lineStrokeFlag[40]=1;
  lineStrokeFlag[42]=1;
  lineStrokeFlag[44]=1;
  lineStrokeFlag[45]=1;
  lineStrokeFlag[49]=1;
  lineStrokeFlag[50]=1;
  lineStrokeFlag[51]=1;
  lineStrokeFlag[55]=1;
  lineStrokeFlag[56]=1;
  lineStrokeFlag[58]=1;
  lineStrokeFlag[59]=1;
  lineStrokeFlag[60]=1;
  lineStrokeFlag[61]=1;
  lineStrokeFlag[62]=1;
  lineStrokeFlag[64]=1;
  lineStrokeFlag[65]=1;
  lineStrokeFlag[66]=1;
  lineStrokeFlag[67]=1;
  lineStrokeFlag[68]=1;
  lineStrokeFlag[69]=1;
  lineStrokeFlag[70]=1;
  lineStrokeFlag[72]=1;
  lineStrokeFlag[74]=1;
  lineStrokeFlag[76]=1;
  lineStrokeFlag[79]=1;
  lineStrokeFlag[80]=1;
  lineStrokeFlag[81]=1;
  lineStrokeFlag[82]=1;
  lineStrokeFlag[83]=1;
  lineStrokeFlag[87]=1;
  lineStrokeFlag[88]=1;
  lineStrokeFlag[90]=1;
  lineStrokeFlag[91]=1;
  lineStrokeFlag[92]=1;
  lineStrokeFlag[93]=1;
  lineStrokeFlag[97]=1;
  lineStrokeFlag[104]=1;
  lineStrokeFlag[106]=1;
  lineStrokeFlag[107]=1;
  lineStrokeFlag[108]=1;
  lineStrokeFlag[110]=1;
  lineStrokeFlag[113]=1;
  lineStrokeFlag[114]=1;
  lineStrokeFlag[115]=1;
  lineStrokeFlag[116]=1;
  lineStrokeFlag[120]=1;
  lineStrokeFlag[121]=1;
  lineStrokeFlag[122]=1;
  lineStrokeFlag[123]=1;
  lineStrokeFlag[124]=1;
  lineStrokeFlag[129]=1;
  lineStrokeFlag[130]=1;
  lineStrokeFlag[131]=1;
  lineStrokeFlag[132]=1;
  lineStrokeFlag[135]=1;
  lineStrokeFlag[136]=1;
  lineStrokeFlag[137]=1;
  lineStrokeFlag[138]=1;
  lineStrokeFlag[139]=1;
  lineStrokeFlag[142]=1;
  lineStrokeFlag[143]=1;
  lineStrokeFlag[144]=1;
  lineStrokeFlag[145]=1;
  lineStrokeFlag[147]=1;
  lineStrokeFlag[148]=1;
  lineStrokeFlag[149]=1;
  lineStrokeFlag[150]=1;
  lineStrokeFlag[151]=1;
  lineStrokeFlag[156]=1;
  lineStrokeFlag[157]=1;
  lineStrokeFlag[159]=1;
  lineStrokeFlag[160]=1;
  lineStrokeFlag[161]=1;
  lineStrokeFlag[163]=1;
  lineStrokeFlag[165]=1;
  lineStrokeFlag[169]=1;
  lineStrokeFlag[171]=1;
  lineStrokeFlag[172]=1;
  lineStrokeFlag[174]=1;
  lineStrokeFlag[176]=1;
  lineStrokeFlag[177]=1;
  lineStrokeFlag[179]=1;
  lineStrokeFlag[181]=1;
  lineStrokeFlag[182]=1;
  lineStrokeFlag[183]=1;
  lineStrokeFlag[184]=1;
  lineStrokeFlag[187]=1;
  lineStrokeFlag[189]=1;
  lineStrokeFlag[190]=1;
  lineStrokeFlag[191]=1;
  lineStrokeFlag[192]=1;
  lineStrokeFlag[193]=1;
  lineStrokeFlag[195]=1;
  lineStrokeFlag[196]=1;
  lineStrokeFlag[197]=1;
  lineStrokeFlag[200]=1;
  lineStrokeFlag[201]=1;
  lineStrokeFlag[206]=1;
  lineStrokeFlag[209]=1;
  lineStrokeFlag[211]=1;
  lineStrokeFlag[215]=1;
  lineStrokeFlag[216]=1;
  lineStrokeFlag[218]=1;
  lineStrokeFlag[222]=1;
  lineStrokeFlag[223]=1;
  lineStrokeFlag[225]=1;
  lineStrokeFlag[226]=1;
  lineStrokeFlag[230]=1;
  lineStrokeFlag[232]=1;
  lineStrokeFlag[234]=1;
  lineStrokeFlag[236]=1;
  lineStrokeFlag[237]=1;
  lineStrokeFlag[239]=1;
  lineStrokeFlag[240]=1;
  lineStrokeFlag[242]=1;
  lineStrokeFlag[246]=1;
  lineStrokeFlag[251]=1;
  lineStrokeFlag[257]=1;
  lineStrokeFlag[258]=1;
  lineStrokeFlag[259]=1;
  lineStrokeFlag[262]=1;
  lineStrokeFlag[263]=1;
  lineStrokeFlag[267]=1;
  lineStrokeFlag[268]=1;
  lineStrokeFlag[270]=1;
  lineStrokeFlag[271]=1;
  lineStrokeFlag[272]=1;
  lineStrokeFlag[273]=1;
  lineStrokeFlag[274]=1;
  lineStrokeFlag[276]=1;
  lineStrokeFlag[277]=1;
  lineStrokeFlag[278]=1;
  lineStrokeFlag[282]=1;
  lineStrokeFlag[289]=1;
  lineStrokeFlag[290]=1;
  lineStrokeFlag[292]=1;
  lineStrokeFlag[294]=1;
  lineStrokeFlag[295]=1;
  lineStrokeFlag[296]=1;
  lineStrokeFlag[297]=1;
  lineStrokeFlag[298]=1;
  lineStrokeFlag[301]=1;
  lineStrokeFlag[302]=1;
  lineStrokeFlag[307]=1;
  lineStrokeFlag[310]=1;
  lineStrokeFlag[312]=1;
  lineStrokeFlag[313]=1;
  lineStrokeFlag[316]=1;
  lineStrokeFlag[317]=1;
  lineStrokeFlag[318]=1;
  lineStrokeFlag[319]=1;
  lineStrokeFlag[320]=1;
  lineStrokeFlag[324]=1;
  lineStrokeFlag[327]=1;
  lineStrokeFlag[329]=1;
  lineStrokeFlag[331]=1;
  lineStrokeFlag[336]=1;
  lineStrokeFlag[338]=1;
  lineStrokeFlag[339]=1;
  lineStrokeFlag[342]=1;
  lineStrokeFlag[347]=1;
  lineStrokeFlag[350]=1;
  lineStrokeFlag[353]=1;
  lineStrokeFlag[358]=1;
  lineStrokeFlag[364]=1;
  lineStrokeFlag[367]=1;
  lineStrokeFlag[368]=1;
  lineStrokeFlag[369]=1;
  lineStrokeFlag[370]=1;
  lineStrokeFlag[372]=1;
  lineStrokeFlag[373]=1;
  lineStrokeFlag[375]=1;
  lineStrokeFlag[377]=1;
  lineStrokeFlag[378]=1;
  lineStrokeFlag[380]=1;
  lineStrokeFlag[381]=1;
  lineStrokeFlag[383]=1;
  lineStrokeFlag[384]=1;
  lineStrokeFlag[385]=1;
  lineStrokeFlag[386]=1;
  lineStrokeFlag[388]=1;
  lineStrokeFlag[390]=1;
  lineStrokeFlag[392]=1;
  lineStrokeFlag[395]=1;
  lineStrokeFlag[396]=1;
  lineStrokeFlag[398]=1;
  lineStrokeFlag[402]=1;
  lineStrokeFlag[403]=1;
  lineStrokeFlag[404]=1;
  lineStrokeFlag[406]=1;
  lineStrokeFlag[411]=1;
  lineStrokeFlag[412]=1;
  lineStrokeFlag[413]=1;
  lineStrokeFlag[414]=1;
  lineStrokeFlag[416]=1;
  lineStrokeFlag[417]=1;
  lineStrokeFlag[418]=1;
  lineStrokeFlag[419]=1;
  lineStrokeFlag[420]=1;
  lineStrokeFlag[422]=1;
  lineStrokeFlag[426]=1;
  lineStrokeFlag[431]=1;
  lineStrokeFlag[434]=1;
  lineStrokeFlag[436]=1;
  lineStrokeFlag[437]=1;
  lineStrokeFlag[438]=1;
  lineStrokeFlag[439]=1;
  lineStrokeFlag[441]=1;
  lineStrokeFlag[443]=1;
  lineStrokeFlag[447]=1;
  rectFillFlag[1]=1;
  rectFillFlag[2]=1;
  rectFillFlag[5]=1;
  rectFillFlag[7]=1;
  rectFillFlag[8]=1;
  rectFillFlag[10]=1;
  rectFillFlag[11]=1;
  rectFillFlag[12]=1;
  rectFillFlag[14]=1;
  rectFillFlag[15]=1;
  rectFillFlag[16]=1;
  rectFillFlag[17]=1;
  rectFillFlag[19]=1;
  rectFillFlag[20]=1;
  rectFillFlag[21]=1;
  rectFillFlag[23]=1;
  rectFillFlag[24]=1;
  rectFillFlag[27]=1;
  rectFillFlag[28]=1;
  rectFillFlag[29]=1;
  rectFillFlag[31]=1;
  rectFillFlag[34]=1;
  rectFillFlag[35]=1;
  rectFillFlag[36]=1;
  rectFillFlag[38]=1;
  rectFillFlag[41]=1;
  rectFillFlag[43]=1;
  rectFillFlag[49]=1;
  rectFillFlag[50]=1;
  rectFillFlag[55]=1;
  rectFillFlag[57]=1;
  rectFillFlag[58]=1;
  rectFillFlag[59]=1;
  rectFillFlag[60]=1;
  rectFillFlag[64]=1;
  rectFillFlag[65]=1;
  rectFillFlag[66]=1;
  rectFillFlag[68]=1;
  rectFillFlag[69]=1;
  rectFillFlag[71]=1;
  rectFillFlag[72]=1;
  rectFillFlag[73]=1;
  rectFillFlag[76]=1;
  rectFillFlag[77]=1;
  rectFillFlag[78]=1;
  rectFillFlag[80]=1;
  rectFillFlag[82]=1;
  rectFillFlag[89]=1;
  rectFillFlag[90]=1;
  rectFillFlag[91]=1;
  rectFillFlag[93]=1;
  rectFillFlag[96]=1;
  rectFillFlag[97]=1;
  rectFillFlag[102]=1;
  rectFillFlag[104]=1;
  rectFillFlag[107]=1;
  rectFillFlag[109]=1;
  rectFillFlag[110]=1;
  rectFillFlag[112]=1;
  rectFillFlag[113]=1;
  rectFillFlag[114]=1;
  rectFillFlag[115]=1;
  rectFillFlag[116]=1;
  rectFillFlag[119]=1;
  rectFillFlag[121]=1;
  rectFillFlag[122]=1;
  rectFillFlag[125]=1;
  rectFillFlag[128]=1;
  rectFillFlag[129]=1;
  rectFillFlag[136]=1;
  rectFillFlag[139]=1;
  rectFillFlag[140]=1;
  rectFillFlag[145]=1;
  rectFillFlag[153]=1;
  rectFillFlag[156]=1;
  rectFillFlag[157]=1;
  rectFillFlag[158]=1;
  rectFillFlag[160]=1;
  rectFillFlag[163]=1;
  rectFillFlag[164]=1;
  rectFillFlag[166]=1;
  rectFillFlag[167]=1;
  rectFillFlag[168]=1;
  rectFillFlag[169]=1;
  rectFillFlag[171]=1;
  rectFillFlag[173]=1;
  rectFillFlag[177]=1;
  rectFillFlag[178]=1;
  rectFillFlag[179]=1;
  rectFillFlag[180]=1;
  rectFillFlag[182]=1;
  rectFillFlag[186]=1;
  rectFillFlag[187]=1;
  rectFillFlag[188]=1;
  rectFillFlag[190]=1;
  rectFillFlag[194]=1;
  rectFillFlag[195]=1;
  rectFillFlag[196]=1;
  rectFillFlag[197]=1;
  rectFillFlag[198]=1;
  rectFillFlag[199]=1;
  rectFillFlag[200]=1;
  rectFillFlag[201]=1;
  rectFillFlag[202]=1;
  rectFillFlag[203]=1;
  rectFillFlag[204]=1;
  rectFillFlag[205]=1;
  rectFillFlag[206]=1;
  rectFillFlag[208]=1;
  rectFillFlag[209]=1;
  rectFillFlag[210]=1;
  rectFillFlag[211]=1;
  rectFillFlag[212]=1;
  rectFillFlag[213]=1;
  rectFillFlag[215]=1;
  rectFillFlag[216]=1;
  rectFillFlag[217]=1;
  rectFillFlag[218]=1;
  rectFillFlag[220]=1;
  rectFillFlag[221]=1;
  rectFillFlag[222]=1;
  rectFillFlag[223]=1;
  rectFillFlag[225]=1;
  rectFillFlag[226]=1;
  rectFillFlag[227]=1;
  rectFillFlag[228]=1;
  rectFillFlag[229]=1;
  rectFillFlag[233]=1;
  rectFillFlag[234]=1;
  rectFillFlag[235]=1;
  rectFillFlag[236]=1;
  rectFillFlag[237]=1;
  rectFillFlag[238]=1;
  rectFillFlag[239]=1;
  rectFillFlag[240]=1;
  rectFillFlag[241]=1;
  rectFillFlag[242]=1;
  rectFillFlag[243]=1;
  rectFillFlag[244]=1;
  rectFillFlag[246]=1;
  rectFillFlag[249]=1;
  rectFillFlag[250]=1;
  rectFillFlag[251]=1;
  rectFillFlag[252]=1;
  rectFillFlag[253]=1;
  rectFillFlag[254]=1;
  rectFillFlag[255]=1;
  rectFillFlag[256]=1;
  rectFillFlag[257]=1;
  rectFillFlag[258]=1;
  rectFillFlag[259]=1;
  rectFillFlag[260]=1;
  rectFillFlag[261]=1;
  rectFillFlag[262]=1;
  rectFillFlag[263]=1;
  rectFillFlag[264]=1;
  rectFillFlag[265]=1;
  rectFillFlag[266]=1;
  rectFillFlag[267]=1;
  rectFillFlag[268]=1;
  rectFillFlag[269]=1;
  rectFillFlag[270]=1;
  rectFillFlag[271]=1;
  rectFillFlag[272]=1;
  rectFillFlag[273]=1;
  rectFillFlag[274]=1;
  rectFillFlag[275]=1;
  rectFillFlag[276]=1;
  rectFillFlag[277]=1;
  rectFillFlag[278]=1;
  rectFillFlag[279]=1;
  rectFillFlag[280]=1;
  rectFillFlag[281]=1;
  rectFillFlag[282]=1;
  rectFillFlag[283]=1;
  rectFillFlag[284]=1;
  rectFillFlag[285]=1;
  rectFillFlag[286]=1;
  rectFillFlag[287]=1;
  rectFillFlag[288]=1;
  rectFillFlag[289]=1;
  rectFillFlag[290]=1;
  rectFillFlag[291]=1;
  rectFillFlag[292]=1;
  rectFillFlag[293]=1;
  rectFillFlag[294]=1;
  rectFillFlag[295]=1;
  rectFillFlag[296]=1;
  rectFillFlag[297]=1;
  rectFillFlag[298]=1;
  rectFillFlag[299]=1;
  rectFillFlag[300]=1;
  rectFillFlag[301]=1;
  rectFillFlag[302]=1;
  rectFillFlag[303]=1;
  rectFillFlag[304]=1;
  rectFillFlag[305]=1;
  rectFillFlag[306]=1;
  rectFillFlag[307]=1;
  rectFillFlag[308]=1;
  rectFillFlag[309]=1;
  rectFillFlag[310]=1;
  rectFillFlag[311]=1;
  rectFillFlag[312]=1;
  rectFillFlag[313]=1;
  rectFillFlag[314]=1;
  rectFillFlag[315]=1;
  rectFillFlag[316]=1;
  rectFillFlag[317]=1;
  rectFillFlag[318]=1;
  rectFillFlag[319]=1;
  rectFillFlag[320]=1;
  rectFillFlag[321]=1;
  rectFillFlag[322]=1;
  rectFillFlag[323]=1;
  rectFillFlag[324]=1;
  rectFillFlag[325]=1;
  rectFillFlag[326]=1;
  rectFillFlag[327]=1;
  rectFillFlag[328]=1;
  rectFillFlag[329]=1;
  rectFillFlag[330]=1;
  rectFillFlag[331]=1;
  rectFillFlag[332]=1;
  rectFillFlag[333]=1;
  rectFillFlag[334]=1;
  rectFillFlag[335]=1;
  rectFillFlag[336]=1;
  rectFillFlag[337]=1;
  rectFillFlag[338]=1;
  rectFillFlag[339]=1;
  rectFillFlag[340]=1;
  rectFillFlag[341]=1;
  rectFillFlag[342]=1;
  rectFillFlag[343]=1;
  rectFillFlag[344]=1;
  rectFillFlag[345]=1;
  rectFillFlag[346]=1;
  rectFillFlag[347]=1;
  rectFillFlag[348]=1;
  rectFillFlag[349]=1;
  rectFillFlag[350]=1;
  rectFillFlag[351]=1;
  rectFillFlag[352]=1;
  rectFillFlag[353]=1;
  rectFillFlag[354]=1;
  rectFillFlag[355]=1;
  rectFillFlag[356]=1;
  rectFillFlag[357]=1;
  rectFillFlag[358]=1;
  rectFillFlag[359]=1;
  rectFillFlag[360]=1;
  rectFillFlag[361]=1;
  rectFillFlag[362]=1;
  rectFillFlag[363]=1;
  rectFillFlag[364]=1;
  rectFillFlag[365]=1;
  rectFillFlag[366]=1;
  rectFillFlag[367]=1;
  rectFillFlag[368]=1;
  rectFillFlag[370]=1;
  rectFillFlag[371]=1;
  rectFillFlag[372]=1;
  rectFillFlag[373]=1;
  rectFillFlag[374]=1;
  rectFillFlag[375]=1;
  rectFillFlag[376]=1;
  rectFillFlag[377]=1;
  rectFillFlag[378]=1;
  rectFillFlag[380]=1;
  fillFlag[0]=1;
  fillFlag[1]=1;
  fillFlag[2]=1;
  fillFlag[3]=1;
  fillFlag[4]=1;
  fillFlag[5]=1;
  moveFlag[0]=1;
  moveFlag[1]=1;
  moveFlag[2]=1;
  moveFlag[3]=1;
  moveFlag[4]=1;
  moveFlag[5]=1;
  moveFlag[6]=1;
  moveFlag[7]=1;
  moveFlag[8]=1;
  moveFlag[9]=1;
  moveFlag[10]=1;
  moveFlag[11]=1;
  moveFlag[12]=1;
  moveFlag[13]=1;
  moveFlag[14]=1;
  moveFlag[15]=1;
  moveFlag[16]=1;
  moveFlag[17]=1;
  moveFlag[18]=1;
  moveFlag[19]=1;
  moveFlag[20]=1;
  moveFlag[21]=1;
  moveFlag[22]=1;
  moveFlag[23]=1;
  moveFlag[24]=1;
  moveFlag[25]=1;
  moveFlag[26]=1;
  moveFlag[27]=1;
  moveFlag[28]=1;
  moveFlag[29]=1;
  moveFlag[30]=1;
  moveFlag[31]=1;
  moveFlag[32]=1;
  moveFlag[33]=1;
  moveFlag[34]=1;
  lineMoveFlag[0]=1;
  lineMoveFlag[2]=1;
  lineMoveFlag[4]=1;
  lineMoveFlag[8]=1;
  lineMoveFlag[11]=1;
  lineMoveFlag[13]=1;
  lineMoveFlag[14]=1;
  lineMoveFlag[16]=1;
  lineMoveFlag[21]=1;
  lineMoveFlag[24]=1;
  lineMoveFlag[27]=1;
  lineMoveFlag[28]=1;
  lineMoveFlag[29]=1;
  lineMoveFlag[43]=1;
  lineMoveFlag[46]=1;
  lineMoveFlag[51]=1;
  lineMoveFlag[53]=1;
  lineMoveFlag[54]=1;
  lineMoveFlag[58]=1;
  lineMoveFlag[63]=1;
  lineMoveFlag[64]=1;
  lineMoveFlag[65]=1;
  lineMoveFlag[66]=1;
  lineMoveFlag[76]=1;
  lineMoveFlag[79]=1;
  lineMoveFlag[80]=1;
  lineMoveFlag[83]=1;
  lineMoveFlag[89]=1;
  lineMoveFlag[95]=1;
  lineMoveFlag[96]=1;
  lineMoveFlag[99]=1;
  lineMoveFlag[100]=1;
  lineMoveFlag[105]=1;
  lineMoveFlag[106]=1;
  lineMoveFlag[107]=1;
  lineMoveFlag[111]=1;
  lineMoveFlag[113]=1;
  lineMoveFlag[120]=1;
  lineMoveFlag[122]=1;
  lineMoveFlag[123]=1;
  lineMoveFlag[124]=1;
  lineMoveFlag[126]=1;
  lineMoveFlag[133]=1;
  lineMoveFlag[135]=1;
  lineMoveFlag[137]=1;
  lineMoveFlag[142]=1;
  lineMoveFlag[143]=1;
  lineMoveFlag[150]=1;
  lineMoveFlag[152]=1;
  lineMoveFlag[157]=1;
  lineMoveFlag[159]=1;
  lineMoveFlag[162]=1;
  lineMoveFlag[163]=1;
  lineMoveFlag[164]=1;
  lineMoveFlag[167]=1;
  lineMoveFlag[177]=1;
  lineMoveFlag[178]=1;
  lineMoveFlag[179]=1;
  lineMoveFlag[180]=1;
  lineMoveFlag[189]=1;
  lineMoveFlag[190]=1;
  lineMoveFlag[193]=1;
  lineMoveFlag[195]=1;
  lineMoveFlag[196]=1;
  lineMoveFlag[209]=1;
  lineMoveFlag[212]=1;
  lineMoveFlag[213]=1;
  lineMoveFlag[226]=1;
  lineMoveFlag[229]=1;
  lineMoveFlag[245]=1;
  lineMoveFlag[256]=1;
  lineMoveFlag[270]=1;
  lineMoveFlag[277]=1;
  lineMoveFlag[281]=1;
  lineMoveFlag[285]=1;
  lineMoveFlag[289]=1;
  lineMoveFlag[300]=1;
  lineMoveFlag[301]=1;
  lineMoveFlag[305]=1;
  lineMoveFlag[306]=1;
  lineMoveFlag[308]=1;
  lineMoveFlag[310]=1;
  lineMoveFlag[311]=1;
  lineMoveFlag[312]=1;
  lineMoveFlag[314]=1;
  lineMoveFlag[316]=1;
  lineMoveFlag[318]=1;
  lineMoveFlag[319]=1;
  lineMoveFlag[320]=1;
  lineMoveFlag[327]=1;
  lineMoveFlag[339]=1;
  lineMoveFlag[340]=1;
  lineMoveFlag[344]=1;
  lineMoveFlag[345]=1;
  lineMoveFlag[346]=1;
  lineMoveFlag[347]=1;
  lineMoveFlag[351]=1;
  lineMoveFlag[352]=1;
  lineMoveFlag[357]=1;
  lineMoveFlag[363]=1;
  lineMoveFlag[365]=1;
  lineMoveFlag[370]=1;
  lineMoveFlag[374]=1;
  lineMoveFlag[377]=1;
  lineMoveFlag[379]=1;
  lineMoveFlag[382]=1;
  lineMoveFlag[386]=1;
  lineMoveFlag[387]=1;
  lineMoveFlag[391]=1;
  lineMoveFlag[396]=1;
  lineMoveFlag[397]=1;
  lineMoveFlag[398]=1;
  lineMoveFlag[400]=1;
  lineMoveFlag[401]=1;
  lineMoveFlag[402]=1;
  lineMoveFlag[403]=1;
  lineMoveFlag[404]=1;
  lineMoveFlag[405]=1;
  lineMoveFlag[419]=1;
  lineMoveFlag[420]=1;
  lineMoveFlag[421]=1;
  lineMoveFlag[423]=1;
  lineMoveFlag[424]=1;
  lineMoveFlag[426]=1;
  lineMoveFlag[428]=1;
  lineMoveFlag[434]=1;
  lineMoveFlag[435]=1;
  lineMoveFlag[440]=1;
  lineMoveFlag[444]=1;
  lineMoveFlag[447]=1;
  rectMoveFlag[4]=1;
  rectMoveFlag[5]=1;
  rectMoveFlag[7]=1;
  rectMoveFlag[8]=1;
  rectMoveFlag[10]=1;
  rectMoveFlag[11]=1;
  rectMoveFlag[16]=1;
  rectMoveFlag[17]=1;
  rectMoveFlag[18]=1;
  rectMoveFlag[19]=1;
  rectMoveFlag[23]=1;
  rectMoveFlag[25]=1;
  rectMoveFlag[29]=1;
  rectMoveFlag[34]=1;
  rectMoveFlag[37]=1;
  rectMoveFlag[39]=1;
  rectMoveFlag[42]=1;
  rectMoveFlag[45]=1;
  rectMoveFlag[54]=1;
  rectMoveFlag[58]=1;
  rectMoveFlag[59]=1;
  rectMoveFlag[62]=1;
  rectMoveFlag[63]=1;
  rectMoveFlag[66]=1;
  rectMoveFlag[68]=1;
  rectMoveFlag[69]=1;
  rectMoveFlag[70]=1;
  rectMoveFlag[73]=1;
  rectMoveFlag[79]=1;
  rectMoveFlag[80]=1;
  rectMoveFlag[81]=1;
  rectMoveFlag[86]=1;
  rectMoveFlag[89]=1;
  rectMoveFlag[92]=1;
  rectMoveFlag[95]=1;
  rectMoveFlag[97]=1;
  rectMoveFlag[99]=1;
  rectMoveFlag[101]=1;
  rectMoveFlag[102]=1;
  rectMoveFlag[116]=1;
  rectMoveFlag[117]=1;
  rectMoveFlag[126]=1;
  rectMoveFlag[129]=1;
  rectMoveFlag[134]=1;
  rectMoveFlag[140]=1;
  rectMoveFlag[142]=1;
  rectMoveFlag[143]=1;
  rectMoveFlag[144]=1;
  rectMoveFlag[154]=1;
  rectMoveFlag[158]=1;
  rectMoveFlag[163]=1;
  rectMoveFlag[164]=1;
  rectMoveFlag[167]=1;
  rectMoveFlag[175]=1;
  rectMoveFlag[177]=1;
  rectMoveFlag[178]=1;
  rectMoveFlag[193]=1;
  rectMoveFlag[196]=1;
  rectMoveFlag[200]=1;
  rectMoveFlag[203]=1;
  rectMoveFlag[204]=1;
  rectMoveFlag[210]=1;
  rectMoveFlag[211]=1;
  rectMoveFlag[212]=1;
  rectMoveFlag[218]=1;
  rectMoveFlag[219]=1;
  rectMoveFlag[220]=1;
  rectMoveFlag[225]=1;
  rectMoveFlag[233]=1;
  rectMoveFlag[234]=1;
  rectMoveFlag[243]=1;
  rectMoveFlag[250]=1;
  rectMoveFlag[252]=1;
  rectMoveFlag[254]=1;
  rectMoveFlag[257]=1;
  rectMoveFlag[260]=1;
  rectMoveFlag[261]=1;
  rectMoveFlag[262]=1;
  rectMoveFlag[263]=1;
  rectMoveFlag[270]=1;
  rectMoveFlag[281]=1;
  rectMoveFlag[28