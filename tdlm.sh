#!/bin/bash
# todo_list.sh

TODO_FILE="todo_list.txt"

while true; do
    echo "To-Do List Manager"
    echo "1. View tasks"
    echo "2. Add task"
    echo "3. Remove task"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) 
            echo "Tasks:"
            cat $TODO_FILE
            ;;
        2) 
            read -p "Enter task: " task
            echo "$task" >> $TODO_FILE
            echo "Task added."
            ;;
        3) 
            read -p "Enter task number to remove: " num
            sed -i "${num}d" $TODO_FILE
            echo "Task removed."
            ;;
        4) 
            echo "Goodbye!"
            break
            ;;
        *) 
            echo "Invalid option." 
            ;;
    esac
done

