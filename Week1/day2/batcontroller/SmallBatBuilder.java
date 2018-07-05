package day2.batcontroller;
import day2.model.*;
public class SmallBatBuilder extends BatBuilder{
    public void buildType(){
        bat.setType("Bat");
    }
    public void buildBreed(){
        bat.setBreed("Small Bat");
    }
    public void buildIsAlive(Boolean isAlive){
        bat.setIsAlive(isAlive);
    }
    public void buildWithName(String name){
        bat.setName(name);
    }
    public void buildFriendliness(Boolean isFriendly){
        bat.setIsFriendly(isFriendly);
    }
    public void buildEatNonVeg(Boolean isNonVeg){
        bat.setIsNonVeg(isNonVeg);
    }
}