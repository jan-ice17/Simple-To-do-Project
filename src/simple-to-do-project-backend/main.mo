import Utils "Utils"; 
import Types "Types"; 

actor {
    // List to store todo items
    var todos: [Types.TodoItem] = [];

    // Add a new todo item
    public func addTodoItem(description: Text): async () {
        todos := Utils.addTodo(todos, description);
    };

    // Remove a todo item
    public func removeTodoItem(id: Nat): async () {
        todos := Utils.removeTodo(todos, id);
    };

    // Mark a todo item as complete
    public func completeTodoItem(id: Nat): async () {
        todos := Utils.completeTodo(todos, id);
    };

    // Get the list of todos
    public query func getTodos(): async [Types.TodoItem] {
        return todos;
    };
}
