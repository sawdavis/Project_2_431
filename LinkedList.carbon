// Example: Implementing a linked list
class Node {
    var value: i32;
    var next: ?Node;

    fn constructor(v: i32) -> Node {
        return Node {.value = v, .next = null};
    }
}

class LinkedList {
    var head: ?Node;

    fn add(v: i32) {
        var new_node = Node(v);
        new_node.next = head;
        head = new_node;
    }
}