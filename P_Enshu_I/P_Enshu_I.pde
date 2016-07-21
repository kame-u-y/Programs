//P_Enshu_I.pde
//1-4-14 亀田裕也
//P演習Iの授業風景の模倣
/*
●概要
  PCの画面のボタンをクリックするとそこに書いてあるそれぞれの図形を描くことができる。
  これを使えば、一瞬で授業課題を完成できるかも？
  描いたものはEnterキーでGenerateフォルダにpdeファイルとして生成。
●条件
  ①配列:たくさんの図形を表示するため、たくさんのフラグを扱うために利用。
  ②繰り返し:主に配列の繰り返しに利用
  ③関数:それぞれの図形ごとに描写、座標決定などをまとめるために利用
  ④条件分岐:いろいろな分岐に利用
  ⑤アニメーション:移動フラグが立つとアニメーション開始
●こだわり
  図形を描くときに、ドラッグしながら大きさを決められるようにしたこと。
  多角形がどんな形でもちゃんと跳ね返るようにしたこと。
  できる限りスムーズに操作できるように、どの方向でも条件を満たせるように設定したこと。
  P演習Iらしく、作ったイラストを生成して提出できるようなスケッチにしたこと。
*/

PrintWriter output;          //pdeファイルを出力するためのoutputを定義
PFont myFont;                //日本語表記のため
float transMouseX;           //座標軸移動後のmouseX
float transMouseY;           //座標軸移動後のmouseY
float scaleMouseX;           //縮小後のmouseX
float scaleMouseY;           //縮小後のscaleMouseY

int point;                   //ポイントを選択
int line;                    //ラインを選択
int rect;                    //レクトを選択
int vertex;                  //バーテックスを選択
int ellipse;                 //エリプスを選択
int fill;                    //フィルを選択
int move;                    //ムーブを選択

int [] fillFinishFlag = new int [500];    //色塗り終了フラグ
int [] moveFinishFlag = new int [500];   //移動処理完了フラグ
//////////////////////////////////////////////////////////////////////////////
//////////////////*ポイントを描くための要素*/////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
float [] pointX = new float [5000];           //ポイントのx座標
float [] pointY = new float [5000];           //ポイントのy座標
float [] pointVX = new float [5000];          //ポイントのx座標方向速度
float [] pointVY = new float [5000];          //ポイントのy座標方向速度
int P;                                    //配列を選択する変数
int [] pointStrokeFlag = new int [5000];  //ポイントの色塗りフラグ
int [] pointMoveFlag = new int [5000];    //ポイントの移動フラグ
int [] pointMoveFLAGX = new int [5000];   //ポイントのx向き移動フラグ
int [] pointMoveFLAGY = new int [5000];   //ポイントのy向き移動フラグ
/////////////ポイントを描く////////////////////////////////////////////////////
void drawPoint() {
  strokeWeight(10);
  for (int p=0; p<5000; p++) {
    if (pointX[p]==0 && pointY[p]==0) {
      continue;
    }
    if (pointStrokeFlag[p]==1) {
      stroke(255, 0, 0);
    } else {
      stroke(0);
    }
    if (pointMoveFlag[p]==1) {
      //ポイントのx座標移動判定
      if (pointX[p]>width) {
        pointX[p]=width;
        pointMoveFLAGX[p]=1;
      }
      if (pointX[p]<0) {
        pointX[p]=0;
        pointMoveFLAGX[p]=0;
      }
      if (pointMoveFLAGX[p]==0) pointX[p]=pointX[p]+pointVX[p];
      if (pointMoveFLAGX[p]==1) pointX[p]=pointX[p]-pointVX[p];
      //ポイントのy座標移動判定
      if (pointY[p]>height) {
        pointY[p]=height;
        pointMoveFLAGY[p]=1;
      }
      if (pointY[p]<0) {
        pointY[p]=0;
        pointMoveFLAGY[p]=0;
      }
      if (pointMoveFLAGY[p]==0) pointY[p]=pointY[p]+pointVY[p];
      if (pointMoveFLAGY[p]==1) pointY[p]=pointY[p]-pointVY[p];
    }
    point(pointX[p], pointY[p]);
  }
  strokeWeight(2);
}
///////////ポイントの座標決定/////////////////////////////////////////////////
void pointDragged() {
  if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>30 || scaleMouseY<0) {
    pointX[P]=scaleMouseX;
    pointY[P]=scaleMouseY;

    output.println("  pointX["+P+"]="+pointX[P]+";");
    output.println("  pointY["+P+"]="+pointY[P]+";");

    P++;
  }
}
//////////////////////////////////////////////////////////////////////////////
//////////////////ラインを描くための要素/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
float [] lineX1 = new float [500];        //ラインの始点x座標
float [] lineY1 = new float [500];        //ラインの始点y座標
float [] lineX2 = new float [500];        //ラインの終点x座標
float [] lineY2 = new float [500];        //ラインの終点y座標
float [] lineW = new float [500];         //ラインの幅
float [] lineH = new float [500];         //ラインの高さ
float [] lineVX = new float [500];        //ラインのx座標方向速度
float [] lineVY = new float [500];        //ラインのy座標方向速度
int [] lineFlag = new int [500];      //始点の保存とドラッグのためのフラグ
int [] lineFLAG = new int [500];      //次のラインに移るためのフラグ
int L;                                //配列を選択する変数
int [] lineStrokeFlag = new int [500];   //ラインの色塗りフラグ
int [] lineMoveFlag = new int [500];     //ラインの移動フラグ
int [] lineMoveFLAGX = new int [500];    //ラインのx向き移動フラグ
int [] lineMoveFLAGY = new int [500];    //ラインのy向き移動フラグ

