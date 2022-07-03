import java.util.*;

/**
 * Created by HABDOLLA on 1/19/2016.
 *
 * @author Himan Abdollahpouri
 *         This class contains all search algorithms plus some utilty methods needed in those algorithm
 */
public class SearchTree {
    private Node root;
    private String goalSate;

    public Node getRoot() {
        return root;
    }

    public void setRoot(Node root) {
        this.root = root;
    }

    public String getGoalSate() {
        return goalSate;
    }

    public void setGoalSate(String goalSate) {
        this.goalSate = goalSate;
    }

    public SearchTree(Node root, String goalSate) {
        this.root = root;
        this.goalSate = goalSate;
    }


    //******************************************************************************************************
    //    breadthFirstSearch() find the goal state using Breadth First Search algorithm
    //    we start with the initial state. check if it is goal or not and expand its children if it is not the goal.
    //    pop the first element of the queue and check if it is goal node. if not add its children to the queue.
    //    repeat the process untill the solution is found


    public void breadthFirstSearch() {
        // stateSet is a set that contains node that are already visited
        Set<String> stateVisitedSets = new HashSet<String>();
        int time = 0;
        Node node = new Node(root.getState());
        Queue<Node> queue = new LinkedList<Node>();
        Node currentNode = node;


        while (!currentNode.getState().equals(goalSate)) {
            stateVisitedSets.add(currentNode.getState());
            List<String> nodeSuccessors = NodeUtil.getSuccessors(currentNode.getState());
            for (String n : nodeSuccessors) {
                if (stateVisitedSets.contains(n))
                    continue;
                stateVisitedSets.add(n);
                //create node
                Node child = new Node(n);
                currentNode.addChild(child);
                child.setParent(currentNode);
                queue.add(child);

            }
            currentNode = queue.poll();
            time += 1;
        }

        NodeUtil.printSolution(currentNode, stateVisitedSets, root, time);

    }

    public void depthFirstSearch() {
        // stateSet is a set that contains node that are already visited
        Set<String> stateVisitedSets = new HashSet<String>();
        int time = 0;
        Node node = new Node(root.getState());
        Stack<Node> stack = new Stack();
        Node currentNode = node;


        while (!currentNode.getState().equals(goalSate)) {
            stateVisitedSets.add(currentNode.getState());
            List<String> nodeSuccessors = NodeUtil.getSuccessors(currentNode.getState());
            for (String n : nodeSuccessors) {
                if (stateVisitedSets.contains(n))
                    continue;
                stateVisitedSets.add(n);
                //create node
                Node child = new Node(n);
                currentNode.addChild(child);
                child.setParent(currentNode);
                stack.push(child);

            }
            currentNode = stack.pop();
            time += 1;
        }

        NodeUtil.printSolution(currentNode, stateVisitedSets, root, time);

    }




}