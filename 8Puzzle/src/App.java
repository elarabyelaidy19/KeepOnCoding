/**
 * Created by HABDOLLA on 1/13/2016.
 */


public class App {
   
    
    final static private String EASY = "012345678";
    final static private String MEDIUM = "281043765";
    final static private String HARD = "567408321";
    final static private String GOAL_STATE = "123456780";


    public static void main(String[] args) {
        Thread searchThread = new Thread();
        searchThread.run();
        String rootState = EASY;
        long startTime = System.currentTimeMillis();

        SearchTree search = new SearchTree(new Node(rootState), GOAL_STATE);
        search.breadthFirstSearch();
        System.out.println("\n\n\n\n\n");
        search.depthFirstSearch();

        long finishTime = System.currentTimeMillis();
        long totalTime = finishTime - startTime;
        System.out.println("Time  :" + totalTime);


    }
}
