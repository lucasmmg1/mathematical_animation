// Number of lines per combination
int NUM_LINES = 10;
// First combination values
color FIRST_COMBINATION_COLOR = color(255, 235, 235);
int FIRST_COMBINATION_X_MODIFIER = 125;
int FIRST_COMBINATION_Y_MODIFIER = 75;
int FIRST_COMBINATION_W_MODIFIER = 200;
int FIRST_COMBINATION_H_MODIFIER = 225;
// Second combination values
color SECOND_COMBINATION_COLOR = color(255, 75, 75);
int SECOND_COMBINATION_X_MODIFIER = 75;
int SECOND_COMBINATION_Y_MODIFIER = 125;
int SECOND_COMBINATION_W_MODIFIER = 225;
int SECOND_COMBINATION_H_MODIFIER = 200;

float distance;

void setup()
{
  size(800, 600);
}
void draw()
{
  background(20);
  stroke(255);
  strokeWeight(5);
  
  translate(width / 2, height / 2);
  
  for (int i = 0; i < NUM_LINES; i++)
    DrawFirstCombination(distance + i);
    
  for (int i = 0; i < NUM_LINES; i++)
    DrawSecondCombination(distance + i);
    
  distance += 0.25;
}

void DrawFirstCombination(float d)
{
  stroke(FIRST_COMBINATION_COLOR);
  
  float x = sin(d / 10) * FIRST_COMBINATION_X_MODIFIER + sin(d / 5) * 20;
  float y = cos(-d / 10) * FIRST_COMBINATION_Y_MODIFIER + sin(d / 5) * 50;
  float w = sin(d / 10) * FIRST_COMBINATION_W_MODIFIER + sin(d) * 2 + cos(d);
  float h = -cos(d / 20) * FIRST_COMBINATION_H_MODIFIER + cos(d / 12) * 20;
  
  line(x, y, w, h);
}

void DrawSecondCombination(float d)
{
  stroke(SECOND_COMBINATION_COLOR);
  
  float x = cos(-d / 10) * SECOND_COMBINATION_X_MODIFIER + sin(d / 5) * 50;
  float y = sin(d / 10) * SECOND_COMBINATION_Y_MODIFIER + sin(d / 5) * 20;
  float w = -cos(d / 20) * SECOND_COMBINATION_W_MODIFIER + cos(d / 12) * 20;
  float h = sin(d / 10) * SECOND_COMBINATION_H_MODIFIER + sin(d) * 2 + cos(d);
  
  line(x, y, w, h);
}
