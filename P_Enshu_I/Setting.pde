class Setting {
  PFont myFont;                //日本語表記のため
  
  Setting(){
    
      myFont = createFont("AnonymousPro-Bold-48.vlw", 40);
  }
  
  void setFigureMove() {
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

  void senery() {
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

    float xMouse = 343+5*cos(atan2(mouseY-200, mouseX-600));
    float yMouse = 493+5*sin(atan2(mouseY-200, mouseX-600));
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
    float eyeY = 160+3*sin(atan2(mouseY-160, mouseX-245));
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
  }

  void displayButton() {
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
  }

  void pressButton() {
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
  }

  void setOutput() {
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
  }

  void endOutput() {
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
  }
}