/////////////ラインを描く//////////////////////////////////////////////////////
void drawLine() {
  strokeWeight(5);
  for (int l=0; l<500; l++) {
    if (lineX1[l]==0 && lineY1[l]==0) {
      continue;
    }
    if (lineStrokeFlag[l]==1) {
      stroke(0, 0, 255);
    } else {
      stroke(0);
    }
    if (lineMoveFlag[l]==1) {
      //ラインのx座標移動判定
      if (lineX1[l]<=lineX2[l]) {
        lineW[l]=lineX2[l]-lineX1[l];
        if (lineX2[l]>width) {
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
      }
      //ラインのy座標移動判定
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
    line(lineX1[l], lineY1[l], lineX2[l], lineY2[l]);
  }
  strokeWeight(2);
}
/////////ラインの始点と長さを決定///////////////////////////////////////////////
void lineDragged() {
  if (lineFLAG[L]==0) {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>60 || scaleMouseY<30) {
      if (lineFlag[L]==0) {
        lineX1[L]=scaleMouseX;
        lineY1[L]=scaleMouseY;
        lineFlag[L]=1;
      }
    }
    if (lineFlag[L]==1) {
      lineX2[L]=scaleMouseX;
      lineY2[L]=scaleMouseY;
    }
  }
}
///////////ラインの終点を決定//////////////////////////////////////////////////
void lineReleased() {
  if (lineFLAG[L]==0) {
    lineX2[L]=scaleMouseX;
    lineY2[L]=scaleMouseY;
    lineFLAG[L]=1;
    if (lineX1[L]!=0 && lineY1[L]!=0) {
      output.println("  lineX1["+L+"]="+lineX1[L]+";");
      output.println("  lineY1["+L+"]="+lineY1[L]+";");
      output.println("  lineX2["+L+"]="+lineX2[L]+";");
      output.println("  lineY2["+L+"]="+lineY2[L]+";");
    }
  }
  L++;
}
//////////////////////////////////////////////////////////////////////////////
//////////////////レクトを描くための要素/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
float [] rectX = new float [500];         //レクトの始点x座標
float [] rectY = new float [500];         //レクトの始点y座標
float [] rectW = new float [500];         //レクトの幅
float [] rectH = new float [500];         //レクトの高さ
float [] rectX2 = new float [500];        //レクトの終点x座標
float [] rectY2 = new float [500];        //レクトの終点y座標
float [] rectVX = new float [500];        //レクトのx座標方向速度
float [] rectVY = new float [500];        //レクトのy座標方向速度
int [] rectFlag = new int [500];      //始点の保存とドラッグするためのフラグ
int [] rectFLAG = new int [500];      //次のレクトに移るためのフラグ
int R;                                //配列を選択する変数
int [] rectFillFlag = new int [500];     //レクトの色塗りフラグ
int [] rectMoveFlag = new int [500];     //レクトの移動フラグ
int [] rectMoveFLAGX = new int [500];    //レクトのx向き移動フラグ
int [] rectMoveFLAGY = new int [500];    //レクトのy向き移動フラグ

/////////////レクトを描く//////////////////////////////////////////////////////
void drawRect() {
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
      //レクトのx座標移動判定
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
      //レクトのy座標移動判定
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
}
////////レクトの始点と大きさを選択//////////////////////////////////////////////
void rectDragged() {
  if (rectFLAG[R]==0) {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>90 || scaleMouseY<60) {
      if (rectFlag[R]==0) {
        rectX[R]=scaleMouseX;
        rectY[R]=scaleMouseY;
        rectFlag[R]=1;
      }
    }
    if (rectFlag[R]==1) {
      rectW[R]=scaleMouseX-rectX[R];
      rectH[R]=scaleMouseY-rectY[R];
    }
  }
}
///////////レクトの大きさを決定////////////////////////////////////////////////
void rectReleased() {
  if (rectFLAG[R]==0) {
    rectW[R]=scaleMouseX-rectX[R];
    rectH[R]=scaleMouseY-rectY[R];
    if (rectX[R]!=0 && rectY[R]!=0) {
      output.println("  rectX["+R+"]="+rectX[R]+";");
      output.println("  rectY["+R+"]="+rectY[R]+";");
      output.println("  rectW["+R+"]="+rectW[R]+";");
      output.println("  rectH["+R+"]="+rectH[R]+";");
    }
  }
  R++;
}
///////////////////////////////////////////////////////////////////////////////
///////////////*バーテックスを描くための要素*/////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
int [] beginShapeFLAG = new int [500];   //バーテックスの始まりフラグ
float [][] vertexX = new float [500][500];  //バーテックスのx座標(一次:多角形の個数 二次:多角形の頂点x座標)
float [][] vertexY = new float [500][500];  //バーテックスのy座標(一次:多角形の個数 二次:多角形の頂点y座標)
float [] vertexVX = new float [500];        //バーテックスのx座標方向速度 配列は多角形ごと
float [] vertexVY = new float [500];        //バーテックスのy座標方向速度 配列は多角形ごと
int [] vertexFlag = new int [500];      //次のバーテックスへと移るためのフラグ
int [] lastVertexFlag = new int [500];  //最後のバーテックスを引くためのフラグ
int U;                                  //シェイプの配列を選択する変数
int V;                                  //バーテックスの配列を選択する変数
int vertexCount;                        //バーテックスの個数カウント
float [] MaxX = new float [500];            //バーテックスの右端
float [] minX = new float [500];            //バーテックスの左端
float [] MaxY = new float [500];            //バーテックスの下端
float [] minY = new float [500];            //バーテックスの上端
float [][] DistX = new float [500][500];           //MaxXからの距離
float [][] distX = new float [500][500];           //maxXからの距離
float [][] DistY = new float [500][500];           //MaxYからの距離
float [][] distY = new float [500][500];           //maxYからの距離
int [] vertexFillFlag = new int [500];   //バーテックスの色塗りフラグ
int [] vertexMoveFlag = new int [500];   //バーテックスの移動フラグ
int [] vertexMoveFLAGX = new int [500];  //バーテックスのx向き移動フラグ
int [] vertexMoveFLAGY = new int [500];  //バーテックスのy向き移動フラグ

