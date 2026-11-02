class hillstations{
    void location(){
        System.out.println("Location is:");
    }
void famousfor(){
    System.out.println("Famous for:");
}
}
class Manali extends hillstations{
    void location(){
        System.out.println("Manali is located in Himachal Pradesh.");
    }
    void famousfor(){
        System.out.println("IT is famous for its beautiful mountains and adventure sports");
    }
}
class Mussoorie extends hillstations {
    void location(){
        System.out.println("Mussoorie is located in Uttarakhand.");
    }
    void famousfor(){
        System.out.println("It is Famous for education institutions");
    }
}
class Gulmarg extends hillstations {
    void location(){
        System.out.println("Gulmarg is located in J&k.");
    }
    void famousfor(){
        System.out.println("It is Famous for skiing");
    }
}
class Main{
    public static void main (String args[]){
      hillstations A = new hillstations();
      hillstations M = new Manali();

      hillstations  Mu = new Mussoorie();

      hillstations G = new Gulmarg();

      A.location();
      A.famousfor();


      M.location();
      M.famousfor();


      Mu.location();
      Mu.famousfor();

      
      G.location();
      G.famousfor();
    }
}