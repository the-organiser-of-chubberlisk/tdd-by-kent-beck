# Notes

The goal of TDD is to write _clean code that works_ (Ron Jeffries). Clean code that works is beneficial because it is a _"predictable way to develop"_, forces you to come up with a better solution than your original and _"lets your teammates count on you, and you on them"_.

The process of TDD follows three steps: red, green, refactor:
1. **Red**: Write a failing test
2. **Green**: Write only as much code as needed for the test to pass
2. **Refactor**: Eliminate duplication and improve code without failing the test

This means:
- Developers write their own tests
- Rapid feedback in response to small changes in code is required
- Designs must consist of _many highly cohesive, loosely coupled components_

Two Beck Rules:
> - Write a failing automated test before you write any code.
> - Remove duplication.

Two Strategies to Go Green:
-  **Fake it**: Return a constant and gradually replace constants with variables until you have real code
- **Use obvious implementation**: Write the real implementation