int x=50;
int number;




int change(int val) {
  val = val+50;
  return val;
}


void setup(){
change(x);
println(x);
number = change(x); 
println(number);

}
