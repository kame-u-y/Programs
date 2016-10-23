class Move {

  float moveX;         //ムーブ選択の左上のx座標
  float moveY;         //ムーブ選択の左上のy座標
  float moveW;         //ムーブの幅
  float moveH;         //ムーブの高さ
  float moveX2;        //ムーブの右下のx座標
  float moveY2;        //ムーブの右下のy座標
  int moveFlag;          //始点の保存とドラッグするためのフラグ
  int moveFLAG;          //次のムーブに移るためのフラグ
  int moveVisibleFlag;    //移動処理完了フラグ


  /////////////ムーブを描く//////////////////////////////////////////////////////
  void display() {
    if (moveX!=0 && moveY!=0) {
      if (moveVisibleFlag==0) {
        stroke(255, 0, 255);
      } else if (moveVisibleFlag==1) {
        noStroke();
      }
      noFill();
      rect(moveX, moveY, moveW, moveH);
    }
  }
  ////////ムーブの始点と大きさを選択//////////////////////////////////////////////
  void dragged() {
    if (moveFLAG==0) {
      if (!mouseInMoveButton()) {
        if (moveFlag==0) {
          moveVisibleFlag = 0;
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
        for (int m=0; m<pointC.size(); m++) {
          if (pointC.get(m).x!=0 && pointC.get(m).y!=0) {
            if (pointC.get(m).x<moveX2 && pointC.get(m).x>moveX && pointC.get(m).y<moveY2 && pointC.get(m).y>moveY) {
              output.println("  moveFlag["+m+"]=1;");
              pointC.get(m).moveFlag=true;
            } else if (pointC.get(m).x<moveX && pointC.get(m).x>moveX2 && pointC.get(m).y<moveY2 && pointC.get(m).y>moveY) {
              output.println("  moveFlag["+m+"]=1;");
              pointC.get(m).moveFlag=true;
            } else if (pointC.get(m).x<moveX2 && pointC.get(m).x>moveX && pointC.get(m).y<moveY && pointC.get(m).y>moveY2) {
              output.println("  moveFlag["+m+"]=1;");
              pointC.get(m).moveFlag=true;
            } else if (pointC.get(m).x<moveX && pointC.get(m).x>moveX2 && pointC.get(m).y<moveY && pointC.get(m).y>moveY2) {
              output.println("  moveFlag["+m+"]=1;");
              pointC.get(m).moveFlag=true;
            }
          }
        }
        for (int m=0; m<lineC.size(); m++) {
          if (lineC.get(m).x1!=0 && lineC.get(m).y1!=0) {
            if (lineC.get(m).x1<moveX2 && lineC.get(m).x1>moveX && lineC.get(m).y1<moveY2 && lineC.get(m).y1>moveY) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineC.get(m).moveFlag=true;
            } else if (lineC.get(m).x1<moveX && lineC.get(m).x1>moveX2 && lineC.get(m).y1<moveY2 && lineC.get(m).y1>moveY) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineC.get(m).moveFlag=true;
            } else if (lineC.get(m).x1<moveX2 && lineC.get(m).x1>moveX && lineC.get(m).y1<moveY && lineC.get(m).y1>moveY2) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineC.get(m).moveFlag=true;
            } else if (lineC.get(m).x1<moveX && lineC.get(m).x1>moveX2 && lineC.get(m).y1<moveY && lineC.get(m).y1>moveY2) {
              output.println("  lineMoveFlag["+m+"]=1;");
              lineC.get(m).moveFlag=true;
            }
          }
        }
        for (int m=0; m<rectC.size(); m++) {
          if (rectC.get(m).x1!=0 && rectC.get(m).y1!=0) {
            if (rectC.get(m).x1<moveX2 && rectC.get(m).x1>moveX && rectC.get(m).y1<moveY2 && rectC.get(m).y1>moveY) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectC.get(m).moveFlag=true;
            } else if (rectC.get(m).x1<moveX && rectC.get(m).x1>moveX2 && rectC.get(m).y1<moveY2 && rectC.get(m).y1>moveY) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectC.get(m).moveFlag=true;
            } else if (rectC.get(m).x1<moveX2 && rectC.get(m).x1>moveX && rectC.get(m).y1<moveY && rectC.get(m).y1>moveY2) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectC.get(m).moveFlag=true;
            } else if (rectC.get(m).x1<moveX && rectC.get(m).x1>moveX2 && rectC.get(m).y1<moveY && rectC.get(m).y1>moveY2) {
              output.println("  rectMoveFlag["+m+"]=1;");
              rectC.get(m).moveFlag=true;
            }
          }
        }
        for (int m=0; m<vertexC.size(); m++) {
          if (vertexC.get(m).x.get(0)!=0 && vertexC.get(m).y.get(0)!=0) {
            if (vertexC.get(m).x.get(0)<moveX2 && vertexC.get(m).x.get(0)>moveX && vertexC.get(m).y.get(0)<moveY2 && vertexC.get(m).y.get(0)>moveY) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexC.get(m).moveFlag=true;
            } else if (vertexC.get(m).x.get(0)<moveX2 && vertexC.get(m).x.get(0)>moveX && vertexC.get(m).y.get(0)<moveY && vertexC.get(m).y.get(0)>moveY2) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexC.get(m).moveFlag=true;
            } else if (vertexC.get(m).x.get(0)<moveX && vertexC.get(m).x.get(0)>moveX2 && vertexC.get(m).y.get(0)<moveY2 && vertexC.get(m).y.get(0)>moveY) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexC.get(m).moveFlag=true;
            } else if (vertexC.get(m).x.get(0)<moveX && vertexC.get(m).x.get(0)>moveX2 && vertexC.get(m).y.get(0)<moveY && vertexC.get(m).y.get(0)>moveY2) {
              output.println("  vertexMoveFlag["+m+"]=1;");
              vertexC.get(m).moveFlag=true;
            }
          }
        }
        for (int m=0; m<ellipseC.size(); m++) {
          if (ellipseC.get(m).x1!=0 && ellipseC.get(m).y1!=0) {
            if (ellipseC.get(m).x1<moveX2 && ellipseC.get(m).x1>moveX && ellipseC.get(m).y1<moveY2 && ellipseC.get(m).y1>moveY) {
              output.println("  moveFlag["+m+"]=1;");
              ellipseC.get(m).moveFlag=true;
            } else if (ellipseC.get(m).x1<moveX && ellipseC.get(m).x1>moveX2 && ellipseC.get(m).y1<moveY2 && ellipseC.get(m).y1>moveY) {
              output.println("  moveFlag["+m+"]=1;");
              ellipseC.get(m).moveFlag=true;
            } else if (ellipseC.get(m).x1<moveX2 && ellipseC.get(m).x1>moveX && ellipseC.get(m).y1<moveY && ellipseC.get(m).y1>moveY2) {
              output.println("  moveFlag["+m+"]=1;");
              ellipseC.get(m).moveFlag=true;
            } else if (ellipseC.get(m).x1<moveX && ellipseC.get(m).x1>moveX2 && ellipseC.get(m).y1<moveY && ellipseC.get(m).y1>moveY2) {
              output.println("  moveFlag["+m+"]=1;");
              ellipseC.get(m).moveFlag=true;
            }
          }
        }
        moveVisibleFlag=1;
        moveFlag = 0;
        moveFLAG = 0;
      }
    }
    M++;
  }
}