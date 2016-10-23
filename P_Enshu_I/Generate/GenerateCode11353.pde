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
  lineMoveFlag[0]=1;
  lineMoveFlag[1]=1;
  lineMoveFlag[2]=1;
  lineMoveFlag[3]=1;
  ellipX[0]=93.33333;
  ellipY[0]=155.0;
  ellipR1[0]=398.3333;
  ellipR2[0]=308.3333;
  lineStrokeFlag[2]=1;
  lineStrokeFlag[4]=1;
  fillFlag[0]=1;
  lineMoveFlag[2]=1;
  lineMoveFlag[4]=1;
  moveFlag[0]=1;
  pointX[0]=-434.99997;
  pointY[0]=573.3333;
  pointX[1]=-449.99997;
  pointY[1]=598.3333;
  pointX[2]=-463.3333;
  pointY[2]=620.0;
  pointX[3]=-473.3333;
  pointY[3]=636.6666;
  pointX[4]=-476.66666;
  pointY[4]=643.3333;
  pointX[5]=-481.66666;
  pointY[5]=650.0;
  pointX[6]=-484.99997;
  pointY[6]=658.3333;
  pointX[7]=-486.66666;
  pointY[7]=658.3333;
  pointX[8]=-489.99997;
  pointY[8]=660.0;
  pointX[9]=-489.99997;
  pointY[9]=660.0;
  pointX[10]=-489.99997;
  pointY[10]=656.6666;
  pointX[11]=-489.99997;
  pointY[11]=648.3333;
  pointX[12]=-489.99997;
  pointY[12]=648.3333;
  pointX[13]=-446.66666;
  pointY[13]=576.6666;
  pointX[14]=-414.99997;
  pointY[14]=536.6666;
  pointX[15]=-380.0;
  pointY[15]=511.66666;
  pointX[16]=-351.66666;
  pointY[16]=498.3333;
  pointX[17]=-333.3333;
  pointY[17]=496.66666;
  pointX[18]=-311.66666;
  pointY[18]=501.66666;
  pointX[19]=-295.0;
  pointY[19]=520.0;
  pointX[20]=-295.0;
  pointY[20]=520.0;
  pointX[21]=-275.0;
  pointY[21]=565.0;
  pointX[22]=-273.3333;
  pointY[22]=573.3333;
  pointX[23]=-271.66666;
  pointY[23]=596.6666;
  pointX[24]=-270.0;
  pointY[24]=596.6666;
  pointX[25]=-261.66666;
  pointY[25]=583.3333;
  pointX[26]=-261.66666;
  pointY[26]=583.3333;
  pointX[27]=-229.99998;
  pointY[27]=563.3333;
  pointX[28]=-219.99998;
  pointY[28]=558.3333;
  pointX[29]=-203.33333;
  pointY[29]=560.0;
  pointX[30]=-193.33333;
  pointY[30]=583.3333;
  pointX[31]=-190.0;
  pointY[31]=615.0;
  pointX[32]=-190.0;
  pointY[32]=640.0;
  pointX[33]=-190.0;
  pointY[33]=640.0;
  pointX[34]=-206.66666;
  pointY[34]=668.3333;
  pointX[35]=-211.66666;
  pointY[35]=668.3333;
  pointX[36]=-221.66666;
  pointY[36]=660.0;
  pointX[37]=-226.66666;
  pointY[37]=641.6666;
  pointX[38]=-226.66666;
  pointY[38]=641.6666;
  pointX[39]=-216.66666;
  pointY[39]=565.0;
  pointX[40]=-216.66666;
  pointY[40]=565.0;
  pointX[41]=-180.0;
  pointY[41]=515.0;
  pointX[42]=-165.0;
  pointY[42]=513.3333;
  pointX[43]=-153.33333;
  pointY[43]=523.3333;
  pointX[44]=-153.33333;
  pointY[44]=523.3333;
  pointX[45]=-141.66666;
  pointY[45]=575.0;
  pointX[46]=-141.66666;
  pointY[46]=580.0;
  pointX[47]=-145.0;
  pointY[47]=586.6666;
  pointX[48]=-151.66666;
  pointY[48]=588.3333;
  pointX[49]=-161.66666;
  pointY[49]=586.6666;
  pointX[50]=-171.66666;
  pointY[50]=581.6666;
  pointX[51]=-176.66666;
  pointY[51]=571.6666;
  pointX[52]=-176.66666;
  pointY[52]=553.3333;
  pointX[53]=-166.66666;
  pointY[53]=535.0;
  pointX[54]=-124.99999;
  pointY[54]=501.66666;
  pointX[55]=-113.33333;
  pointY[55]=498.3333;
  pointX[56]=-96.666664;
  pointY[56]=499.99997;
  pointX[57]=-86.666664;
  pointY[57]=508.3333;
  pointX[58]=-81.666664;
  pointY[58]=518.3333;
  pointX[59]=-81.666664;
  pointY[59]=526.6666;
  pointX[60]=-81.666664;
  pointY[60]=533.3333;
  pointX[61]=-86.666664;
  pointY[61]=536.6666;
  pointX[62]=-90.0;
  pointY[62]=538.3333;
  pointX[63]=-98.33333;
  pointY[63]=538.3333;
  pointX[64]=-113.33333;
  pointY[64]=531.6666;
  pointX[65]=-116.666664;
  pointY[65]=526.6666;
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
  moveFlag[35]=1;
  moveFlag[36]=1;
  moveFlag[37]=1;
  moveFlag[38]=1;
  moveFlag[39]=1;
  moveFlag[40]=1;
  moveFlag[41]=1;
  moveFlag[42]=1;
  moveFlag[43]=1;
  moveFlag[44]=1;
  moveFlag[45]=1;
  moveFlag[46]=1;
  moveFlag[47]=1;
  moveFlag[48]=1;
  moveFlag[49]=1;
  moveFlag[50]=1;
  moveFlag[51]=1;
  moveFlag[52]=1;
  moveFlag[53]=1;
  moveFlag[54]=1;
  moveFlag[55]=1;
  moveFlag[56]=1;
  moveFlag[57]=1;
  moveFlag[58]=1;
  moveFlag[59]=1;
  moveFlag[60]=1;
  moveFlag[61]=1;
  moveFlag[62]=1;
  moveFlag[63]=1;
  moveFlag[64]=1;
  moveFlag[65]=1;
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
  pointX[66]=-61.666664;
  pointY[66]=239.99998;
  pointX[67]=-70.0;
  pointY[67]=258.3333;
  pointX[68]=-70.0;
  pointY[68]=258.3333;
  pointX[69]=-73.33333;
  pointY[69]=268.3333;
  pointX[70]=-73.33333;
  pointY[70]=270.0;
  pointX[71]=-75.0;
  pointY[71]=275.0;
  pointX[72]=-76.666664;
  pointY[72]=280.0;
  pointX[73]=-76.666664;
  pointY[73]=280.0;
  pointX[74]=-78.33333;
  pointY[74]=293.3333;
  pointX[75]=-78.33333;
  pointY[75]=293.3333;
  pointX[76]=-78.33333;
  pointY[76]=293.3333;
  pointX[77]=-78.33333;
  pointY[77]=293.3333;
  pointX[78]=-78.33333;
  pointY[78]=293.3333;
  pointX[79]=-78.33333;
  pointY[79]=293.3333;
  pointX[80]=-81.666664;
  pointY[80]=396.66666;
  pointX[81]=-81.666664;
  pointY[81]=399.99997;
  pointX[82]=-81.666664;
  pointY[82]=399.99997;
  pointX[83]=-81.666664;
  pointY[83]=413.3333;
  pointX[84]=-78.33333;
  pointY[84]=421.66666;
  pointX[85]=-75.0;
  pointY[85]=428.3333;
  pointX[86]=-75.0;
  pointY[86]=433.3333;
  pointX[87]=-70.0;
  pointY[87]=443.3333;
  pointX[88]=-66.666664;
  pointY[88]=451.66666;
  pointX[89]=-63.333332;
  pointY[89]=458.3333;
  pointX[90]=-61.666664;
  pointY[90]=466.66666;
  pointX[91]=-59.999996;
  pointY[91]=471.66666;
  pointX[92]=-59.999996;
  pointY[92]=471.66666;
  pointX[93]=-56.666664;
  pointY[93]=478.3333;
  pointX[94]=-56.666664;
  pointY[94]=478.3333;
  pointX[95]=-54.999996;
  pointY[95]=486.66666;
  pointX[96]=-54.999996;
  pointY[96]=489.99997;
  pointX[97]=-54.999996;
  pointY[97]=493.3333;
  pointX[98]=-54.999996;
  pointY[98]=496.66666;
  pointX[99]=-54.999996;
  pointY[99]=498.3333;
  pointX[100]=-54.999996;
  pointY[100]=499.99997;
  pointX[101]=-54.999996;
  pointY[101]=501.66666;
  pointX[102]=-54.999996;
  pointY[102]=504.99997;
  pointX[103]=-53.333332;
  pointY[103]=506.66666;
  pointX[104]=-51.666664;
  pointY[104]=509.99997;
  pointX[105]=-51.666664;
  pointY[105]=511.66666;
  pointX[106]=-51.666664;
  pointY[106]=513.3333;
  pointX[107]=-49.999996;
  pointY[107]=515.0;
  pointX[108]=-48.333332;
  pointY[108]=516.6666;
  pointX[109]=-48.333332;
  pointY[109]=518.3333;
  pointX[110]=-48.333332;
  pointY[110]=520.0;
  pointX[111]=-46.666664;
  pointY[111]=523.3333;
  pointX[112]=-46.666664;
  pointY[112]=525.0;
  pointX[113]=-46.666664;
  pointY[113]=526.6666;
  pointX[114]=-46.666664;
  pointY[114]=528.3333;
  pointX[115]=-46.666664;
  pointY[115]=530.0;
  pointX[116]=-45.0;
  pointY[116]=531.6666;
  pointX[117]=-43.333332;
  pointY[117]=528.3333;
  pointX[118]=-43.333332;
  pointY[118]=523.3333;
  pointX[119]=-43.333332;
  pointY[119]=511.66666;
  pointX[120]=-43.333332;
  pointY[120]=503.3333;
  pointX[121]=-43.333332;
  pointY[121]=481.66666;
  pointX[122]=-45.0;
  pointY[122]=458.3333;
  pointX[123]=-45.0;
  pointY[123]=458.3333;
  pointX[124]=-48.333332;
  pointY[124]=419.99997;
  pointX[125]=-48.333332;
  pointY[125]=404.99997;
  pointX[126]=-49.999996;
  pointY[126]=393.3333;
  pointX[127]=-49.999996;
  pointY[127]=370.0;
  pointX[128]=-49.999996;
  pointY[128]=353.3333;
  pointX[129]=-49.999996;
  pointY[129]=336.66666;
  pointX[130]=-49.999996;
  pointY[130]=326.66666;
  pointX[131]=-49.999996;
  pointY[131]=326.66666;
  pointX[132]=-49.999996;
  pointY[132]=315.0;
  pointX[133]=-49.999996;
  pointY[133]=311.66666;
  pointX[134]=-49.999996;
  pointY[134]=305.0;
  pointX[135]=-49.999996;
  pointY[135]=298.3333;
  pointX[136]=-49.999996;
  pointY[136]=295.0;
  pointX[137]=-49.999996;
  pointY[137]=295.0;
  pointX[138]=-49.999996;
  pointY[138]=291.66666;
  pointX[139]=-49.999996;
  pointY[139]=288.3333;
  pointX[140]=-49.999996;
  pointY[140]=285.0;
  pointX[141]=-49.999996;
  pointY[141]=283.3333;
  pointX[142]=-49.999996;
  pointY[142]=281.66666;
  pointX[143]=-49.999996;
  pointY[143]=281.66666;
  pointX[144]=-49.999996;
  pointY[144]=281.66666;
  pointX[145]=-54.999996;
  pointY[145]=295.0;
  pointX[146]=-54.999996;
  pointY[146]=296.66666;
  pointX[147]=-54.999996;
  pointY[147]=298.3333;
  pointX[148]=-54.999996;
  pointY[148]=300.0;
  pointX[149]=-56.666664;
  pointY[149]=301.66666;
  pointX[150]=-56.666664;
  pointY[150]=301.66666;
  pointX[151]=-56.666664;
  pointY[151]=308.3333;
  pointX[152]=-56.666664;
  pointY[152]=308.3333;
  pointX[153]=-61.666664;
  pointY[153]=318.3333;
  pointX[154]=-63.333332;
  pointY[154]=323.3333;
  pointX[155]=-65.0;
  pointY[155]=331.66666;
  pointX[156]=-66.666664;
  pointY[156]=335.0;
  pointX[157]=-66.666664;
  pointY[157]=336.66666;
  pointX[158]=-68.33333;
  pointY[158]=340.0;
  pointX[159]=-70.0;
  pointY[159]=343.3333;
  pointX[160]=-71.666664;
  pointY[160]=346.66666;
  pointX[161]=-73.33333;
  pointY[161]=350.0;
  pointX[162]=-75.0;
  pointY[162]=355.0;
  pointX[163]=-78.33333;
  pointY[163]=358.3333;
  pointX[164]=-78.33333;
  pointY[164]=360.0;
  pointX[165]=-80.0;
  pointY[165]=363.3333;
  pointX[166]=-80.0;
  pointY[166]=365.0;
  pointX[167]=-80.0;
  pointY[167]=365.0;
  pointX[168]=-83.33333;
  pointY[168]=366.66666;
  pointX[169]=-83.33333;
  pointY[169]=368.3333;
  pointX[170]=-86.666664;
  pointY[170]=368.3333;
  pointX[171]=-86.666664;
  pointY[171]=370.0;
  pointX[172]=-90.0;
  pointY[172]=370.0;
  pointX[173]=-91.666664;
  pointY[173]=370.0;
  pointX[174]=-101.666664;
  pointY[174]=370.0;
  pointX[175]=-111.666664;
  pointY[175]=370.0;
  pointX[176]=-121.666664;
  pointY[176]=370.0;
  pointX[177]=-128.33333;
  pointY[177]=370.0;
  pointX[178]=-133.33333;
  pointY[178]=370.0;
  pointX[179]=-138.33333;
  pointY[179]=370.0;
  pointX[180]=-138.33333;
  pointY[180]=370.0;
  pointX[181]=-151.66666;
  pointY[181]=370.0;
  pointX[182]=-160.0;
  pointY[182]=370.0;
  pointX[183]=-175.0;
  pointY[183]=373.3333;
  pointX[184]=-178.33333;
  pointY[184]=375.0;
  pointX[185]=-185.0;
  pointY[185]=376.66666;
  pointX[186]=-193.33333;
  pointY[186]=380.0;
  pointX[187]=-194.99998;
  pointY[187]=381.66666;
  pointX[188]=-196.66666;
  pointY[188]=383.3333;
  pointX[189]=-196.66666;
  pointY[189]=383.3333;
  pointX[190]=-199.99998;
  pointY[190]=386.66666;
  pointX[191]=-201.66666;
  pointY[191]=388.3333;
  pointX[192]=-201.66666;
  pointY[192]=388.3333;
  pointX[193]=-203.33333;
  pointY[193]=394.99997;
  pointX[194]=-204.99998;
  pointY[194]=396.66666;
  pointX[195]=-204.99998;
  pointY[195]=396.66666;
  pointX[196]=-204.99998;
  pointY[196]=404.99997;
  pointX[197]=-204.99998;
  pointY[197]=404.99997;
  pointX[198]=-204.99998;
  pointY[198]=411.66666;
  pointX[199]=-204.99998;
  pointY[199]=413.3333;
  pointX[200]=-203.33333;
  pointY[200]=414.99997;
  pointX[201]=-201.66666;
  pointY[201]=416.66666;
  pointX[202]=-199.99998;
  pointY[202]=418.3333;
  pointX[203]=-199.99998;
  pointY[203]=421.66666;
  pointX[204]=-198.33333;
  pointY[204]=421.66666;
  pointX[205]=-196.66666;
  pointY[205]=423.3333;
  pointX[206]=-194.99998;
  pointY[206]=423.3333;
  pointX[207]=-190.0;
  pointY[207]=423.3333;
  pointX[208]=-183.33333;
  pointY[208]=423.3333;
  pointX[209]=-180.0;
  pointY[209]=423.3333;
  pointX[210]=-175.0;
  pointY[210]=424.99997;
  pointX[211]=-171.66666;
  pointY[211]=424.99997;
  pointX[212]=-163.33333;
  pointY[212]=424.99997;
  pointX[213]=-155.0;
  pointY[213]=424.99997;
  pointX[214]=-150.0;
  pointY[214]=424.99997;
  pointX[215]=-150.0;
  pointY[215]=424.99997;
  pointX[216]=-136.66666;
  pointY[216]=423.3333;
  pointX[217]=-124.99999;
  pointY[217]=421.66666;
  pointX[218]=-118.33333;
  pointY[218]=421.66666;
  pointX[219]=-113.33333;
  pointY[219]=421.66666;
  pointX[220]=-109.99999;
  pointY[220]=421.66666;
  pointX[221]=-104.99999;
  pointY[221]=418.3333;
  pointX[222]=-99.99999;
  pointY[222]=418.3333;
  pointX[223]=-95.0;
  pointY[223]=416.66666;
  pointX[224]=-90.0;
  pointY[224]=416.66666;
  pointX[225]=-86.666664;
  pointY[225]=416.66666;
  pointX[226]=-81.666664;
  pointY[226]=416.66666;
  pointX[227]=-81.666664;
  pointY[227]=416.66666;
  pointX[228]=-80.0;
  pointY[228]=416.66666;
  pointX[229]=-78.33333;
  pointY[229]=416.66666;
  pointX[230]=-78.33333;
  pointY[230]=418.3333;
  pointX[231]=-78.33333;
  pointY[231]=419.99997;
  pointX[232]=-78.33333;
  pointY[232]=421.66666;
  pointX[233]=-78.33333;
  pointY[233]=424.99997;
  pointX[234]=-78.33333;
  pointY[234]=426.66666;
  pointX[235]=-78.33333;
  pointY[235]=428.3333;
  pointX[236]=-80.0;
  pointY[236]=428.3333;
  pointX[237]=-81.666664;
  pointY[237]=428.3333;
  pointX[238]=-83.33333;
  pointY[238]=428.3333;
  pointX[239]=-85.0;
  pointY[239]=429.99997;
  pointX[240]=-88.33333;
  pointY[240]=429.99997;
  pointX[241]=-90.0;
  pointY[241]=429.99997;
  pointX[242]=-91.666664;
  pointY[242]=429.99997;
  pointX[243]=-95.0;
  pointY[243]=429.99997;
  pointX[244]=-95.0;
  pointY[244]=429.99997;
  pointX[245]=-99.99999;
  pointY[245]=429.99997;
  pointX[246]=-101.666664;
  pointY[246]=429.99997;
  pointX[247]=-103.33333;
  pointY[247]=429.99997;
  pointX[248]=-104.99999;
  pointY[248]=429.99997;
  pointX[249]=-104.99999;
  pointY[249]=429.99997;
  pointX[250]=-106.666664;
  pointY[250]=429.99997;
  pointX[251]=-108.33333;
  pointY[251]=429.99997;
  pointX[252]=-111.666664;
  pointY[252]=429.99997;
  pointX[253]=-113.33333;
  pointY[253]=429.99997;
  pointX[254]=-114.99999;
  pointY[254]=429.99997;
  pointX[255]=-116.666664;
  pointY[255]=429.99997;
  pointX[256]=-119.99999;
  pointY[256]=429.99997;
  pointX[257]=-121.666664;
  pointY[257]=429.99997;
  pointX[258]=-124.99999;
  pointY[258]=429.99997;
  pointX[259]=-128.33333;
  pointY[259]=429.99997;
  pointX[260]=-130.0;
  pointY[260]=428.3333;
  pointX[261]=-133.33333;
  pointY[261]=428.3333;
  pointX[262]=-135.0;
  pointY[262]=426.66666;
  pointX[263]=-136.66666;
  pointY[263]=426.66666;
  pointX[264]=-138.33333;
  pointY[264]=426.66666;
  pointX[265]=-140.0;
  pointY[265]=424.99997;
  pointX[266]=-145.0;
  pointY[266]=424.99997;
  pointX[267]=-148.33333;
  pointY[267]=423.3333;
  pointX[268]=-153.33333;
  pointY[268]=421.66666;
  pointX[269]=-156.66666;
  pointY[269]=419.99997;
  pointX[270]=-160.0;
  pointY[270]=419.99997;
  pointX[271]=-161.66666;
  pointY[271]=418.3333;
  pointX[272]=-165.0;
  pointY[272]=418.3333;
  strokeFlag[28]=1;
  strokeFlag[39]=1;
  strokeFlag[44]=1;
  strokeFlag[46]=1;
  strokeFlag[47]=1;
  strokeFlag[50]=1;
  strokeFlag[51]=1;
  strokeFlag[53]=1;
  strokeFlag[60]=1;
  strokeFlag[62]=1;
  strokeFlag[64]=1;
  strokeFlag[80]=1;
  strokeFlag[81]=1;
  strokeFlag[82]=1;
  strokeFlag[83]=1;
  strokeFlag[84]=1;
  strokeFlag[85]=1;
  strokeFlag[86]=1;
  strokeFlag[87]=1;
  strokeFlag[88]=1;
  strokeFlag[89]=1;
  strokeFlag[90]=1;
  strokeFlag[91]=1;
  strokeFlag[92]=1;
  strokeFlag[93]=1;
  strokeFlag[94]=1;
  strokeFlag[155]=1;
  strokeFlag[156]=1;
  strokeFlag[157]=1;
  strokeFlag[158]=1;
  strokeFlag[159]=1;
  strokeFlag[160]=1;
  strokeFlag[161]=1;
  strokeFlag[162]=1;
  strokeFlag[163]=1;
  strokeFlag[164]=1;
  strokeFlag[165]=1;
  strokeFlag[166]=1;
  strokeFlag[167]=1;
  strokeFlag[168]=1;
  strokeFlag[169]=1;
  strokeFlag[170]=1;
  strokeFlag[171]=1;
  strokeFlag[172]=1;
  strokeFlag[173]=1;
  strokeFlag[174]=1;
  strokeFlag[175]=1;
  strokeFlag[176]=1;
  strokeFlag[177]=1;
  strokeFlag[178]=1;
  strokeFlag[179]=1;
  strokeFlag[180]=1;
  strokeFlag[181]=1;
  strokeFlag[182]=1;
  strokeFlag[183]=1;
  strokeFlag[184]=1;
  strokeFlag[185]=1;
  strokeFlag[186]=1;
  strokeFlag[187]=1;
  strokeFlag[188]=1;
  strokeFlag[189]=1;
  strokeFlag[190]=1;
  strokeFlag[191]=1;
  strokeFlag[192]=1;
  strokeFlag[193]=1;
  strokeFlag[194]=1;
  strokeFlag[195]=1;
  strokeFlag[196]=1;
  strokeFlag[197]=1;
  strokeFlag[198]=1;
  strokeFlag[199]=1;
  strokeFlag[200]=1;
  strokeFlag[201]=1;
  strokeFlag[202]=1;
  strokeFlag[203]=1;
  strokeFlag[204]=1;
  strokeFlag[205]=1;
  strokeFlag[206]=1;
  strokeFlag[207]=1;
  strokeFlag[208]=1;
  strokeFlag[209]=1;
  strokeFlag[210]=1;
  strokeFlag[211]=1;
  strokeFlag[212]=1;
  strokeFlag[213]=1;
  strokeFlag[214]=1;
  strokeFlag[215]=1;
  strokeFlag[216]=1;
  strokeFlag[217]=1;
  strokeFlag[218]=1;
  strokeFlag[219]=1;
  strokeFlag[220]=1;
  strokeFlag[221]=1;
  strokeFlag[222]=1;
  strokeFlag[223]=1;
  strokeFlag[224]=1;
  strokeFlag[225]=1;
  strokeFlag[226]=1;
  strokeFlag[227]=1;
  strokeFlag[228]=1;
  strokeFlag[229]=1;
  strokeFlag[230]=1;
  strokeFlag[231]=1;
  strokeFlag[232]=1;
  strokeFlag[233]=1;
  strokeFlag[234]=1;
  strokeFlag[235]=1;
  strokeFlag[236]=1;
  strokeFlag[237]=1;
  strokeFlag[238]=1;
  strokeFlag[239]=1;
  strokeFlag[240]=1;
  strokeFlag[241]=1;
  strokeFlag[242]=1;
  strokeFlag[243]=1;
  strokeFlag[244]=1;
  strokeFlag[245]=1;
  strokeFlag[246]=1;
  strokeFlag[247]=1;
  strokeFlag[248]=1;
  strokeFlag[249]=1;
  strokeFlag[250]=1;
  strokeFlag[251]=1;
  strokeFlag[252]=1;
  strokeFlag[253]=1;
  strokeFlag[254]=1;
  strokeFlag[255]=1;
  strokeFlag[256]=1;
  strokeFlag[257]=1;
  strokeFlag[258]=1;
  strokeFlag[259]=1;
  strokeFlag[260]=1;
  strokeFlag[261]=1;
  strokeFlag[262]=1;
  strokeFlag[263]=1;
  strokeFlag[264]=1;
  strokeFlag[265]=1;
  strokeFlag[266]=1;
  strokeFlag[267]=1;
  strokeFlag[268]=1;
  strokeFlag[269]=1;
  strokeFlag[270]=1;
  strokeFlag[271]=1;
  strokeFlag[272]=1;
  moveFlag[41]=1;
  moveFlag[45]=1;
  moveFlag[49]=1;
  moveFlag[53]=1;
  moveFlag[56]=1;
  moveFlag[57]=1;
  moveFlag[61]=1;
  moveFlag[63]=1;
  moveFlag[80]=1;
  moveFlag[81]=1;
  moveFlag[82]=1;
  moveFlag[83]=1;
  moveFlag[84]=1;
  moveFlag[85]=1;
  moveFlag[86]=1;
  moveFlag[87]=1;
  moveFlag[88]=1;
  moveFlag[89]=1;
  moveFlag[90]=1;
  moveFlag[91]=1;
  moveFlag[92]=1;
  moveFlag[93]=1;
  moveFlag[94]=1;
  moveFlag[95]=1;
  moveFlag[96]=1;
  moveFlag[97]=1;
  moveFlag[98]=1;
  moveFlag[99]=1;
  moveFlag[100]=1;
  moveFlag[101]=1;
  moveFlag[102]=1;
  moveFlag[103]=1;
  moveFlag[104]=1;
  moveFlag[105]=1;
  moveFlag[106]=1;
  moveFlag[107]=1;
  moveFlag[108]=1;
  moveFlag[109]=1;
  moveFlag[110]=1;
  moveFlag[111]=1;
  moveFlag[112]=1;
  moveFlag[113]=1;
  moveFlag[114]=1;
  moveFlag[115]=1;
  moveFlag[116]=1;
  moveFlag[117]=1;
  moveFlag[118]=1;
  moveFlag[119]=1;
  moveFlag[120]=1;
  moveFlag[121]=1;
  moveFlag[122]=1;
  moveFlag[123]=1;
  moveFlag[124]=1;
  moveFlag[125]=1;
  moveFlag[126]=1;
  moveFlag[127]=1;
  moveFlag[128]=1;
  moveFlag[159]=1;
  moveFlag[160]=1;
  moveFlag[161]=1;
  moveFlag[162]=1;
  moveFlag[163]=1;
  moveFlag[164]=1;
  moveFlag[165]=1;
  moveFlag[166]=1;
  moveFlag[167]=1;
  moveFlag[168]=1;
  moveFlag[169]=1;
  moveFlag[170]=1;
  moveFlag[171]=1;
  moveFlag[172]=1;
  moveFlag[173]=1;
  moveFlag[174]=1;
  moveFlag[175]=1;
  moveFlag[176]=1;
  moveFlag[177]=1;
  moveFlag[178]=1;
  moveFlag[179]=1;
  moveFlag[180]=1;
  moveFlag[181]=1;
  moveFlag[182]=1;
  moveFlag[183]=1;
  moveFlag[184]=1;
  moveFlag[185]=1;
  moveFlag[186]=1;
  moveFlag[187]=1;
  moveFlag[188]=1;
  moveFlag[189]=1;
  moveFlag[190]=1;
  moveFlag[191]=1;
  moveFlag[192]=1;
  moveFlag[193]=1;
  moveFlag[194]=1;
  moveFlag[195]=1;
  moveFlag[196]=1;
  moveFlag[197]=1;
  moveFlag[198]=1;
  moveFlag[199]=1;
  moveFlag[200]=1;
  moveFlag[201]=1;
  moveFlag[202]=1;
  moveFlag[203]=1;
  moveFlag[204]=1;
  moveFlag[205]=1;
  moveFlag[206]=1;
  moveFlag[207]=1;
  moveFlag[208]=1;
  moveFlag[209]=1;
  moveFlag[210]=1;
  moveFlag[211]=1;
  moveFlag[212]=1;
  moveFlag[213]=1;
  moveFlag[214]=1;
  moveFlag[215]=1;
  moveFlag[216]=1;
  moveFlag[217]=1;
  moveFlag[218]=1;
  moveFlag[219]=1;
  moveFlag[220]=1;
  moveFlag[221]=1;
  moveFlag[222]=1;
  moveFlag[223]=1;
  moveFlag[224]=1;
  moveFlag[225]=1;
  moveFlag[226]=1;
  moveFlag[227]=1;
  moveFlag[228]=1;
  moveFlag[229]=1;
  moveFlag[230]=1;
  moveFlag[231]=1;
  moveFlag[232]=1;
  moveFlag[233]=1;
  moveFlag[234]=1;
  moveFlag[235]=1;
  moveFlag[236]=1;
  moveFlag[237]=1;
  moveFlag[238]=1;
  moveFlag[239]=1;
  moveFlag[240]=1;
  moveFlag[241]=1;
  moveFlag[242]=1;
  moveFlag[243]=1;
  moveFlag[244]=1;
  moveFlag[245]=1;
  moveFlag[246]=1;
  moveFlag[247]=1;
  moveFlag[248]=1;
  moveFlag[249]=1;
  moveFlag[250]=1;
  moveFlag[251]=1;
  moveFlag[252]=1;
  moveFlag[253]=1;
  moveFlag[254]=1;
  moveFlag[255]=1;
  moveFlag[256]=1;
  moveFlag[257]=1;
  moveFlag[258]=1;
  moveFlag[259]=1;
  moveFlag[260]=1;
  moveFlag[261]=1;
  moveFlag[262]=1;
  moveFlag[263]=1;
  moveFlag[264]=1;
  moveFlag[265]=1;
  moveFlag[266]=1;
  moveFlag[267]=1;
  moveFlag[268]=1;
  moveFlag[269]=1;
  moveFlag[270]=1;
  moveFlag[271]=1;
  moveFlag[272]=1;
  moveFlag[45]=1;
  moveFlag[46]=1;
  moveFlag[47]=1;
  moveFlag[54]=1;
  moveFlag[57]=1;
  moveFlag[58]=1;
  moveFlag[59]=1;
  moveFlag[61]=1;
  moveFlag[66]=1;
  moveFlag[67]=1;
  moveFlag[68]=1;
  moveFlag[69]=1;
  moveFlag[70]=1;
  moveFlag[71]=1;
  moveFlag[72]=1;
  moveFlag[73]=1;
  moveFlag[74]=1;
  moveFlag[75]=1;
  moveFlag[76]=1;
  moveFlag[77]=1;
  moveFlag[78]=1;
  moveFlag[79]=1;
  moveFlag[82]=1;
  moveFlag[83]=1;
  moveFlag[84]=1;
  moveFlag[86]=1;
  moveFlag[87]=1;
  moveFlag[89]=1;
  moveFlag[92]=1;
  moveFlag[93]=1;
  moveFlag