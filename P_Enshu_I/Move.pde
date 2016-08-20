class Move {

  float moveX;         //ムーブ選択の左上のx座標
  float moveY;         //ムーブ選択の左上のy座標
  float moveW;         //ムーブの幅
  float moveH;         //ムーブの高さ
  float moveX2;        //ムーブの右下のx座標
  float moveY2;        //ムーブの右下のy座標
  int moveFlag;          //始点の保存とドラッグするためのフラグ
  int moveFLAG;          //次のムーブに移るためのフラグ
  int moveFinishFlag;    //移動処理完了フラグ


  /////////////ムーブを描く//////////////////////////////////////////////////////
  void display() {
    if (moveX!=0 && moveY!=0) {
      if (moveFinishFlag==0) {
        stroke(255, 0, 255);
      } else if (moveFinishFlag==1) {
        noStroke();
      }
      noFill();
      rect(moveX, moveY, moveW, moveH);
    }
  }
  ////////ムーブの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (moveFLAG==0) {
      if (scaleMouseX>100 || scaleMouseX<0 || scaleMouseY>180 || scaleMouseY<1500) {
        if (moveFlag==0) {
          moveX=scaleMouseX;
          moveY=scaleMouseY;
          moveFlag=1;
        }
        if (moveFlag==1) {
          moveW=scaleMouseX-moveX;
          moveH=scaleMouseY-moveY;
        }
      }
    }
  }
  ///////////ムーブの大きさを決定////////////////////////////////////////////////
  void released() {
    if (moveFLAG==0) {
      moveW=scaleMouseX-moveX;
      moveH=scaleMouseY-moveY;
      if (moveX!=0 && moveY!=0) {
        moveX2=moveX+moveW;
        moveY2=moveY+moveH;

        //それぞれの図形の主要な点がムーブの枠内に入ると動き出すフラグが立つ
        for (int m=0; m<5000; m++) {
          if (pointClass[m].pointX!=0 && pointClass[m].pointY!=0) {
            if (pointClass[m].pointX<moveX2 && pointClass[m].pointX>moveX && pointClass[m].pointY<moveY2 && pointClass[m].pointY>moveY) {
              output.println("  pointMoveFlag["+m+"]=1;");
              pointClass[m].pointMoveFlag=1;
            } else if (pointClass[m].pointX<moveX && pointClass[m].pointX>moveX2 && pointClass[m].pointY<moveY2 && pointClass[m].pointY>moveY) {
              output.println("  pointMoveFlag["+m+"]=1;");
              pointClass[m].pointMoveFlag=1;
            } else if (pointClass[m].pointX<moveX2 && pointClass[m].pointX>moveX && pointClass[m].pointY<moveY && pointClass[m].pointY>moveY2) {
              output.println("  pointMoveFlag["+m+"]=1;");
              pointClass[m].pointMoveFlag=1;
            } else if (pointClass[m].pointX<moveX && pointClass[m].pointX>moveX2 && pointClass[m].pointY<moveY && pointClass[m].pointY>moveY2) {
              output.println("  pointMoveFlag["+m+"]=1;");
              pointClass[m].pointMoveFlag=1;
            }
          }
        }
        for (int m=0; m<500; m++) {
          if (lineClass[m].lineX1!=0 && lineClass[m].lineY1!=0) {
            if (lineClass[m].lineX1<moveX2 && lineClass[m].lineX1>moveX && lineClass[m].lineY1<moveY2 && lineClass[m].lineY1>moveY) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineClass[m].lineMoveFlag=1;
            } else if (lineClass[m].lineX1<moveX && lineClass[m].lineX1>moveX2 && lineClass[m].lineY1<moveY2 && lineClass[m].lineY1>moveY) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineClass[m].lineMoveFlag=1;
            } else if (lineClass[m].lineX1<moveX2 && lineClass[m].lineX1>moveX && lineClass[m].lineY1<moveY && lineClass[m].lineY1>moveY2) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineClass[m].lineMoveFlag=1;
            } else if (lineClass[m].lineX1<moveX && lineClass[m].lineX1>moveX2 && lineClass[m].lineY1<moveY && lineClass[m].lineY1>moveY2) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineClass[m].lineMoveFlag=1;
            }
          }
          if (rectClass[m].rectX!=0 && rectClass[m].rectY!=0) {
            if (rectClass[m].rectX<moveX2 && rectClass[m].rectX>moveX && rectClass[m].rectY<moveY2 && rectClass[m].rectY>moveY) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectClass[m].rectMoveFlag=1;
            } else if (rectClass[m].rectX<moveX && rectClass[m].rectX>moveX2 && rectClass[m].rectY<moveY2 && rectClass[m].rectY>moveY) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectClass[m].rectMoveFlag=1;
            } else if (rectClass[m].rectX<moveX2 && rectClass[m].rectX>moveX && rectClass[m].rectY<moveY && rectClass[m].rectY>moveY2) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectClass[m].rectMoveFlag=1;
            } else if (rectClass[m].rectX<moveX && rectClass[m].rectX>moveX2 && rectClass[m].rectY<moveY && rectClass[m].rectY>moveY2) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectClass[m].rectMoveFlag=1;
            }
          }
          if (vertexClass[m].vertexX[0]!=0 && vertexClass[m].vertexY[0]!=0) {
            if (vertexClass[m].vertexX[0]<moveX2 && vertexClass[m].vertexX[0]>moveX && vertexClass[m].vertexY[0]<moveY2 && vertexClass[m].vertexY[0]>moveY) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexClass[m].vertexMoveFlag=1;
            } else if (vertexClass[m].vertexX[0]<moveX2 && vertexClass[m].vertexX[0]>moveX && vertexClass[m].vertexY[0]<moveY && vertexClass[m].vertexY[0]>moveY2) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexClass[m].vertexMoveFlag=1;
            } else if (vertexClass[m].vertexX[0]<moveX && vertexClass[m].vertexX[0]>moveX2 && vertexClass[m].vertexY[0]<moveY2 && vertexClass[m].vertexY[0]>moveY) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexClass[m].vertexMoveFlag=1;
            } else if (vertexClass[m].vertexX[0]<moveX && vertexClass[m].vertexX[0]>moveX2 && vertexClass[m].vertexY[0]<moveY && vertexClass[m].vertexY[0]>moveY2) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexClass[m].vertexMoveFlag=1;
            }
          }
          if (ellipClass[m].ellipX!=0 && ellipClass[m].ellipY!=0) {
            if (ellipClass[m].ellipX<moveX2 && ellipClass[m].ellipX>moveX && ellipClass[m].ellipY<moveY2 && ellipClass[m].ellipY>moveY) {
              output.println("  ellipMoveFlag["+m+"]=1;");
              ellipClass[m].ellipMoveFlag=1;
            } else if (ellipClass[m].ellipX<moveX && ellipClass[m].ellipX>moveX2 && ellipClass[m].ellipY<moveY2 && ellipClass[m].ellipY>moveY) {
              output.println("  ellipMoveFlag["+m+"]=1;");
              ellipClass[m].ellipMoveFlag=1;
            } else if (ellipClass[m].ellipX<moveX2 && ellipClass[m].ellipX>moveX && ellipClass[m].ellipY<moveY && ellipClass[m].ellipY>moveY2) {
              output.println("  ellipMoveFlag["+m+"]=1;");
              ellipClass[m].ellipMoveFlag=1;
            } else if (ellipClass[m].ellipX<moveX && ellipClass[m].ellipX>moveX2 && ellipClass[m].ellipY<moveY && ellipClass[m].ellipY>moveY2) {
              output.println("  ellipMoveFlag["+m+"]=1;");
              ellipClass[m].ellipMoveFlag=1;
            }
          }
        }
        moveFinishFlag=1;
      }
    }
    M++;
  }
}