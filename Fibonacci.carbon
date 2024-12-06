//Fibonacci Sequence Example in Carbon

// Define a class to handle Fibonacci sequence generation
class Fibonacci {
    // Member variable to store the sequence
    var sequence: [i32];

    // Constructor to initialize the sequence
    fn constructor() -> Fibonacci {
        return Fibonacci {.sequence = []};
    }

    // Function to generate the Fibonacci sequence
    fn generate(&self, terms: i32) {
        if (terms <= 0) {
            Print("Please provide a positive number of terms.");
            return;
        }

        var first = 0;
        var second = 1;
        self.sequence.push(first);

        if (terms > 1) {
            self.sequence.push(second);
        }

        for (var i: i32 = 2; i < terms; i += 1) {
            var next = first + second;
            self.sequence.push(next);
            first = second;
            second = next;
        }
    }

    // Function to print the sequence
    fn display(&self) {
        Print("Fibonacci Sequence: {0}", self.sequence);
    }
}

// Main function
fn Main() -> i32 {
    // Create an instance of the Fibonacci class
    var fib = Fibonacci();

    // Number of terms to generate
    var num_terms = 10;

    // Generate and display the Fibonacci sequence
    fib.generate(num_terms);
    fib.display();

    return 0;
}
