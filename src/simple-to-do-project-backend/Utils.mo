import Array "mo:base/Array";
import Types "Types";

module {
    // Add a new todo item
    public func addTodo(todos: [Types.TodoItem], description: Text): [Types.TodoItem] {
        let newTodo: Types.TodoItem = {
            id = todos.size() + 1;
            description = description;
            completed = false;
        };
        return Array.append(todos, [newTodo]);
    };

    // Mark a todo item as complete
    public func completeTodo(todos: [Types.TodoItem], id: Nat): [Types.TodoItem] {
        return Array.map<Types.TodoItem, Types.TodoItem>(todos, func(todo) {
            if (todo.id == id) {
                { todo with completed = true }  // Mark as completed
            } else {
                todo  // Keep as is
            }
        });
    };

    // Remove a todo item by id
    public func removeTodo(todos: [Types.TodoItem], id: Nat): [Types.TodoItem] {
        return Array.filter<Types.TodoItem>(todos, func(todo) {
            todo.id != id  // Keep items where id doesn't match
        });
    };
}
