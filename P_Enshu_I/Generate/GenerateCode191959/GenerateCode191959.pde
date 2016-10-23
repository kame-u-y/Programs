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
  vertexX[0][0]=478.3333;
  vertexY[0][0]=96.666664;
  vertexX[0][1]=413.3333;
  vertexY[0][1]=229.99998;
  vertexX[0][2]=271.66666;
  vertexY[0][2]=233.33333;
  vertexX[0][3]=386.66666;
  vertexY[0][3]=365.0;
  vertexX[0][4]=370.0;
  vertexY[0][4]=504.99997;
  vertexX[0][5]=525.0;
  vertexY[0][5]=419.99997;
  vertexX[0][6]=673.3333;
  vertexY[0][6]=498.3333;
  vertexX[0][7]=625.0;
  vertexY[0][7]=343.3333;
  vertexX[0][8]=750.0;
  vertexY[0][8]=221.66666;
  vertexX[0][9]=558.3333;
  vertexY[0][9]=219.99998;
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
