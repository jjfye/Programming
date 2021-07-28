//Timer Class

class CountDown 
{ 
  private int durationSeconds; //
  //int Timer;
  //int duration;
  //int initialTime;

  public CountDown(int duration) 
  { 
    this.durationSeconds = duration;
    //initialTime = this.durationSeconds;
  } 

  public int GetRemainingTime()  //return the seconds left on the timer or 0 
  {   //millis() processing command, returns time in 1000ths sec since program started         
  return max(0, durationSeconds - millis()/1000) ;
  }
  
  //public int resetTime(){
  // return(initialTime); 
  //}
  //public void reset(){
  //  this.durationSeconds=60;
  //}
  
  //public void start(int d){
  //  timer = new CountDown(d);
  //}
 
} 
