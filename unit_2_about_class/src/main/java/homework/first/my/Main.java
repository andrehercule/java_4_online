package homework.first.my;

public class Main {
    public static void main(String[] args) {
        Human human = new Human();
        System.out.println(human.info());
        human.name = "Alex";
        human.age = 20;
        System.out.println(human.info());
    }
}

