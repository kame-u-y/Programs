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
  vertexX[0][0]=246.66666;
  vertexY[0][0]=108.33333;
  vertexX[0][0]=246.66666;
  vertexY[0][0]=108.33333;
  vertexX[0][0]=246.66666;
  vertexY[0][0]=108.33333;
  vertexX[0][0]=246.66666;
  vertexY[0][0]=108.33333;
  vertexX[0][0]=246.66666;
  vertexY[0][0]=108.33333;
  vertexX[1][0]=630.0;
  vertexY[1][0]=265.0;
  vertexX[1][0]=630.0;
  vertexY[1][0]=265.0;
  vertexX[1][0]=630.0;
  vertexY[1][0]=265.0;
  vertexX[1][0]=630.0;
  vertexY[1][0]=265.0;
  vertexX[1][0]=630.0;
  vertexY[1][0]=265.0;
  vertexX[1][0]=630.0;
  vertexY[1][0]=265.0;
  vertexX[2][0]=181.66666;
  vertexY[2][0]=428.3333;
  vertexX[2][0]=181.66666;
  vertexY[2][0]=428.3333;
  vertexX[2][0]=181.66666;
  vertexY[2][0]=428.3333;
  vertexX[2][0]=181.66666;
  vertexY[2][0]=428.3333;
  vertexX[3][0]=526.6666;
  vertexY[3][0]=461.66666;
  vertexX[4][0]=523.3333;
  vertexY[4][0]=321.66666;
  vertexX[4][0]=523.3333;
  vertexY[4][0]=321.66666;
  vertexX[4][0]=523.3333;
  vertexY[4][0]=321.66666;
  vertexX[4][0]=523.3333;
  vertexY[4][0]=321.66666;
  vertexX[4][0]=523.3333;
  vertexY[4][0]=321.66666;
  vertexX[5][0]=591.6666;
  vertexY[5][0]=194.99998;
  vertexX[5][0]=591.6666;
  vertexY[5][0]=194.99998;
  vertexX[5][0]=591.6666;
  vertexY[5][0]=194.99998;
  vertexX[5][0]=591.6666;
  vertexY[5][0]=194.99998;
  vertexX[6][0]=635.0;
  vertexY[6][0]=248.33333;
  vertexX[6][0]=635.0;
  vertexY[6][0]=248.33333;
  vertexX[7][0]=531.6666;
  vertexY[7][0]=123.33333;
  vertexX[8][0]=758.3333;
  vertexY[8][0]=83.33333;
  vertexX[9][0]=760.0;
  vertexY[9][0]=190.0;
  vertexX[10][0]=824.99994;
  vertexY[10][0]=306.66666;
  vertexX[11][0]=720.0;
  vertexY[11][0]=370.0;
  vertexX[12][0]=583.3333;
  vertexY[12][0]=399.99997;
  vertexX[13][0]=443.3333;
  vertexY[13][0]=404.99997;
  vertexX[14][0]=308.3333;
  vertexY[14][0]=313.3333;
  vertexX[15][0]=399.99997;
  vertexY[15][0]=190.0;
  vertexX[16][0]=424.99997;
  vertexY[16][0]=51.666664;
  vertexX[17][0]=358.3333;
  vertexY[17][0]=48.333332;
  vertexX[18][0]=310.0;
  vertexY[18][0]=86.666664;
  vertexX[19][0]=223.33333;
  vertexY[19][0]=146.66666;
  vertexX[20][0]=211.66666;
  vertexY[20][0]=190.0;
  vertexX[21][0]=426.66666;
  vertexY[21][0]=276.66666;
  vertexX[22][0]=509.99997;
  vertexY[22][0]=231.66666;
  vertexX[22][0]=509.99997;
  vertexY[22][0]=231.66666;
  vertexX[23][0]=418.3333;
  vertexY[23][0]=348.3333;
  vertexX[24][0]=345.0;
  vertexY[24][0]=193.33333;
  vertexX[25][0]=409.99997;
  vertexY[25][0]=193.33333;
  vertexX[26][0]=488.3333;
  vertexY[26][0]=233.33333;
  vertexX[27][0]=474.99997;
  vertexY[27][0]=326.66666;
  vertexX[28][0]=409.99997;
  vertexY[28][0]=360.0;
  vertexX[28][0]=409.99997;
  vertexY[28][0]=360.0;
  vertexX[29][0]=416.66666;
  vertexY[29][0]=253.33333;
  vertexX[30][0]=499.99997;
  vertexY[30][0]=268.3333;
  vertexX[30][0]=499.99997;
  vertexY[30][0]=268.3333;
  vertexX[31][0]=396.66666;
  vertexY[31][0]=238.33333;
  vertexX[32][0]=494.99997;
  vertexY[32][0]=193.33333;
  vertexX[33][0]=546.6666;
  vertexY[33][0]=199.99998;
  vertexX[34][0]=668.3333;
  vertexY[34][0]=285.0;
  vertexX[35][0]=758.3333;
  vertexY[35][0]=296.66666;
  vertexX[35][0]=758.3333;
  vertexY[35][0]=296.66666;
  vertexX[35][0]=758.3333;
  vertexY[35][0]=296.66666;
  vertexX[36][0]=585.0;
  vertexY[36][0]=270.0;
  vertexX[37][0]=686.6666;
  vertexY[37][0]=244.99998;
  vertexX[37][0]=686.6666;
  vertexY[37][0]=244.99998;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997;
  vertexX[38][0]=711.6666;
  vertexY[38][0]=454.99997