//lily's branch!!

Table dream;
int tableRowCount;
int tableColumnCount;
int rowCount=0;
int x= 25;
int y= 30;


void setup() {
  size(1600, 600);
  background(0);

  dream= loadTable("Dream Data.csv", "header"); 
  //rows=26;

  tableRowCount=dream.getRowCount();
  tableColumnCount=dream.getColumnCount();

  println("total rows in table = "+ tableRowCount);
}

void draw() {
  stroke(0);
  //text("Hello!", width/2, height/2);
  //String id5=trim (dream.getString(rowCount, 12)); 
  //String id5=trim (dream.getString(rowCount, 12)); 
  //text(id5, x,y);
  mouseOver(x, 20, 20);

  //beginShape();
  if (rowCount<tableRowCount-1) {
    String id=trim (dream.getString(rowCount, 0));  

    int awake= dream.getInt(rowCount, 1);// go get everything from column one and store it in awake variable
    float newAwake= map(int(awake), 0, 100, 10, height/1.5);// remap the awake variable to be between 10 and width

    int lightSleep= dream.getInt(rowCount, 2);
    float newlightSleep= map(lightSleep, 0, 100, 0, height/1.5); 

    int deepSleep= dream.getInt(rowCount, 3);
    float newdeepSleep= map(deepSleep, 0, 100, 0, height/1.5);

    int rem= dream.getInt(rowCount, 4);
    float newrem= map(rem, 0, 100, 0, height/1.5);


    int sleepQuality= dream.getInt(rowCount, 5); //go get everything from column 5 and store it in sleep quality
    float newsleepQuality= map(sleepQuality, 0, 62, 0, height/1.5); //remap sleepQuality variable to be between 0-255


    int sleepQuality1= dream.getInt(rowCount, 5); //go get everything from column 5 and store it in sleep quality
    float newsleepQuality1= map(sleepQuality1, 0, 63, 0, 60); 

    int numberOfDreams= dream.getInt(rowCount, 11);
    float newnumberOfDreams= map(int(numberOfDreams), 0, 4, 0, 10 );

    //fill(200, 100, newsleepQuality); // use newSleepQuality variable to determine the color
    ////rect(x, height-y, 10, noDreams);// problem in not in the colomn
    //println("Awake: "+awake);
    //println("newAwake: "+newAwake);
    //println("newlightSleep: "+ newlightSleep);
    //println("newdeepSleep: "+ newdeepSleep);
    //println("newrem: "+ newrem);
    //println("newsleepQuality: "+ newsleepQuality);
    ////println("newsleepQuality1: "+ newsleepQuality1);
    //println("sleepQuality: "+ sleepQuality);


    fill(240, 166, 46);//yellow awake
    rect(x, height-newAwake, 10, newAwake); //use newAwake variable to determine the width
    fill(36, 209, 54);//green light sleep
    rect(x, height-newAwake-newlightSleep, 10, newlightSleep);
    fill(89, 85, 247);// blue deep sleep
    rect(x, height-newAwake-newlightSleep-newdeepSleep, 10, newdeepSleep);
    fill(203, 63, 232);// purple rem
    rect(x, height-newAwake-newlightSleep-newdeepSleep-newrem, 10, newrem);
    fill(199, 203, 189);//light grey sleep quality
    rect(x, height-newAwake-newlightSleep-newdeepSleep-newrem-sleepQuality, 10, sleepQuality);



    fill(199, 203, 189, 200);//sleep quality circle
    stroke(132, 98, 211);
    ellipse(x+5, (height-newAwake-newlightSleep-newdeepSleep-newrem-sleepQuality)-10, newsleepQuality1, newsleepQuality1);
    fill(255);

    fill(219, 79, 229);//rem circle
    ellipse(x+5, (height-newAwake-newlightSleep-newdeepSleep-newrem-sleepQuality)-10, rem, rem);
    fill(40, 191, 179);//No.of dreams circle
    String id2=trim (dream.getString(rowCount, 11)); 
    ellipse(x+5, (height-newAwake-newlightSleep-newdeepSleep-newrem-sleepQuality)-10, newnumberOfDreams, newnumberOfDreams);
    text(id2, x, 85);
    beginShape();// indicate direction to the number of dream
    fill(255);
    vertex(x+5, (height-newAwake-newlightSleep-newdeepSleep-newrem-sleepQuality)-10);
    vertex (x, 87);
    endShape();

    fill(40, 191, 179);//text No.Dream
    text("No.Dreams", 9, 70);

    fill(255);
    String id3=trim (dream.getString(rowCount, 6)); 
    text(id3, x+10, height-newAwake);

    fill(255);
    String id4=trim (dream.getString(rowCount, 7)); 
    text(id4, x+10, height-newAwake-newlightSleep-newdeepSleep-newrem-5);

    //fill(255);//No.of dreams circle
    //String id5=trim (dream.getString(rowCount, 12)); 
    //text(id5, x-200, y);

    //String id5=trim (dream.getString(rowCount, 12)); 
    //text(id5, 1,(height-newAwake-newlightSleep-newdeepSleep-newrem)/1.5);


    fill(255);
    text(id, x, y+10);
 
    vertex(x, height-newAwake);
    //println(height-newAwake);



    beginShape();//awake curve
    stroke(204, 102, 0);
    noFill();
    vertex(25, 600-33.4);
    vertex(85, 600-25.59);
    vertex(145, 600-84.1);
    vertex(205, 600-37.3);
    vertex(265, 600-29.5);
    vertex(325, 600-52.9);
    vertex(385, 600-76.3);
    vertex(445, 600-37.3);
    vertex(505, 600-76.3);
    vertex(565, 600-60.69);
    vertex(625, 600-29.5);
    vertex(685, 600-33.4);
    vertex(745, 600-37.3);
    vertex(805, 600-41.19);
    vertex(865, 600-68.5);
    vertex(925, 600-52.9);
    vertex(985, 600-37.3);
    vertex(1045, 600-25.59);
    vertex(1105, 600-33.4);
    vertex(1165, 600-25.59);
    vertex(1225, 600-41.19);
    vertex(1285, 600-80.2);
    vertex(1345, 600-37.3);
    vertex(1405, 600-37.3);
    vertex(1465, 600-72.39);
    vertex(1525, 600-41.19);
    endShape();

    beginShape(); //lightsleep curve
    stroke(55, 129, 18);
    noFill();
    vertex(25, 600-33.4-92.0);
    vertex(85, 600-25.59-104.0);
    vertex(145, 600-84.1-100.0);
    vertex(205, 600-37.3-132.0);
    vertex(265, 600-29.5-96.0);
    vertex(325, 600-52.9-112.0);
    vertex(385, 600-76.3-84.0);
    vertex(445, 600-37.3-104.0);
    vertex(505, 600-76.3-100.0);
    vertex(565, 600-60.69-92.0);
    vertex(625, 600-29.5-76.0);
    vertex(685, 600-33.4-92.0);
    vertex(745, 600-37.3-92.0);
    vertex(805, 600-41.19-104.0);
    vertex(865, 600-68.5-84.0);
    vertex(925, 600-52.9-92.0);
    vertex(985, 600-37.3-108);
    vertex(1045, 600-25.59-116);
    vertex(1105, 600-33.4-104);
    vertex(1165, 600-25.59-112);
    vertex(1225, 600-41.19-88);
    vertex(1285, 600-80.2-80);
    vertex(1345, 600-37.3-120);
    vertex(1405, 600-37.3-120);
    vertex(1465, 600-72.39-116);
    vertex(1525, 600-41.19-104);
    endShape();

    beginShape(); //deepsleep curve
    stroke(93, 137, 224);
    noFill();
    vertex(25, 600-33.4-92.0-244.0);
    vertex(85, 600-25.59-104.0-204.0);
    vertex(145, 600-84.1-100.0-152.0);
    vertex(205, 600-37.3-132.0-196.0);
    vertex(265, 600-29.5-96.0-264.0);
    vertex(325, 600-52.9-112.0-176.0);
    vertex(385, 600-76.3-84.0-235.99);
    vertex(445, 600-37.3- 104.0-244.0);
    vertex(505, 600-76.3-100.0-84.0);
    vertex(565, 600-60.69-92.0-168.0);
    vertex(625, 600-29.5-76.0-196.0);
    vertex(685, 600-33.4-92.0-184.0);
    vertex(745, 600-37.3-92.0-220.0);
    vertex(805, 600-41.19-104.0-228.0);
    vertex(865, 600-68.5-84.0-192.0);
    vertex(925, 600-52.9- 92.0-228.0);
    vertex(985, 600-37.3-108-220);
    vertex(1045, 600-25.59-116-268);
    vertex(1105, 600-33.4-104-172);
    vertex(1165, 600-25.59-112-188);
    vertex(1225, 600-41.19-88-228);
    vertex(1285, 600-80.2-80-235.99);
    vertex(1345, 600-37.3-120-216);
    vertex(1405, 600-37.3-120-216);
    vertex(1465, 600-72.39-116-164);
    vertex(1525, 600-41.19-104-208);
    endShape();

    beginShape(); //rem curve
    stroke(101, 38, 144);
    noFill();
    vertex(25, 600-33.4-92.0-244.0-40.0);
    vertex(85, 600-25.59-104.0-204.0-76.0);
    vertex(145, 600-84.1-100.0-152.0-72.0);
    vertex(205, 600-37.3-132.0-196.0-44.0);
    vertex(265, 600-29.5-96.0-264.0-20.0);
    vertex(325, 600-52.9-112.0-176.0-68.0);
    vertex(385, 600-76.3-84.0-235.99-12.0);
    vertex(445, 600-37.3- 104.0-244.0-24.0);
    vertex(505, 600-76.3-100.0-84.0-148.0);
    vertex(565, 600-60.69-92.0-168.0-88.0);
    vertex(625, 600-29.5-76.0-196.0-108);
    vertex(685, 600-33.4-92.0-184.0-100.0);
    vertex(745, 600-37.3-92.0-220.0-60);
    vertex(805, 600-41.19-104.0-228.0-36.0);
    vertex(865, 600-68.5-84.0-192.0-64.0);
    vertex(925, 600-52.9- 92.0-228.0-36.0);
    vertex(985, 600-37.3-108-220-44);
    vertex(1045, 600-25.59-116-268-0);
    vertex(1105, 600-33.4-104-172-100);
    vertex(1165, 600-25.59-112-188-84);
    vertex(1225, 600-41.19-88-228-52);
    vertex(1285, 600-80.2-80-235.99-12);
    vertex(1345, 600-37.3-120-216-36);
    vertex(1405, 600-37.3-120-216-36);
    vertex(1465, 600-72.39-116-164-56);
    vertex(1525, 600-41.19-104-208-56);
    endShape();

    //beginShape();
    //noFill();
    //vertex(x, height-newAwake-newlightSleep-newdeepSleep-newrem-sleepQuality);
    //vertex(x+60, height-newAwake-newlightSleep-newdeepSleep-newrem-sleepQuality);
    //endShape();

    beginShape(); //sleepQuality curve
    stroke(237, 226, 191);
    noFill();
    vertex(25, 600-33.4-92.0-244.0-40.0-52);
    vertex(85, 600-25.59-104.0-204.0-76.0-56);
    vertex(145, 600-84.1-100.0-152.0-72.0-50);
    vertex(205, 600-37.3-132.0-196.0-44.0-57);
    vertex(265, 600-29.5-96.0-264.0-20.0-58);
    vertex(325, 600-52.9-112.0-176.0-68.0-58);
    vertex(385, 600-76.3-84.0-235.99-12.0-33);
    vertex(445, 600-37.3- 104.0-244.0-24.0-57);
    vertex(505, 600-76.3-100.0-84.0-148.0-50);
    vertex(565, 600-60.69-92.0-168.0-88.0-50);
    vertex(625, 600-29.5-76.0-196.0-108-60);
    vertex(685, 600-33.4-92.0-184.0-100.0-65);
    vertex(745, 600-37.3-92.0-220.0-60-62);
    vertex(805, 600-41.19-104.0-228.0-36.0-53);
    vertex(865, 600-68.5-84.0-192.0-64.0-57);
    vertex(925, 600-52.9- 92.0-228.0-36.0-48);
    vertex(985, 600-37.3-108-220-44-57);
    vertex(1045, 600-25.59-116-268-0-53);
    vertex(1105, 600-33.4-104-172-100-63);
    vertex(1165, 600-25.59-112-188-84-63);
    vertex(1225, 600-41.19-88-228-52-53);
    vertex(1285, 600-80.2-80-235.99-12-37);
    vertex(1345, 600-37.3-120-216-36-62);
    vertex(1405, 600-37.3-120-216-36-62);
    vertex(1465, 600-72.39-116-164-56-55);
    vertex(1525, 600-41.19-104-208-56-53);
    endShape();
  
  
  
    x+=60;
    rowCount++;
}
  //endShape(CLOSE);
}

void mouseOver(int xpos, int w, int h) {
  String id5=trim (dream.getString(rowCount, 12)); 
  if(id5 !=null){
  if (mouseX >= xpos || mouseX <= xpos+w && mouseY >= y || mouseY<y+h) {
    println("bang");
    //fill(255,0,0);
    //rect(x,y+30,40,40);
    fill(255, 200, 200);

    text(id5, xpos, y+25, 70, 100);
    //text("Hello!", x, y+25);
  }
  }


  //void mousePressed(){
  //  if (mouseX >= x || mouseX <= x+width && mouseY >= y || mouseY< y+height) {
  //   fill(255, 200, 200);
  //  }else{
  //   if (rowCount<tableRowCount){
  //  String id5=trim (dream.getString(rowCount, 12)); 
  //  text(id5, x, y+25);
  //   //text("Hello!", x, y+25);
}