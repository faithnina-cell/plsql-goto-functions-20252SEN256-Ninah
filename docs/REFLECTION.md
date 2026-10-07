# Reflection

**Name:** Ninah | **ID:** 20252SEN256 | **Course:** INSY 8311

---

## 1. What I did

In this assignment, I practiced two things in PL/SQL:

- **GOTO**: a command that makes the program jump to another place in the code.
- **Functions**: small pieces of code that take some input and give back one answer.

## 2. What I learned about GOTO

- A `GOTO` jumps to a label, which is written like `<<my_label>>`.
- I used it to classify a number (A1) and to review a salary (A2).
- GOTO has rules. You **cannot** jump into an `IF` block, into a loop, or into an exception handler. When I did this in A3, I got an error. I fixed it by moving the label to a place where the jump is allowed.
- In A4, I wrote the same program again without GOTO, using `IF / ELSIF`. The program gave the same result, but the code was easier to read.

**My conclusion:** GOTO works, but it makes code harder to follow. `IF` statements and loops are usually better.

## 3. What I learned about functions

- A function always returns a value, so it needs `RETURN`.
- I made functions for annual salary, years of service, tax, and department name (B1 to B4).
- A function can be used again and again, so I do not have to write the same code twice.
- I can call a function inside a `SELECT` query (B5). This gives me a calculated value for every row in the table.

## 4. Payroll validator (C1)

In the last task, I used my functions to check payroll data. I also added exception handling, so the program shows a clear message when the data is wrong instead of crashing.

## 5. Problems I had

- Understanding which GOTO jumps are allowed took time.
- My functions did not compile at first because of small mistakes. I read the error messages and fixed them one by one.
- I learned to test my functions with different values before using them in queries.

## 6. AI use

I used Claude to help me write the README and to explain GOTO and function ideas. I wrote and tested my own SQL code, and I can explain it.

## 7. Final thoughts

Now I understand when to use GOTO, why it has limits, and why functions make SQL work easier. I feel ready for the quiz.
