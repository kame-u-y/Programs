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
  pointX[0]=214.99998;
  pointY[0]=28.333332;
  pointX[1]=261.66666;
  pointY[1]=41.666664;
  pointX[2]=295.0;
  pointY[2]=56.666664;
  pointX[3]=313.3333;
  pointY[3]=65.0;
  pointX[4]=325.0;
  pointY[4]=70.0;
  pointX[5]=325.0;
  pointY[5]=71.666664;
  pointX[6]=325.0;
  pointY[6]=71.666664;
  pointX[7]=325.0;
  pointY[7]=78.33333;
  pointX[8]=325.0;
  pointY[8]=90.0;
  pointX[9]=325.0;
  pointY[9]=99.99999;
  pointX[10]=316.66666;
  pointY[10]=109.99999;
  pointX[11]=305.0;
  pointY[11]=116.666664;
  pointX[12]=288.3333;
  pointY[12]=119.99999;
  pointX[13]=271.66666;
  pointY[13]=123.33333;
  pointX[14]=265.0;
  pointY[14]=123.33333;
  pointX[15]=265.0;
  pointY[15]=123.33333;
  pointX[16]=260.0;
  pointY[16]=114.99999;
  pointX[17]=268.3333;
  pointY[17]=106.666664;
  pointX[18]=315.0;
  pointY[18]=96.666664;
  pointX[19]=355.0;
  pointY[19]=96.666664;
  pointX[20]=404.99997;
  pointY[20]=103.33333;
  pointX[21]=446.66666;
  pointY[21]=128.33333;
  pointX[22]=466.66666;
  pointY[22]=158.33333;
  pointX[23]=473.3333;
  pointY[23]=203.33333;
  pointX[24]=468.3333;
  pointY[24]=248.33333;
  pointX[25]=456.66666;
  pointY[25]=270.0;
  pointX[26]=443.3333;
  pointY[26]=288.3333;
  pointX[27]=433.3333;
  pointY[27]=295.0;
  pointX[28]=424.99997;
  pointY[28]=295.0;
  pointX[29]=431.66666;
  pointY[29]=291.66666;
  pointX[30]=454.99997;
  pointY[30]=288.3333;
  pointX[31]=473.3333;
  pointY[31]=288.3333;
  pointX[32]=494.99997;
  pointY[32]=295.0;
  pointX[33]=494.99997;
  pointY[33]=313.3333;
  pointX[34]=484.99997;
  pointY[34]=333.3333;
  pointX[35]=451.66666;
  pointY[35]=351.66666;
  pointX[36]=413.3333;
  pointY[36]=355.0;
  pointX[37]=393.3333;
  pointY[37]=346.66666;
  pointX[38]=393.3333;
  pointY[38]=346.66666;
  pointX[39]=368.3333;
  pointY[39]=288.3333;
  pointX[40]=396.66666;
  pointY[40]=241.66666;
  pointX[41]=396.66666;
  pointY[41]=241.66666;
  pointX[42]=504.99997;
  pointY[42]=201.66666;
  pointX[43]=536.6666;
  pointY[43]=201.66666;
  pointX[44]=573.3333;
  pointY[44]=209.99998;
  pointX[45]=578.3333;
  pointY[45]=244.99998;
  pointX[46]=570.0;
  pointY[46]=275.0;
  pointX[47]=536.6666;
  pointY[47]=311.66666;
  pointX[48]=464.99997;
  pointY[48]=348.3333;
  pointX[49]=384.99997;
  pointY[49]=358.3333;
  pointX[50]=321.66666;
  pointY[50]=358.3333;
  pointX[51]=283.3333;
  pointY[51]=358.3333;
  pointX[52]=249.99998;
  pointY[52]=348.3333;
  pointX[53]=239.99998;
  pointY[53]=316.66666;
  lineX1[1]=234.99998;
  lineY1[1]=406.66666;
  lineX2[1]=300.0;
  lineY2[1]=451.66666;
  lineX1[2]=394.99997;
  lineY1[2]=458.3333;
  lineX2[2]=464.99997;
  lineY2[2]=384.99997;
  lineX1[3]=501.66666;
  lineY1[3]=469.99997;
  lineX2[3]=403.3333;
  lineY2[3]=535.0;
  lineX1[4]=340.0;
  lineY1[4]=523.3333;
  lineX2[4]=260.0;
  lineY2[4]=508.3333;
  rectX[1]=646.6666;
  rectY[1]=78.33333;
  rectW[1]=168.33331;
  rectH[1]=95.0;
  rectX[2]=650.0;
  rectY[2]=360.0;
  rectW[2]=113.33331;
  rectH[2]=-113.33334;
  rectX[3]=879.99994;
  rectY[3]=243.33333;
  rectW[3]=-70.0;
  rectH[3]=209.99998;
  rectX[4]=816.6666;
  rectY[4]=491.66666;
  rectW[4]=-186.66663;
  rectH[4]=-46.666687;
  vertexX[0][0]=116.666664;
  vertexY[0][0]=316.66666;
  vertexX[0][1]=78.33333;
  vertexY[0][1]=368.3333;
  vertexX[0][2]=268.3333;
  vertexY[0][2]=239.99998;
  vertexX[0][3]=199.99998;
  vertexY[0][3]=411.66666;
  vertexX[0][4]=146.66666;
  vertexY[0][4]=193.33333;
  vertexX[0][5]=340.0;
  vertexY[0][5]=378.3333;
  vertexX[0][6]=51.666664;
  vertexY[0][6]=423.3333;
  vertexX[0][7]=116.666664;
  vertexY[0][7]=323.3333;
  ellipX[1]=423.3333;
  ellipY[1]=135.0;
  ellipR1[1]=160.0;
  ellipR2[1]=133.33331;
  ellipX[2]=583.3333;
  ellipY[2]=266.66666;
  ellipR1[2]=-180.0;
  ellipR2[2]=-133.33333;
  ellipX[3]=403.3333;
  ellipY[3]=135.0;
  ellipR1[3]=151.66669;
  ellipR2[3]=111.66666;
  ellipX[4]=555.0;
  ellipY[4]=246.66666;
  ellipR1[4]=-96.66669;
  ellipR2[4]=105.0;
  ellipX[5]=458.3333;
  ellipY[5]=350.0;
  ellipR1[5]=83.33331;
  ellipR2[5]=-110.000015;
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
  lineStrokeFlag[1]=1;
  rectFillFlag[1]=1;
  ellipFillFlag[1]=1;
  rectFillFlag[2]=1;
  ellipFillFlag[2]=1;
  ellipFillFlag[3]=1;
  ellipFillFlag[4]=1;
  ellipFillFlag[5]=1;
  pointStrokeFlag[35]=1;
  pointStrokeFlag[36]=1;
  pointStrokeFlag[37]=1;
  pointStrokeFlag[38]=1;
  pointStrokeFlag[48]=1;
  pointStrokeFlag[49]=1;
  pointStrokeFlag[50]=1;
  pointStrokeFlag[51]=1;
  pointStrokeFlag[52]=1;
  lineStrokeFlag[1]=1;
  rectFillFlag[2]=1;
  ellipFillFlag[5]=1;
  pointStrokeFlag[35]=1;
  pointStrokeFlag[36]=1;
  pointStrokeFlag[37]=1;
  pointStrokeFlag[38]=1;
  pointStrokeFlag[48]=1;
  pointStrokeFlag[49]=1;
  pointStrokeFlag[50]=1;
  pointStrokeFlag[51]=1;
  pointStrokeFlag[52]=1;
  lineStrokeFlag[1]=1;
  lineStrokeFlag[2]=1;
  rectFillFlag[2]=1;
  lineStrokeFlag[3]=1;
  lineStrokeFlag[4]=1;
  ellipFillFlag[5]=1;
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
  pointStrokeFlag[48]=1;
  pointStrokeFlag[49]=1;
  pointStrokeFlag[50]=1;
  pointStrokeFlag[51]=1;
  pointStrokeFlag[52]=1;
  pointStrokeFlag[53]=1;
  vertexFillFlag[0]=1;
  lineStrokeFlag[1]=1;
  lineStrokeFlag[2]=1;
  lineStrokeFlag[3]=1;
  lineStrokeFlag[4]=1;
  ellipFillFlag[5]=1;
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
  lineMoveFlag[1]=1;
  ellipMoveFlag[1]=1;
  lineMoveFlag[2]=1;
  rectMoveFlag[2]=1;
  ellipMoveFlag[2]=1;
  lineMoveFlag[3]=1;
  rectMoveFlag[3]=1;
  ellipMoveFlag[3]=1;
  rectMoveFlag[4]=1;
  ellipMoveFlag[4]=1;
  ellipMoveFlag[5]=1;
  pointMoveFlag[45]=1;
  pointMoveFlag[46]=1;
  rectMoveFlag[1]=1;
  rectMoveFlag[2]=1;
  rectMoveFlag[4]=1;
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
