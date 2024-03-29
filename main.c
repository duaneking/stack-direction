#include <stdio.h>
#include <stdbool.h>

/*
 * returns True i up, false otherwise
 * up is posative
 * down is negative
 */
bool stack_is_growth_up_or_down(int *initial_stack_value) {
	int new_stack_value;

	if (initial_stack_value == NULL){
		return stack_is_growth_up_or_down(&new_stack_value);
	}
	
	return &new_stack_value > initial_stack_value;
}

int main(){
	printf("%s\n", stack_is_growth_up_or_down(NULL) ? "Up" : "Down");
	return 0;
}