///////////バーテックスを描く/////////////////////////////////////////////////////
void drawVertex() {
  for (int v1=0; v1<500; v1++) {
    vertexCount=0;
    if (beginShapeFLAG[v1]==0) {
      break;
    }
    if (vertexFillFlag[v1]==1) {
      fill(0, 255, 255, 80);
    } else {
      noFill();
    }
    stroke(0);
    beginShape();
    for (int v2=0; v2<500; v2++) {
      if (vertexX[v1][v2]==0 && vertexY[v1][v2]==0) {
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
    //跳ね返り判定
    if (lastVertexFlag[v1]==1 && vertexMoveFlag[v1]==1) {
      //上下左右端の座標取得
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
      //xの跳ね返り判定
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
      //yの跳ね返り判定
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
}
/////////バーテックスの頂点座標を決定///////////////////////////////////////////////
void vertexPressed() {
  if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>120 || scaleMouseY<90) {
    vertexFlag[U]=1;
    if (vertexFlag[U]==1) {
      if (beginShapeFLAG[U]==0) {
        beginShapeFLAG[U]=1;
        vertexX[U][V]=scaleMouseX;
        vertexY[U][V]=scaleMouseY;
        output.println("  vertexX["+U+"]["+V+"]="+vertexX[U][V]+";");
        output.println("  vertexY["+U+"]["+V+"]="+vertexY[U][V]+";");
        V++;
      } else if (beginShapeFLAG[U]==1) {
        vertexX[U][V]=scaleMouseX;
        vertexY[U][V]=scaleMouseY;
        output.println("  vertexX["+U+"]["+V+"]="+vertexX[U][V]+";");
        output.println("  vertexY["+U+"]["+V+"]="+vertexY[U][V]+";");
        V++;
      }
    }
  }
}
/////////////////////////////////////////////////////////////////////////////
/////////////////*エリプスを描くための要素*/////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////
float [] ellipX = new float [500];    //エリプスの中心x座標
float [] ellipY = new float [500];    //エリプスの中心y座標
float [] ellipVX = new float [500];   //エリプスのx座標移動速度
float [] ellipVY = new float [500];   //エリプスのy座標移動速度
float [] ellipR1 = new float [500];   //エリプスの横半径
float [] ellipR2 = new float [500];   //エリプスの縦半径
int [] ellipFlag = new int [500];     //中心の保存とドラッグのためのフラグ
int [] ellipFLAG = new int [500];     //次のエリプスに移るためのフラグ
int E;                                //配列を選択する変数
int [] ellipFillFlag = new int [500];    //エリプスの色塗りフラグ
int [] ellipMoveFlag = new int [500];    //エリプスの移動フラグ
int [] ellipMoveFLAGX = new int [500];   //エリプスのx向き移動フラグ
int [] ellipMoveFLAGY = new int [500];   //エリプスのy向き移動フラグ

/////////////エリプスを描く//////////////////////////////////////////////////////
void drawEllipse() {
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
        //エリプスのx座標移動判定
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
      //エリプスのy座標移動判定
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
/////////エリプスの中心と半径を選択///////////////////////////////////////////////
void ellipDragged() {
  if (ellipFLAG[E]==0) {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>150 || scaleMouseY<120) {
      if (ellipFlag[E]==0) {
        ellipX[E]=scaleMouseX;
        ellipY[E]=scaleMouseY;
        ellipFlag[E]=1;
      }
    }
    if (ellipFlag[E]==1) {
      ellipR1[E]=scaleMouseX-ellipX[E];
      ellipR2[E]=scaleMouseY-ellipY[E];
    }
  }
}
/////////エリプスの大きさを決定////////////////////////////////////////////////
void ellipReleased() {
  if (ellipFLAG[E]==0) {
    ellipR1[E]=scaleMouseX-ellipX[E];
    ellipR2[E]=scaleMouseY-ellipY[E];
    if (ellipX[E]!=0 && ellipY[E]!=0) {
      output.println("  ellipX["+E+"]="+ellipX[E]+";");
      output.println("  ellipY["+E+"]="+ellipY[E]+";");
      output.println("  ellipR1["+E+"]="+ellipR1[E]+";");
      output.println("  ellipR2["+E+"]="+ellipR2[E]+";");
    }
  }
  E++;
}
//////////////////////////////////////////////////////////////////////////////
//////////////////フィルを描くための要素/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
float [] fillX = new float [500];         //フィル選択の左上のx座標
float [] fillY = new float [500];         //フィル選択の左上のy座標
float [] fillW = new float [500];         //フィルの幅
float [] fillH = new float [500];         //フィルの高さ
float [] fillX2 = new float [500];        //フィルの右下のx座標
float [] fillY2 = new float [500];        //フィルの右下のy座標
int [] fillFlag = new int [500];      //始点の保存とドラッグするためのフラグ
int [] fillFLAG = new int [500];      //次のフィルに移るためのフラグ
int F;                                //配列を選択する変数
/////////////フィルを描く//////////////////////////////////////////////////////
void drawFill() {
  for (int f=0; f<500; f++) {
    if (fillX[f]==0 && fillY[f]==0) {
      continue;
    }
    if (fillFinishFlag[f]==0) {
      stroke(0, 255, 0);
    } else if (fillFinishFlag[f]==1) {
      noStroke();
    }
    noFill();
    rect(fillX[f], fillY[f], fillW[f], fillH[f]);
  }
}
////////フィルの始点と大きさを選択//////////////////////////////////////////////
void fillDragged() {
  if (fillFLAG[F]==0) {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>180 || scaleMouseY<1500) {
      if (fillFlag[F]==0) {
        fillX[F]=scaleMouseX;
        fillY[F]=scaleMouseY;
        fillFlag[F]=1;
      }
      if (fillFlag[F]==1) {
        fillW[F]=scaleMouseX-fillX[F];
        fillH[F]=scaleMouseY-fillY[F];
      }
    }
  }
}
///////////フィルの大きさを決定////////////////////////////////////////////////
void fillReleased() {
  if (fillFLAG[F]==0) {
    fillW[F]=scaleMouseX-fillX[F];
    fillH[F]=scaleMouseY-fillY[F];
    if (fillX[F]!=0 && fillY[F]!=0) {
      fillX2[F]=fillX[F]+fillW[F];
      fillY2[F]=fillY[F]+fillH[F];
      //それぞれの図形の主要な点がフィルの枠内に入ると色を塗るフラグが立つ
      for (int f=0; f<5000; f++) {
        if (pointX[f]<fillX2[F] && pointX[f]>fillX[F] && pointY[f]<fillY2[F] && pointY[f]>fillY[F]) {
          output.println("  pointStrokeFlag["+f+"]=1;");
          pointStrokeFlag[f]=1;
        } else if (pointX[f]<fillX[F] && pointX[f]>fillX2[F] && pointY[f]<fillY2[F] && pointY[f]>fillY[F]) {
          output.println("  pointStrokeFlag["+f+"]=1;");
          pointStrokeFlag[f]=1;
        } else if (pointX[f]<fillX2[F] && pointX[f]>fillX[F] && pointY[f]<fillY[F] && pointY[f]>fillY2[F]) {
          output.println("  pointStrokeFlag["+f+"]=1;");
          pointStrokeFlag[f]=1;
        } else if (pointX[f]<fillX[F] && pointX[f]>fillX2[F] && pointY[f]<fillY[F] && pointY[f]>fillY2[F]) {
          output.println("  pointStrokeFlag["+f+"]=1;");
          pointStrokeFlag[f]=1;
        }
      }
      for (int f=0; f<500; f++) {
        if (lineX1[f]<fillX2[F] && lineX1[f]>fillX[F] && lineY1[f]<fillY2[F] && lineY1[f]>fillY[F]) {
          output.println("  lineStrokeFlag["+f+"]=1;");
          lineStrokeFlag[f]=1;
        } else if (lineX1[f]<fillX[F] && lineX1[f]>fillX2[F] && lineY1[f]<fillY2[F] && lineY1[f]>fillY[F]) {
          output.println("  lineStrokeFlag["+f+"]=1;");
          lineStrokeFlag[f]=1;
        } else if (lineX1[f]<fillX2[F] && lineX1[f]>fillX[F] && lineY1[f]<fillY[F] && lineY1[f]>fillY2[F]) {
          output.println("  lineStrokeFlag["+f+"]=1;");
          lineStrokeFlag[f]=1;
        } else if (lineX1[f]<fillX[F] && lineX1[f]>fillX2[F] && lineY1[f]<fillY[F] && lineY1[f]>fillY2[F]) {
          output.println("  lineStrokeFlag["+f+"]=1;");
          lineStrokeFlag[f]=1;
        }
        if (rectX[f]<fillX2[F] && rectX[f]>fillX[F] && rectY[f]<fillY2[F] && rectY[f]>fillY[F]) {
          output.println("  rectFillFlag["+f+"]=1;");
          rectFillFlag[f]=1;
        } else if (rectX[f]<fillX[F] && rectX[f]>fillX2[F] && rectY[f]<fillY2[F] && rectY[f]>fillY[F]) {
          output.println("  rectFillFlag["+f+"]=1;");
          rectFillFlag[f]=1;
        } else if (rectX[f]<fillX2[F] && rectX[f]>fillX[F] && rectY[f]<fillY[F] && rectY[f]>fillY2[F]) {
          output.println("  rectFillFlag["+f+"]=1;");
          rectFillFlag[f]=1;
        } else if (rectX[f]<fillX[F] && rectX[f]>fillX2[F] && rectY[f]<fillY[F] && rectY[f]>fillY2[F]) {
          output.println("  rectFillFlag["+f+"]=1;");
          rectFillFlag[f]=1;
        }
        if (vertexX[f][0]<fillX2[F] && vertexX[f][0]>fillX[F] && vertexY[f][0]<fillY2[F] && vertexY[f][0]>fillY[F]) {
          output.println("  vertexFillFlag["+f+"]=1;");
          vertexFillFlag[f]=1;
        } else if (vertexX[f][0]<fillX[F] && vertexX[f][0]>fillX2[F] && vertexY[f][0]<fillY2[F] && vertexY[f][0]>fillY[F]) {
          output.println("  vertexFillFlag["+f+"]=1;");
          vertexFillFlag[f]=1;
        } else if (vertexX[f][0]<fillX2[F] && vertexX[f][0]>fillX[F] && vertexY[f][0]<fillY[F] && vertexY[f][0]>fillY2[F]) {
          output.println("  vertexFillFlag["+f+"]=1;");
          vertexFillFlag[f]=1;
        } else if (vertexX[f][0]<fillX[F] && vertexX[f][0]>fillX2[F] && vertexY[f][0]<fillY[F] && vertexY[f][0]>fillY2[F]) {
          output.println("  vertexFillFlag["+f+"]=1;");
          vertexFillFlag[f]=1;
        }
        if (ellipX[f]<fillX2[F] && ellipX[f]>fillX[F] && ellipY[f]<fillY2[F] && ellipY[f]>fillY[F]) {
          output.println("  ellipFillFlag["+f+"]=1;");
          ellipFillFlag[f]=1;
        } else if (ellipX[f]<fillX[F] && ellipX[f]>fillX2[F] && ellipY[f]<fillY2[F] && ellipY[f]>fillY[F]) {
          output.println("  ellipFillFlag["+f+"]=1;");
          ellipFillFlag[f]=1;
        } else if (ellipX[f]<fillX2[F] && ellipX[f]>fillX[F] && ellipY[f]<fillY[F] && ellipY[f]>fillY2[F]) {
          output.println("  ellipFillFlag["+f+"]=1;");
          ellipFillFlag[f]=1;
        } else if (ellipX[f]<fillX[F] && ellipX[f]>fillX2[F] && ellipY[f]<fillY[F] && ellipY[f]>fillY2[F]) {
          output.println("  ellipFillFlag["+f+"]=1;");
          ellipFillFlag[f]=1;
        }
      }
      fillFinishFlag[F]=1;
    }
  }
  F++;
}
//////////////////////////////////////////////////////////////////////////////
//////////////////ムーブを描くための要素/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
float [] moveX = new float [500];         //ムーブ選択の左上のx座標
float [] moveY = new float [500];         //ムーブ選択の左上のy座標
float [] moveW = new float [500];         //ムーブの幅
float [] moveH = new float [500];         //ムーブの高さ
float [] moveX2 = new float [500];        //ムーブの右下のx座標
float [] moveY2 = new float [500];        //ムーブの右下のy座標
int [] moveFlag = new int [500];      //始点の保存とドラッグするためのフラグ
int [] moveFLAG = new int [500];      //次のムーブに移るためのフラグ
int M;                                //配列を選択する変数
/////////////ムーブを描く//////////////////////////////////////////////////////
void drawMove() {
  for (int m=0; m<500; m++) {
    if (moveX[m]==0 && moveY[m]==0) {
      continue;
    }
    if (moveFinishFlag[m]==0) {
      stroke(255, 0, 255);
    } else if (moveFinishFlag[m]==1) {
      noStroke();
    }
    noFill();
    rect(moveX[m], moveY[m], moveW[m], moveH[m]);
  }
}
////////ムーブの始点と大きさを選択//////////////////////////////////////////////
void moveDragged() {
  if (moveFLAG[M]==0) {
    if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>180 || scaleMouseY<1500) {
      if (moveFlag[M]==0) {
        moveX[M]=scaleMouseX;
        moveY[M]=scaleMouseY;
        moveFlag[M]=1;
      }
      if (moveFlag[M]==1) {
        moveW[M]=scaleMouseX-moveX[M];
        moveH[M]=scaleMouseY-moveY[M];
      }
    }
  }
}
///////////ムーブの大きさを決定////////////////////////////////////////////////
void moveReleased() {
  if (moveFLAG[M]==0) {
    moveW[M]=scaleMouseX-moveX[M];
    moveH[M]=scaleMouseY-moveY[M];
    if (moveX[M]!=0 && moveY[M]!=0) {
      moveX2[M]=moveX[M]+moveW[M];
      moveY2[M]=moveY[M]+moveH[M];

      //それぞれの図形の主要な点がムーブの枠内に入ると動き出すフラグが立つ
      for (int m=0; m<5000; m++) {
        if (pointX[m]<moveX2[M] && pointX[m]>moveX[M] && pointY[m]<moveY2[M] && pointY[m]>moveY[M]) {
          output.println("  pointMoveFlag["+m+"]=1;");
          pointMoveFlag[m]=1;
        } else if (pointX[m]<moveX[M] && pointX[m]>moveX2[M] && pointY[m]<moveY2[M] && pointY[m]>moveY[M]) {
          output.println("  pointMoveFlag["+m+"]=1;");
          pointMoveFlag[m]=1;
        } else if (pointX[m]<moveX2[M] && pointX[m]>moveX[M] && pointY[m]<moveY[M] && pointY[m]>moveY2[M]) {
          output.println("  pointMoveFlag["+m+"]=1;");
          pointMoveFlag[m]=1;
        } else if (pointX[m]<moveX[M] && pointX[m]>moveX2[M] && pointY[m]<moveY[M] && pointY[m]>moveY2[M]) {
          output.println("  pointMoveFlag["+m+"]=1;");
          pointMoveFlag[m]=1;
        }
      }
      for (int m=0; m<500; m++) {
        if (lineX1[m]<moveX2[M] && lineX1[m]>moveX[M] && lineY1[m]<moveY2[M] && lineY1[m]>moveY[M]) {
          output.println("  lineMoveFlag["+m+"]=1;");
          lineMoveFlag[m]=1;
        } else if (lineX1[m]<moveX[M] && lineX1[m]>moveX2[M] && lineY1[m]<moveY2[M] && lineY1[m]>moveY[M]) {
          output.println("  lineMoveFlag["+m+"]=1;");
          lineMoveFlag[m]=1;
        } else if (lineX1[m]<moveX2[M] && lineX1[m]>moveX[M] && lineY1[m]<moveY[M] && lineY1[m]>moveY2[M]) {
          output.println("  lineMoveFlag["+m+"]=1;");
          lineMoveFlag[m]=1;
        } else if (lineX1[m]<moveX[M] && lineX1[m]>moveX2[M] && lineY1[m]<moveY[M] && lineY1[m]>moveY2[M]) {
          output.println("  lineMoveFlag["+m+"]=1;");
          lineMoveFlag[m]=1;
        }
        if (rectX[m]<moveX2[M] && rectX[m]>moveX[M] && rectY[m]<moveY2[M] && rectY[m]>moveY[M]) {
          output.println("  rectMoveFlag["+m+"]=1;");
          rectMoveFlag[m]=1;
        } else if (rectX[m]<moveX[M] && rectX[m]>moveX2[M] && rectY[m]<moveY2[M] && rectY[m]>moveY[M]) {
          output.println("  rectMoveFlag["+m+"]=1;");
          rectMoveFlag[m]=1;
        } else if (rectX[m]<moveX2[M] && rectX[m]>moveX[M] && rectY[m]<moveY[M] && rectY[m]>moveY2[M]) {
          output.println("  rectMoveFlag["+m+"]=1;");
          rectMoveFlag[m]=1;
        } else if (rectX[m]<moveX[M] && rectX[m]>moveX2[M] && rectY[m]<moveY[M] && rectY[m]>moveY2[M]) {
          output.println("  rectMoveFlag["+m+"]=1;");
          rectMoveFlag[m]=1;
        }
        if (vertexX[m][0]<moveX2[M] && vertexX[m][0]>moveX[M] && vertexY[m][0]<moveY2[M] && vertexY[m][0]>moveY[M]) {
          output.println("  vertexMoveFlag["+m+"]=1;");
          vertexMoveFlag[m]=1;
        } else if (vertexX[m][0]<moveX2[M] && vertexX[m][0]>moveX[M] && vertexY[m][0]<moveY[M] && vertexY[m][0]>moveY2[M]) {
          output.println("  vertexMoveFlag["+m+"]=1;");
          vertexMoveFlag[m]=1;
        } else if (vertexX[m][0]<moveX[M] && vertexX[m][0]>moveX2[M] && vertexY[m][0]<moveY2[M] && vertexY[m][0]>moveY[M]) {
          output.println("  vertexMoveFlag["+m+"]=1;");
          vertexMoveFlag[m]=1;
        } else if (vertexX[m][0]<moveX[M] && vertexX[m][0]>moveX2[M] && vertexY[m][0]<moveY[M] && vertexY[m][0]>moveY2[M]) {
          output.println("  vertexMoveFlag["+m+"]=1;");
          vertexMoveFlag[m]=1;
        }
        if (ellipX[m]<moveX2[M] && ellipX[m]>moveX[M] && ellipY[m]<moveY2[M] && ellipY[m]>moveY[M]) {
          output.println("  ellipMoveFlag["+m+"]=1;");
          ellipMoveFlag[m]=1;
        } else if (ellipX[m]<moveX[M] && ellipX[m]>moveX2[M] && ellipY[m]<moveY2[M] && ellipY[m]>moveY[M]) {
          output.println("  ellipMoveFlag["+m+"]=1;");
          ellipMoveFlag[m]=1;
        } else if (ellipX[m]<moveX2[M] && ellipX[m]>moveX[M] && ellipY[m]<moveY[M] && ellipY[m]>moveY2[M]) {
          output.println("  ellipMoveFlag["+m+"]=1;");
          ellipMoveFlag[m]=1;
        } else if (ellipX[m]<moveX[M] && ellipX[m]>moveX2[M] && ellipY[m]<moveY[M] && ellipY[m]>moveY2[M]) {
          output.println("  ellipMoveFlag["+m+"]=1;");
          ellipMoveFlag[m]=1;
        }
      }
      moveFinishFlag[M]=1;
    }
  }
  M++;
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
void setup() {
  size(1000, 600);

  output = createWriter("Generate/GenerateCode"+hour()+minute()+second()+".pde");

  output.println("float [] pointX = new float [5000];");
  output.println("float [] pointY = new float [5000];");
  output.println("int [] pointStrokeFlag = new int [5000];");
  output.println("int [] pointMoveFlag = new int [5000];");   //ポイントの移動フラグ
  output.println("int [] pointMoveFLAGX = new int [5000];");  //ポイントのx向き移動フラグ
  output.println("int [] pointMoveFLAGY = new int [5000];");  //ポイントのy向き移動フラグ
  output.println("float [] pointVX = new float [5000];");      //ポイントのx座標方向速度
  output.println("float [] pointVY = new float [5000];");     //ポイントのy座標方向速度
  output.println();
  output.println("float [] lineX1 = new float [500];");
  output.println("float [] lineY1 = new float [500];");
  output.println("float [] lineX2 = new float [500];");
  output.println("float [] lineY2 = new float [500];");
  output.println("float [] lineW = new float [500];");
  output.println("float [] lineH = new float [500];");
  output.println("int [] lineStrokeFlag = new int [500];");
  output.println("int [] lineMoveFlag = new int [500];");
  output.println("int [] lineMoveFLAGX = new int [500];");
  output.println("int [] lineMoveFLAGY = new int [500];");
  output.println("float [] lineVX = new float [500];");
  output.println("float [] lineVY = new float [500];");
  output.println();
  output.println("float [] rectX = new float [500];");         //レクトの始点x座標
  output.println("float [] rectY = new float [500];");         //レクトの始点y座標
  output.println("float [] rectW = new float [500];");         //レクトの幅
  output.println("float [] rectH = new float [500];");         //レクトの高さ
  output.println("float [] rectX2 = new float [500];");        //レクトの終点x座標
  output.println("float [] rectY2 = new float [500];");        //レクトの終点y座標
  output.println("int [] rectFillFlag = new int [500];");     //レクトの色塗りフラグ
  output.println("int [] rectMoveFlag = new int [500];");     //レクトの移動フラグ
  output.println("int [] rectMoveFLAGX = new int [500];");    //レクトのx向き移動フラグ
  output.println("int [] rectMoveFLAGY = new int [500];");    //レクトのy向き移動フラグ
  output.println("float [] rectVX = new float [500];");        //レクトのx座標方向速度
  output.println("float [] rectVY = new float [500];");        //レクトのy座標方向速度
  output.println();
  output.println("int [] beginShapeFLAG = new int [500];");   //バーテックスの始まりフラグ
  output.println("float [][] vertexX = new float [500][500];");  //バーテックスのx座標(一次:多角形の個数 二次:多角形の頂点x座標)
  output.println("float [][] vertexY = new float [500][500];");  //バーテックスのy座標(一次:多角形の個数 二次:多角形の頂点y座標)
  output.println("int [] vertexFillFlag = new int [500];");   //バーテックスの色塗りフラグ
  output.println("int [] vertexFlag = new int [500];");     //次のバーテックスへと移るためのフラグ
  output.println("int [] lastVertexFlag = new int [500];");  //最後のバーテックスを引くためのフラグ
  output.println("int vertexCount;");                        //バーテックスの個数カウント
  output.println("int [] vertexMoveFlag = new int [500];");   //バーテックスの移動フラグ
  output.println("float [] vertexMoveFLAGX = new float [500];");  //バーテックスのx向き移動フラグ
  output.println("float [] vertexMoveFLAGY = new float [500];");  //バーテックスのy向き移動フラグ
  output.println("float [] MaxX = new float [500];");            //バーテックスの右端
  output.println("float [] minX = new float [500];");            //バーテックスの左端
  output.println("float [] MaxY = new float [500];");            //バーテックスの下端
  output.println("float [] minY = new float [500];");            //バーテックスの上端
  output.println("float [][] DistX = new float [500][500];");           //MaxXからの距離
  output.println("float [][] distX = new float [500][500];");           //maxXからの距離
  output.println("float [][] DistY = new float [500][500];");           //MaxYからの距離
  output.println("float [][] distY = new float [500][500];");           //maxYからの距離
  output.println("float [] vertexVX = new float [500];");        //バーテックスのx座標方向速度 配列は多角形ごと
  output.println("float [] vertexVY = new float [500];");        //バーテックスのy座標方向速度 配列は多角形ごと
  output.println();
  output.println("int [] ellipFillFlag = new int [500];");    //エリプスの色塗りフラグ
  output.println("int [] ellipMoveFlag = new int [500];");    //エリプスの移動フラグ
  output.println("int [] ellipMoveFLAGX = new int [500];");   //エリプスのx向き移動フラグ
  output.println("int [] ellipMoveFLAGY = new int [500];");   //エリプスのy向き移動フラグ
  output.println("float [] ellipX = new float [500];");    //エリプスの中心x座標
  output.println("float [] ellipY = new float [500];");    //エリプスの中心y座標
  output.println("float [] ellipR1 = new float [500];");   //エリプスの横半径
  output.println("float [] ellipR2 = new float [500];");   //エリプスの縦半径
  output.println("int [] ellipFlag = new int [500];");     //中心の保存とドラッグのためのフラグ
  output.println("int [] ellipFLAG = new int [500];");     //次のエリプスに移るためのフラグ
  output.println("float [] ellipVX = new float [500];");   //エリプスのx座標移動速度
  output.println("float [] ellipVY = new float [500];");   //エリプスのy座標移動速度

  output.println();
  output.println("void setup(){");
  output.println("  size("+1000+", "+600+");");
  output.println("  for(int p=0; p<5000; p++){");
  output.println("    pointVX[p]=random(1, 3);");
  output.println("    pointVY[p]=random(1, 3);");
  output.println("    pointMoveFLAGX[p]=(int)random(2);");
  output.println("    pointMoveFLAGY[p]=(int)random(2);");
  output.println("  }");
  output.println("  for(int l=0; l<500; l++){");
  output.println("    lineVX[l]=random(1, 3);");
  output.println("    lineVY[l]=random(1, 3);");
  output.println("    lineMoveFLAGX[l]=(int)random(2);");
  output.println("    lineMoveFLAGY[l]=(int)random(2);");
  output.println("  }");
  output.println("  for(int r=0; r<500; r++){");
  output.println("    rectVX[r]=random(1, 3);");
  output.println("    rectVY[r]=random(1, 3);");
  output.println("    rectMoveFLAGX[r]=(int)random(2);");
  output.println("    rectMoveFLAGY[r]=(int)random(2);");
  output.println("  }");
  output.println("  for(int v=0; v<500; v++){");
  output.println("    vertexVX[v]=random(1, 3);");
  output.println("    vertexVY[v]=random(1, 3);");
  output.println("    vertexMoveFLAGX[v]=(int)random(2);");
  output.println("    vertexMoveFLAGY[v]=(int)random(2);");
  output.println("  }");
  output.println("  for (int e=0; e<500; e++) {");
  output.println("    ellipVX[e]=random(1, 3);");
  output.println("    ellipVY[e]=random(1, 3);");
  output.println("    ellipMoveFLAGX[e]=(int)random(2);");
  output.println("    ellipMoveFLAGY[e]=(int)random(2);");
  output.println("  }");

  myFont = createFont("AnonymousPro-Bold-48.vlw", 40);
  //各図形の動きをセット
  for (int p=0; p<5000; p++) {
    pointVX[p]=(float)random(1, 3);
    pointVY[p]=(float)random(1, 3);
    pointMoveFLAGX[p]=(int)random(2);
    pointMoveFLAGY[p]=(int)random(2);
  }
  for (int l=0; l<500; l++) {
    lineVX[l]=(float)random(1, 3);
    lineVY[l]=(float)random(1, 3);
    lineMoveFLAGX[l]=(int)random(2);
    lineMoveFLAGY[l]=(int)random(2);
  }
  for (int r=0; r<500; r++) {
    rectVX[r]=(float)random(1, 3);
    rectVY[r]=(float)random(1, 3);
    rectMoveFLAGX[r]=(int)random(2);
    rectMoveFLAGY[r]=(int)random(2);
  }
  for (int v=0; v<500; v++) {
    vertexVX[v]=(float)random(1, 3);
    vertexVY[v]=(float)random(1, 3);
    vertexMoveFLAGX[v]=(int)random(2);
    vertexMoveFLAGY[v]=(int)random(2);
  }
  for (int e=0; e<500; e++) {
    ellipVX[e]=(float)random(1, 3);
    ellipVY[e]=(float)random(1, 3);
    ellipMoveFLAGX[e]=(int)random(2);
    ellipMoveFLAGY[e]=(int)random(2);
  }
}

void draw() {
  println(mouseX+", "+mouseY);
  background(200);
  
  //ここからイラスト
  strokeWeight(1);
  fill(230);
  rect(-1, 402, 1002, 118);
  fill(80);
  quad(280, 400, 230, 430, 960, 430, 920, 400);
  
  fill(120);
  rect(280, 0, 640, 400);
  rect(230, 430, 730, 30);
  rect(-1, 520/*472*/, 1002, 20);
  
  float xMouse = 343+5*cos(atan2(mouseY-200,mouseX-600));
  float yMouse = 493+5*sin(atan2(mouseY-200,mouseX-600));
  fill(0);
  ellipse(xMouse, yMouse, 30, 40); 
  
  fill(255);
  ellipse(140, 200, 300, 300);
  ellipse(230, 160, 60, 70);
  rect(298, 18, 604, 364);
  ellipse(140, height, 300, 500);
  beginShape();
  vertex(144, 440);
  vertex(265, 542);
  vertex(343, 493);
  vertex(333, 486);
  vertex(265, 482);
  vertex(200, 420);
  vertex(160, 405);
  vertex(144, 440);
  endShape();
  quad(655, 402, 636, 585, 940, 585, 875, 402);  //紙
  quad(685, 408, 680, 520, 877, 517, 855, 412);  //枠
  
  fill(0, 255, 0, 50);
  quad(743, 425, 740, 465, 813, 465, 807, 425);  //頭
  quad(766, 465, 763, 504, 797, 504, 793, 465);  //胴体
  rect(748, 496, 22, 15);  //右足
  rect(787, 496, 21, 14);  //左足
  rect(762, 450, 30, 10);  //口
  rect(695, 478, 7, 5);
  rect(821, 424, 7, 5);
  
  fill(0, 255, 255, 50);
  beginShape();
  vertex(838, 439);
  vertex(835, 445);
  vertex(845, 440);
  vertex(845, 447);
  vertex(838, 439);
  endShape();
  
  fill(255, 255, 0, 50);
  ellipse(753, 478, 20, 20);  //右手
  ellipse(806, 478, 20, 20);  //左手
  ellipse(765, 440, 13, 13);  //右目
  ellipse(766, 442, 5, 5);    //右目玉
  ellipse(790, 440, 13, 13);  //左目
  ellipse(789, 442, 5, 5);    //左目玉
  ellipse(708, 431, 10, 10);
  ellipse(847, 475, 5, 5);
  
  stroke(255, 0, 0);
  strokeWeight(2);
  point(709, 453);
  point(715, 457);
  point(712, 450);
  point(717, 452);
  
  stroke(0, 0, 255);
  line(835, 500, 847, 510);
  line(700, 508, 713, 504);
  
  
  fill(0);
  textSize(16);
  text("キャラクタを描き、いろいろな", 668, 545);
  text("図形がその周りを動くようにせよ。", 666, 570);
  
  stroke(0);
  fill(0);
  float eyeY = 160+3*sin(atan2(mouseY-160,mouseX-245));
  fill(0);
  ellipse(245, eyeY, 20, 20);
  //イラスト終了

  //PC画面の位置設定
  pushMatrix();
  translate(300, 20);
  transMouseX = mouseX - 300;
  transMouseY = mouseY - 20;
  scale(0.6);
  scaleMouseX = transMouseX/0.6;
  scaleMouseY = transMouseY/0.6;


  drawPoint();    //ポイントを描く
  drawLine();     //ラインを描く
  drawRect();     //レクトを描く
  drawVertex();   //バーテックスを描く
  drawEllipse();  //エリプスを描く
  drawFill();     //フィルを描く
  drawMove();     //ムーブを描く
  //選択ボタンを表示
  strokeWeight(1);
  stroke(0);
  for (int a=0; a<7; a++) {
    fill(200);
    rect(0, a*30, 100, 30);
  }
  fill(0);
  textFont(myFont);
  textSize(25);
  text("point()", 15, 23);
  text("line()", 20, 53);
  text("rect()", 20, 83);
  text("vertex()", 7, 113);
  text("ellipse()", 6, 143);
  textSize(25);
  text("色を塗る", 2, 175);
  text("動かす", 13, 205);
  popMatrix();
}

void mousePressed() {
  pushMatrix();
  translate(300, 0);
  //scale(0.7, 0.67);

  //ポイントを選択
  if (scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<30 && scaleMouseY>0) {
    point=1;
    line=0;
    rect=0;
    vertex=0;
    ellipse=0;
    fill=0;
    move=0;
  }
  //ラインを選択
  if (scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<60 && scaleMouseY>30) {
    point=0;
    line=1;
    rect=0;
    vertex=0;
    ellipse=0;
    fill=0;
    move=0;
  }
  //レクトを選択
  if ( scaleMouseX<100 && scaleMouseY>0 && scaleMouseY<90 && scaleMouseY>60 ) {
    point=0;
    line=0;
    rect=1;
    vertex=0;
    ellipse=0;
    fill=0;
    move=0;
  }
  //バーテックスを選択
  if (scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<120 && scaleMouseY>90) {
    point=0;
    line=0;
    rect=0;
    vertex=1;
    ellipse=0;
    fill=0;
    move=0;
  }
  //エリプスを選択
  if (scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<150 && scaleMouseY>120) {  
    point=0; 
    line=0; 
    rect=0; 
    vertex=0; 
    ellipse=1; 
    fill=0;
    move=0;
  }
  //フィルを選択
  if (scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<180 && scaleMouseY>150) { 
    point=0;
    line=0;
    rect=0;
    vertex=0;
    ellipse=0;
    fill=1;
    move=0;
  }
  //ムーブを選択
  if (scaleMouseX<100 && scaleMouseX>0 && scaleMouseY<210 && scaleMouseY>180) {
    point=0;
    line=0;
    rect=0;
    vertex=0;
    ellipse=0;
    fill=0;
    move=1;
  }
  //バーテックスの頂点を選択
  if (vertex==1) {
    vertexPressed();
  }
  popMatrix();
}

void mouseDragged() {
  pushMatrix();
  translate(300, 0);
  //scale(0.7, 0.67);

  if (point==1) pointDragged();   //ポイントの座標決定
  if (line==1) lineDragged();     //ラインの始点と長さを選択
  if (rect==1) rectDragged();     //レクトの始点と大きさの選択
  if (ellipse==1) ellipDragged(); //エリプスの中心と半径を選択
  if (fill==1) fillDragged();     //フィルの始点と大きさの選択
  if (move==1) moveDragged();     //ムーブの座標決定
  popMatrix();
}

void mouseReleased() {
  pushMatrix();
  translate(300, 0);

  if (line==1) lineReleased();      //ラインの終点を決定
  if (rect==1) rectReleased();      //レクトの大きさを決定
  if (ellipse==1) ellipReleased();  //エリプスの大きさを決定
  if (fill==1) fillReleased();      //フィルの大きさを決定
  if (move==1) moveReleased();      //ムーブの大きさを決定
  popMatrix();
}

void keyPressed() {
  //プログラムの終了
  switch(keyCode) {
  case ENTER:
    output.println("}");
    output.println();
    output.println("void draw(){");
    output.println("  background(255);");
    output.println("  for(int p=0; p<5000; p++){");
    output.println("    if (pointX[p]==0 && pointY[p]==0){");
    output.println("    continue;");
    output.println("    }");
    output.println("    if(pointStrokeFlag[p]==0){");
    output.println("      stroke(0);");
    output.println("    }");
    output.println("    if(pointStrokeFlag[p]==1){");
    output.println("      stroke(255, 0, 0);");
    output.println("    }");
    output.println("    strokeWeight(10);");
    output.println("    if(pointMoveFlag[p]==1){");
    output.println("      if(pointX[p]>width){");
    output.println("        pointX[p]=width;");
    output.println("        pointMoveFLAGX[p]=1;");
    output.println("      }");
    output.println("      if(pointX[p]<0){");
    output.println("        pointX[p]=0;");
    output.println("        pointMoveFLAGX[p]=0;");
    output.println("      }");
    output.println("      if(pointMoveFLAGX[p]==0) pointX[p]+=pointVX[p];");
    output.println("      if(pointMoveFLAGX[p]==1) pointX[p]-=pointVX[p];");
    output.println("      if(pointY[p]>height){");
    output.println("        pointY[p]=height;");
    output.println("        pointMoveFLAGY[p]=1;");
    output.println("      }");
    output.println("      if(pointY[p]<0){");
    output.println("        pointY[p]=0;");
    output.println("        pointMoveFLAGY[p]=0;");
    output.println("      }");
    output.println("      if(pointMoveFLAGY[p]==0) pointY[p]+=pointVY[p];");
    output.println("      if(pointMoveFLAGY[p]==1) pointY[p]-=pointVY[p];");
    output.println("    }");
    output.println("    point(pointX[p], pointY[p]);");
    output.println("  }");

    output.println("  strokeWeight(2);");
    output.println();

    output.println("  for(int l=0; l<500; l++){");
    output.println("    if(lineX1[l]==0 && lineY1[l]==0){");
    output.println("      continue;");
    output.println("    }");
    output.println("    if(lineStrokeFlag[l]==1){");
    output.println("      stroke(0, 0, 255);");
    output.println("    } else {");
    output.println("      stroke(0);");
    output.println("    }");
    output.println("    strokeWeight(5);");
    output.println("    if(lineMoveFlag[l]==1){");
    output.println("      if(lineX1[l]<=lineX2[l]){");
    output.println("        lineW[l]=lineX2[l]-lineX1[l];");
    output.println("        if(lineX2[l]>width){");
    output.println("          lineX1[l]=width-lineW[l];");
    output.println("          lineX2[l]=width;");
    output.println("          lineMoveFLAGX[l]=1;");
    output.println("        }");
    output.println("        if (lineX1[l]<0) {");
    output.println("          lineX1[l]=0;");
    output.println("          lineX2[l]=0+lineW[l];");
    output.println("          lineMoveFLAGX[l]=0;");
    output.println("        }");
    output.println("        if (lineMoveFLAGX[l]==0) {");
    output.println("          lineX1[l]=lineX1[l]+lineVX[l];");
    output.println("          lineX2[l]=lineX2[l]+lineVX[l];");
    output.println("        }");
    output.println("        if (lineMoveFLAGX[l]==1) {");
    output.println("          lineX1[l]=lineX1[l]-lineVX[l];");
    output.println("          lineX2[l]=lineX2[l]-lineVX[l];");
    output.println("        }");
    output.println("      }");
    output.println("      if (lineX1[l]>lineX2[l]) {");
    output.println("        lineW[l]=lineX1[l]-lineX2[l];");
    output.println("        if (lineX1[l]>width) {");
    output.println("          lineX1[l]=width;");
    output.println("          lineX2[l]=width-lineW[l];");
    output.println("          lineMoveFLAGX[l]=1;");
    output.println("        }");
    output.println("        if (lineX2[l]<0) {");
    output.println("          lineX1[l]=0+lineW[l];");
    output.println("          lineX2[l]=0;");
    output.println("          lineMoveFLAGX[l]=0;");
    output.println("        }");
    output.println("        if (lineMoveFLAGX[l]==0) {");
    output.println("          lineX1[l]=lineX1[l]+lineVX[l];");
    output.println("          lineX2[l]=lineX2[l]+lineVX[l];");
    output.println("        }");
    output.println("        if (lineMoveFLAGX[l]==1) {");
    output.println("          lineX1[l]=lineX1[l]-lineVX[l];");
    output.println("          lineX2[l]=lineX2[l]-lineVX[l];");
    output.println("        }");
    //ラインのy座標移動判定
    output.println("        if (lineY1[l]<=lineY2[l]) {");
    output.println("          lineH[l]=lineY2[l]-lineY1[l];");
    output.println("          if (lineY2[l]>height) {");
    output.println("            lineY1[l]=height-lineH[l];");
    output.println("            lineY2[l]=height;");
    output.println("            lineMoveFLAGY[l]=1;");
    output.println("          }");
    output.println("          if (lineY1[l]<0) {");
    output.println("            lineY1[l]=0;");
    output.println("            lineY2[l]=0+lineH[l];");
    output.println("            lineMoveFLAGY[l]=0;");
    output.println("          }");
    output.println("          if (lineMoveFLAGY[l]==0) {");
    output.println("            lineY1[l]=lineY1[l]+lineVY[l];");
    output.println("            lineY2[l]=lineY2[l]+lineVY[l];");
    output.println("          }");
    output.println("          if (lineMoveFLAGY[l]==1) {");
    output.println("            lineY1[l]=lineY1[l]-lineVY[l];");
    output.println("            lineY2[l]=lineY2[l]-lineVY[l];");
    output.println("          }");
    output.println("        }");
    output.println("        if (lineY1[l]>lineY2[l]) {");
    output.println("          lineH[l]=lineY1[l]-lineY2[l];");
    output.println("          if (lineY1[l]>height) {");
    output.println("            lineY1[l]=height;");
    output.println("            lineY2[l]=height-lineH[l];");
    output.println("            lineMoveFLAGY[l]=1;");
    output.println("          }");
    output.println("          if (lineY2[l]<0) {");
    output.println("            lineY1[l]=0+lineH[l];");
    output.println("            lineY2[l]=0;");
    output.println("            lineMoveFLAGY[l]=0;");
    output.println("          }");
    output.println("          if (lineMoveFLAGY[l]==0) {");
    output.println("            lineY1[l]=lineY1[l]+lineVY[l];");
    output.println("            lineY2[l]=lineY2[l]+lineVY[l];");
    output.println("          }");
    output.println("          if (lineMoveFLAGY[l]==1) {");
    output.println("            lineY1[l]=lineY1[l]-lineVY[l];");
    output.println("            lineY2[l]=lineY2[l]-lineVY[l];");
    output.println("          }");
    output.println("        }");
    output.println("      }");
    output.println("    }");
    output.println("    line(lineX1[l], lineY1[l], lineX2[l], lineY2[l]);");
    output.println("  }");

    output.println("  strokeWeight(2);");
    output.println();

    output.println("  for (int r=0; r<500; r++) {");
    output.println("    if (rectX[r]==0 && rectY[r]==0) {");
    output.println("      continue;");
    output.println("    }");
    output.println("    if (rectFillFlag[r]==1) {");
    output.println("      fill(0, 255, 0, 80);");
    output.println("    } else {");
    output.println("      noFill();");
    output.println("    }");
    output.println("    stroke(0);");
    output.println("    if (rectMoveFlag[r]==1) {");
    //レクトのx座標移動判定
    output.println("      rectX2[r]=rectX[r]+rectW[r];");
    output.println("      if (rectX[r]<=rectX2[r]) {");
    output.println("        if (rectX2[r]>width) {");
    output.println("          rectX[r]=width-rectW[r];");
    output.println("          rectMoveFLAGX[r]=1;");
    output.println("        }");
    output.println("        if (rectX[r]<0) {");
    output.println("          rectX[r]=0;");
    output.println("          rectMoveFLAGX[r]=0;");
    output.println("        }");
    output.println("      } else if (rectX[r]>rectX2[r]) {");
    output.println("        if (rectX[r]>width) {");
    output.println("          rectX[r]=width;");
    output.println("          rectMoveFLAGX[r]=1;");
    output.println("        }");
    output.println("        if (rectX2[r]<0) {");
    output.println("          rectX[r]=0-rectW[r];");
    output.println("          rectMoveFLAGX[r]=0;");
    output.println("        }");
    output.println("      }");
    output.println("      if (rectMoveFLAGX[r]==0) rectX[r]=rectX[r]+rectVX[r];");
    output.println("      if (rectMoveFLAGX[r]==1) rectX[r]=rectX[r]-rectVX[r];");
    //レクトのy座標移動判定
    output.println("      rectY2[r]=rectY[r]+rectH[r];");
    output.println("      if (rectY[r]<=rectY2[r]) {");
    output.println("        if (rectY2[r]>height) {");
    output.println("          rectY[r]=height-rectH[r];");
    output.println("          rectMoveFLAGY[r]=1;");
    output.println("        }");
    output.println("        if (rectY[r]<0) {");
    output.println("          rectY[r]=0;");
    output.println("          rectMoveFLAGY[r]=0;");
    output.println("        }");
    output.println("      } else if (rectY[r]>rectY2[r]) {");
    output.println("        if (rectY[r]>height) {");
    output.println("          rectY[r]=height;");
    output.println("          rectMoveFLAGY[r]=1;");
    output.println("        }");
    output.println("        if (rectY2[r]<0) {");
    output.println("          rectY[r]=0-rectH[r];");
    output.println("          rectMoveFLAGY[r]=0;");
    output.println("        }");
    output.println("      }");
    output.println("      if (rectMoveFLAGY[r]==0) rectY[r]=rectY[r]+rectVY[r];");
    output.println("      if (rectMoveFLAGY[r]==1) rectY[r]=rectY[r]-rectVY[r];");
    output.println("    }");
    output.println("    rect(rectX[r], rectY[r], rectW[r], rectH[r]);");
    output.println("  }");

    output.println();

    output.println("  for (int v1=0; v1<500; v1++) {");
    output.println("    vertexCount=0;");
    output.println("    if (vertexFillFlag[v1]==1) {");
    output.println("      fill(0, 255, 255, 80);");
    output.println("    } else {");
    output.println("      noFill();");
    output.println("    }");
    output.println("    stroke(0);");
    output.println("    strokeWeight(2);");
    output.println("    beginShape();");
    output.println("    for (int v2=0; v2<500; v2++) {");
    output.println("      if (vertexX[v1][v2]==0 && vertexY[v1][v2]==0) {");
    output.println("        lastVertexFlag[v1]=1;");
    output.println("        if (lastVertexFlag[v1]==1) {");
    output.println("          vertex(vertexX[v1][0], vertexY[v1][0]);");
    output.println("          vertexCount++;");
    output.println("        }");
    output.println("        break;");
    output.println("      }");
    output.println("      vertex(vertexX[v1][v2], vertexY[v1][v2]);");
    output.println("      vertexCount++;");
    output.println("    }");
    output.println("    endShape();");
    //跳ね返り判定
    output.println("    if (lastVertexFlag[v1]==1 && vertexMoveFlag[v1]==1) {");
    //上下左右端の座標取得
    output.println("      MaxX[v1] = vertexX[v1][0];");
    output.println("      minX[v1] = vertexX[v1][0];");
    output.println("      MaxY[v1] = vertexY[v1][0];");
    output.println("      minY[v1] = vertexY[v1][0];");
    output.println("      for (int v=0; v<vertexCount-1; v++) {");
    output.println("        if (MaxX[v1]<vertexX[v1][v]) MaxX[v1]=vertexX[v1][v];");
    output.println("        if (minX[v1]>vertexX[v1][v]) minX[v1]=vertexX[v1][v];");
    output.println("        if (MaxY[v1]<vertexY[v1][v]) MaxY[v1]=vertexY[v1][v];");
    output.println("        if (minY[v1]>vertexY[v1][v]) minY[v1]=vertexY[v1][v];");
    output.println("      }");
    output.println("      for (int v=0; v<vertexCount-1; v++) {");
    output.println("        DistX[v1][v]=MaxX[v1]-vertexX[v1][v];");
    output.println("        DistY[v1][v]=MaxY[v1]-vertexY[v1][v];");
    output.println("        distX[v1][v]=vertexX[v1][v]-minX[v1];");
    output.println("        distY[v1][v]=vertexY[v1][v]-minY[v1];");
    output.println("      }");
    //xの跳ね返り判定
    output.println("      if (MaxX[v1]>width) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexX[v1][v]=width-DistX[v1][v];");
    output.println("        }");
    output.println("        vertexMoveFLAGX[v1]=1;");
    output.println("      }");
    output.println("      if (minX[v1]<0) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexX[v1][v]=0+distX[v1][v];");
    output.println("        }");
    output.println("        vertexMoveFLAGX[v1]=0;");
    output.println("      }");
    output.println("      if (vertexMoveFLAGX[v1]==0) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexX[v1][v]=vertexX[v1][v]+vertexVX[v1];");
    output.println("        }");
    output.println("      }");
    output.println("      if (vertexMoveFLAGX[v1]==1) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexX[v1][v]=vertexX[v1][v]-vertexVX[v1];");
    output.println("        }");
    output.println("      }");
    //yの跳ね返り判定
    output.println("      if (MaxY[v1]>height) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexY[v1][v]=height-DistY[v1][v];");
    output.println("        }");
    output.println("        vertexMoveFLAGY[v1]=1;");
    output.println("      }");
    output.println("      if (minY[v1]<0) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexY[v1][v]=0+distY[v1][v];");
    output.println("        }");
    output.println("        vertexMoveFLAGY[v1]=0;");
    output.println("      }");
    output.println("      if (vertexMoveFLAGY[v1]==0) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexY[v1][v]=vertexY[v1][v]+vertexVY[v1];");
    output.println("        }");
    output.println("      }");
    output.println("      if (vertexMoveFLAGY[v1]==1) {");
    output.println("        for (int v=0; v<vertexCount-1; v++) {");
    output.println("          vertexY[v1][v]=vertexY[v1][v]-vertexVY[v1];");
    output.println("        }");
    output.println("      }");
    output.println("    }");
    output.println("  }");

    output.println();

    output.println("  for (int e=0; e<500; e++) {");
    output.println("    if (ellipX[e]==0 && ellipY[e]==0) {");
    output.println("      continue;");
    output.println("    }");
    output.println("    if (ellipFillFlag[e]==1) {");
    output.println("      fill(255, 255, 0, 80);");
    output.println("    } else {");
    output.println("      noFill();");
    output.println("    }");
    output.println("    if (ellipMoveFlag[e]==1) {");
    output.println("      if (ellipR1[e]>=0) {");
    //エリプスのx座標移動判定
    output.println("        if (ellipX[e]>width-ellipR1[e]) {");
    output.println("          ellipX[e]=width-ellipR1[e];");
    output.println("          ellipMoveFLAGX[e]=1;");
    output.println("        }");
    output.println("        if (ellipX[e]<0+ellipR1[e]) {");
    output.println("          ellipX[e]=0+ellipR1[e];");
    output.println("          ellipMoveFLAGX[e]=0;");
    output.println("        }");
    output.println("      }");
    output.println("      if (ellipR1[e]<0) {");
    output.println("        if (ellipX[e]>width+ellipR1[e]) {");
    output.println("          ellipX[e]=width+ellipR1[e];");
    output.println("          ellipMoveFLAGX[e]=1;");
    output.println("        }");
    output.println("        if (ellipX[e]<0-ellipR1[e]) {");
    output.println("          ellipX[e]=0-ellipR1[e];");
    output.println("          ellipMoveFLAGX[e]=0;");
    output.println("        }");
    output.println("      }");
    output.println("      if (ellipMoveFLAGX[e]==0) ellipX[e]=ellipX[e]+ellipVX[e];");
    output.println("      if (ellipMoveFLAGX[e]==1) ellipX[e]=ellipX[e]-ellipVX[e];");
    //エリプスのy座標移動判定
    output.println("      if (ellipR2[e]>=0) {");
    output.println("        if (ellipY[e]>height-ellipR2[e]) {");
    output.println("          ellipY[e]=height-ellipR2[e];");
    output.println("          ellipMoveFLAGY[e]=1;");
    output.println("        }");
    output.println("        if (ellipY[e]<0+ellipR2[e]) {");
    output.println("          ellipY[e]=0+ellipR2[e];");
    output.println("          ellipMoveFLAGY[e]=0;");
    output.println("        }");
    output.println("      }");
    output.println("      if (ellipR2[e]<0) {");
    output.println("        if (ellipY[e]>height+ellipR2[e]) {");
    output.println("          ellipY[e]=height+ellipR2[e];");
    output.println("          ellipMoveFLAGY[e]=1;");
    output.println("        }");
    output.println("        if (ellipY[e]<0-ellipR2[e]) {");
    output.println("          ellipY[e]=0-ellipR2[e];");
    output.println("          ellipMoveFLAGY[e]=0;");
    output.println("        }");
    output.println("      }");
    output.println("      if (ellipMoveFLAGY[e]==0) ellipY[e]=ellipY[e]+ellipVY[e];");
    output.println("      if (ellipMoveFLAGY[e]==1) ellipY[e]=ellipY[e]-ellipVY[e];");
    output.println("    }");
    output.println("    stroke(0);");
    output.println("    ellipse(ellipX[e], ellipY[e], 2*ellipR1[e], 2*ellipR2[e]);");
    output.println("  }");
    output.println("}");

    output.flush();
    output.close();
    stop();
  }
  //バーテックスの描画終了(endShape)
  switch(key) {
  case ' ':
    if (vertex==1) {
      lastVertexFlag[U]=1;
      U++;
      V=0;
      vertexFlag[U]=1;
    }
    break;
  }
}