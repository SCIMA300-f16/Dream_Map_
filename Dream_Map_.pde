Table dream;
int tableRowCount;
int tableColumnCount;
int rowCount=0;
float x= 25;
float y= 30;

Bar[] bars;

void setup() {
  size(1600, 600);

  dream= loadTable("Dream Data.csv", "header"); 
  //rows=26;

  tableRowCount=dream.getRowCount();
  //tableColumnCount=dream.getColumnCount();

  println("total rows in table = "+ tableRowCount);
  drawData();
}

void draw() {
  stroke(0);
  for (Bar b: bars ) {
    b.display();
    b.mouseOver(mouseX, mouseY);
  }
}

void drawData(){
  
  bars = new Bar[tableRowCount-1];

  for (rowCount = 0; rowCount<tableRowCount-1; rowCount++) {
    //String id=trim (dream.getString(rowCount, 0));  

    float awake= dream.getFloat(rowCount, 1);// go get everything from column one and store it in awake variable
    float newAwake= map(awake, 0, 100, 10, height/1.5);// remap the awake variable to be between 10 and width

    bars[rowCount] = new Bar(x, height-newAwake, 10, newAwake, color(252, 245, 18), "test");

    x+=60;
  }
}