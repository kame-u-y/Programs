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
  pointX[0]=238.33333;
  pointY[0]=171.66666;
  pointX[1]=248.33333;
  pointY[1]=163.33333;
  pointX[2]=248.33333;
  pointY[2]=163.33333;
  pointX[3]=295.0;
  pointY[3]=146.66666;
  pointX[4]=295.0;
  pointY[4]=146.66666;
  pointX[5]=295.0;
  pointY[5]=146.66666;
  pointX[6]=295.0;
  pointY[6]=146.66666;
  pointX[7]=363.3333;
  pointY[7]=136.66666;
  pointX[8]=363.3333;
  pointY[8]=136.66666;
  pointX[9]=363.3333;
  pointY[9]=136.66666;
  pointX[10]=419.99997;
  pointY[10]=135.0;
  pointX[11]=428.3333;
  pointY[11]=135.0;
  pointX[12]=488.3333;
  pointY[12]=148.33333;
  pointX[13]=511.66666;
  pointY[13]=253.33333;
  pointX[14]=511.66666;
  pointY[14]=253.33333;
  pointX[15]=506.66666;
  pointY[15]=263.3333;
  pointX[16]=506.66666;
  pointY[16]=265.0;
  pointX[17]=506.66666;
  pointY[17]=265.0;
  pointX[18]=478.3333;
  pointY[18]=291.66666;
  pointX[19]=478.3333;
  pointY[19]=291.66666;
  pointX[20]=473.3333;
  pointY[20]=293.3333;
  pointX[21]=443.3333;
  pointY[21]=300.0;
  pointX[22]=443.3333;
  pointY[22]=300.0;
  pointX[23]=441.66666;
  pointY[23]=300.0;
  pointX[24]=436.66666;
  pointY[24]=296.66666;
  pointX[25]=431.66666;
  pointY[25]=286.66666;
  pointX[26]=431.66666;
  pointY[26]=278.3333;
  pointX[27]=429.99997;
  pointY[27]=271.66666;
  pointX[28]=429.99997;
  pointY[28]=271.66666;
  pointX[29]=429.99997;
  pointY[29]=271.66666;
  pointX[30]=434.99997;
  pointY[30]=254.99998;
  pointX[31]=436.66666;
  pointY[31]=253.33333;
  pointX[32]=449.99997;
  pointY[32]=241.66666;
  pointX[33]=456.66666;
  pointY[33]=238.33333;
  pointX[34]=456.66666;
  pointY[34]=238.33333;
  pointX[35]=483.3333;
  pointY[35]=226.66666;
  pointX[36]=486.66666;
  pointY[36]=224.99998;
  pointX[37]=581.6666;
  pointY[37]=218.33333;
  pointX[38]=581.6666;
  pointY[38]=218.33333;
  pointX[39]=581.6666;
  pointY[39]=218.33333;
  pointX[40]=638.3333;
  pointY[40]=226.66666;
  pointX[41]=638.3333;
  pointY[41]=226.66666;
  pointX[42]=666.6666;
  pointY[42]=234.99998;
  pointX[43]=670.0;
  pointY[43]=236.66666;
  pointX[44]=711.6666;
  pointY[44]=270.0;
  pointX[45]=711.6666;
  pointY[45]=270.0;
  pointX[46]=711.6666;
  pointY[46]=270.0;
  pointX[47]=750.0;
  pointY[47]=356.66666;
  pointX[48]=750.0;
  pointY[48]=361.66666;
  pointX[49]=750.0;
  pointY[49]=361.66666;
  pointX[50]=745.0;
  pointY[50]=413.3333;
  pointX[51]=745.0;
  pointY[51]=413.3333;
  pointX[52]=745.0;
  pointY[52]=413.3333;
  pointX[53]=745.0;
  pointY[53]=413.3333;
  pointX[54]=745.0;
  pointY[54]=413.3333;
  pointX[55]=725.0;
  pointY[55]=459.99997;
  pointX[56]=725.0;
  pointY[56]=461.66666;
  pointX[57]=725.0;
  pointY[57]=461.66666;
  pointX[58]=725.0;
  pointY[58]=461.66666;
  pointX[59]=725.0;
  pointY[59]=461.66666;
  pointX[60]=721.6666;
  pointY[60]=468.3333;
  pointX[61]=720.0;
  pointY[61]=469.99997;
  lineX1[1]=213.33333;
  lineY1[1]=241.66666;
  lineX2[1]=330.0;
  lineY2[1]=365.0;
  lineX1[2]=783.3333;
  lineY1[2]=131.66666;
  lineX2[2]=686.6666;
  lineY2[2]=276.66666;
  lineX1[3]=375.0;
  lineY1[3]=483.3333;
  lineX2[3]=518.3333;
  lineY2[3]=388.3333;
  lineX1[4]=715.0;
  lineY1[4]=466.66666;
  lineX2[4]=590.0;
  lineY2[4]=368.3333;
  rectX[1]=218.33333;
  rectY[1]=71.666664;
  rectW[1]=114.999985;
  rectH[1]=119.99999;
  rectX[2]=711.6666;
  rectY[2]=96.666664;
  rectW[2]=-161.66663;
  rectH[2]=136.66666;
  rectX[3]=343.3333;
  rectY[3]=399.99997;
  rectW[3]=131.66666;
  rectH[3]=-91.66666;
  vertexX[0][0]=146.66666;
  vertexY[0][0]=301.66666;
  vertexX[0][1]=91.666664;
  vertexY[0][1]=361.66666;
  vertexX[0][2]=176.66666;
  vertexY[0][2]=468.3333;
  vertexX[0][3]=270.0;
  vertexY[0][3]=378.3333;
  vertexX[1][0]=853.3333;
  vertexY[1][0]=305.0;
  vertexX[1][1]=758.3333;
  vertexY[1][1]=399.99997;
  vertexX[1][2]=936.6666;
  vertexY[1][2]=358.3333;
  vertexX[1][3]=936.6666;
  vertexY[1][3]=358.3333;
  vertexX[1][4]=879.99994;
  vertexY[1][4]=239.99998;
  vertexX[1][5]=871.6666;
  vertexY[1][5]=448.3333;
  vertexX[1][6]=789.99994;
  vertexY[1][6]=463.3333;
  ellipX[1]=849.99994;
  ellipY[1]=78.33333;
  ellipR1[1]=66.66669;
  ellipR2[1]=70.0;
  ellipX[2]=826.6666;
  ellipY[2]=244.99998;
  ellipR1[2]=-48.333313;
  ellipR2[2]=58.33333;
  ellipX[3]=668.3333;
  ellipY[3]=355.0;
  ellipR1[3]=50.0;
  ellipR2[3]=51.666656;
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
  lineStrokeFlag[1]=1;
  rectFillFlag[1]=1;
  rectFillFlag[3]=1;
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
  vertexFillFlag[1]=1;
  ellipFillFlag[2]=1;
  ellipFillFlag[3]=1;
  lineStrokeFlag[4]=1;
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
  lineMoveFlag[1]=1;
  rectMoveFlag[1]=1;
  lineMoveFlag[3]=1;
  rectMoveFlag[3]=1;
  pointMoveFlag[8]=1;
  pointMoveFlag[10]=1;
  pointMoveFlag[13]=1;
  pointMoveFlag[17]=1;
  pointMoveFlag[19]=1;
  pointMoveFlag[24]=1;
  pointMoveFlag[25]=1;
  pointMoveFlag[33]=1;
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
  pointMoveFlag[54]=1;
  pointMoveFlag[55]=1;
  pointMoveFlag[56]=1;
  pointMoveFlag[57]=1;
  pointMoveFlag[58]=1;
  pointMoveFlag[59]=1;
  pointMoveFlag[60]=1;
  pointMoveFlag[61]=1;
  vertexMoveFlag[1]=1;
  ellipMoveFlag[1]=1;
  lineMoveFlag[2]=1;
  rectMoveFlag[2]=1;
  ellipMoveFlag[2]=1;
  lineMoveFlag[3]=1;
  ellipMoveFlag[3]=1;
  lineMoveFlag[4]=1;
  rectX[5]=343.3333;
  rectY[5]=166.66666;
  rectW[5]=130.0;
  rectH[5]=125.0;
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
