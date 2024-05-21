class Node {
    int data;
    Node next;

    public Node(int value) {
        data = value;
        next = null;
    }
}

class SLL {
    Node head;

    public SLL() {
        head = null;
    }

    public void create(int value) {
        Node newNode = new Node(value);
        if (head == null) {
            System.out.println("No List is Present So We are creating New list ");
            head = newNode;
        } else {
            System.out.println("List is already created so inserting at the end of the list ");
            Node temp = head;
            while (temp.next != null) {
                temp = temp.next;
            }
            temp.next = newNode;
        }
    }

    public void insertAtBeginning(int value) {
        Node newNode = new Node(value);
        if (head == null) {
            System.out.println("No List is Present this is the first element");
            head = newNode;
        } else {
            newNode.next = head;
            head = newNode;
            System.out.println("we inserted the element at the beginning ");
        }
    }

    public void insertBefore(int value, int element) {
        Node newNode = new Node(value);
        Node temp = head;
        if (temp == null) {
            System.out.println("The list is empty, cannot insert before the element.");
            return;
        }
        if (temp.data == element) {
            newNode.next = head;
            head = newNode;
            System.out.println("Inserted " + value + " before " + element + ".");
            return;
        }
        while (temp.next != null && temp.next.data != element) {
            temp = temp.next;
        }
        if (temp.next == null) {
            System.out.println("The element is not found, we can't insert the value.");
        } else {
            newNode.next = temp.next;
            temp.next = newNode;
            System.out.println("Inserted " + value + " before " + element + ".");
        }
    }

    public void insertAfter(int value, int element) {
        Node newNode = new Node(value);
        Node temp = head;
        while (temp != null && temp.data != element) {
            temp = temp.next;
        }
        if (temp == null) {
            System.out.println("The element is not found, we can't insert the value.");
        } else {
            newNode.next = temp.next;
            temp.next = newNode;
            System.out.println("Inserted " + value + " after " + element + ".");
        }
    }

    public void insertAtEnd(int value) {
        Node newNode = new Node(value);
        if (head == null) {
            head = newNode;
        } else {
            Node temp = head;
            while (temp.next != null) {
                temp = temp.next;
            }
            temp.next = newNode;
            System.out.println("Inserted " + value + " at the end of the list.");
        }
    }

    public void display() {
        Node temp = head;
        while (temp != null) {
            System.out.print(temp.data + " ");
            temp = temp.next;
        }
        System.out.println();
    }

    public void deleteAtFirst() {
        if (head == null) {
            System.out.println("The list is empty, nothing to delete.");
        } else {
            head = head.next;
            System.out.println("First element deleted.");
        }
    }

    public void deleteAtSpecified(int value) {
        Node temp = head;
        if (temp == null) {
            System.out.println("The list is empty, nothing to delete.");
            return;
        }
        if (temp.data == value) {
            head = head.next;
            System.out.println("Deleted " + value + " from the list.");
            return;
        }
        while (temp.next != null && temp.next.data != value) {
            temp = temp.next;
        }
        if (temp.next == null) {
            System.out.println("The element is not found, we can't delete the value.");
        } else {
            temp.next = temp.next.next;
            System.out.println("Deleted " + value + " from the list.");
        }
    }

    public void deleteAtLast() {
        if (head == null) {
            System.out.println("The list is empty, nothing to delete.");
        } else if (head.next == null) {
            head = null;
            System.out.println("Last element deleted.");
        } else {
            Node temp = head;
            while (temp.next.next != null) {
                temp = temp.next;
            }
            temp.next = null;
            System.out.println("Last element deleted.");
        }
    }

    public void find(int value) {
        Node temp = head;
        while (temp != null) {
            if (temp.data == value) {
                System.out.println("Element " + value + " found in the list.");
                return;
            }
            temp = temp.next;
        }
        System.out.println("Element " + value + " not found in the list.");
    }

    public static void main(String[] args) {
        SLL s = new SLL();
        java.util.Scanner sc = new java.util.Scanner(System.in);
        while (true) {
            System.out.println("1.Create the List \n2.To Insert at beginning \n3.To Insert before an element \n4.To Insert after an element \n5.To Insert at end \n6.To display the list \n7.To Delete first element \n8.To Delete specified element \n9.To Delete last element \n10.To find an element \n11.exit");
            int n = sc.nextInt();
            if (n == 1) {
                System.out.println("Enter the element: ");
                int value = sc.nextInt();
                s.create(value);
            } else if (n == 2) {
                System.out.println("Enter the value to insert at beginning: ");
                int value = sc.nextInt();
                s.insertAtBeginning(value);
            } else if (n == 3) {
                System.out.println("Enter the value to insert: ");
                int value = sc.nextInt();
                System.out.println("Enter the element before which to insert: ");
                int element = sc.nextInt();
                s.insertBefore(value, element);
            } else if (n == 4) {
                System.out.println("Enter the value to insert: ");
                int value = sc.nextInt();
                System.out.println("Enter the element after which to insert: ");
                int element = sc.nextInt();
                s.insertAfter(value, element);
            } else if (n == 5) {
                System.out.println("Enter the value to insert at end: ");
                int value = sc.nextInt();
                s.insertAtEnd(value);
            } else if (n == 6) {
                s.display();
            } else if (n == 7) {
                s.deleteAtFirst();
            } else if (n == 8) {
                System.out.println("Enter the value to delete: ");
                int value = sc.nextInt();
                s.deleteAtSpecified(value);
            } else if (n == 9) {
                s.deleteAtLast();
            } else if (n == 10) {
                System.out.println("Enter the value to find: ");
                int value = sc.nextInt();
                s.find(value);
            } else if (n == 11) {
                sc.close();
                System.exit(0);
            }
        }
    }
}
