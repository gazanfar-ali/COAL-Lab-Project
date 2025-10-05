# String-EncryptionDecryption 

A simple MIPS assembly program that demonstrates **string encryption and decryption** using the classic **Caesar cipher** technique. The program takes a user-input string (up to 20 characters), encrypts it by shifting each character’s ASCII value by a fixed key, and then decrypts it back to its original form.  

---

## 📌 Features  
- User input handling (up to 20 characters)  
- String encryption with a Caesar cipher (default shift = 3)  
- String decryption to restore original text  
- Uses MARS/SPIM syscalls for I/O and program termination  
- Educational example for learning **MIPS Assembly** and **basic cryptography**  

---

## 🎯 Learning Objectives  
By working with this project, you will:  
- Understand how to handle **string input/output** in MIPS assembly.  
- Learn to use **system calls (syscall)** for I/O operations in MARS/SPIM.  
- Explore **memory allocation** for strings using `.space` and `.asciiz`.  
- Practice **looping and branching** with instructions like `beq`, `j`, and `addi`.  
- Implement a **Caesar cipher** by manipulating ASCII values in registers.  
- Gain insight into **low-level cryptography concepts** through assembly.  

---

## 📂 Project Structure  
```bash
├── cipher.s # MIPS assembly source code
├── README.md # Documentation
└── LICENSE # MIT License
```


---

## 🚀 Getting Started  

### Prerequisites  
- [MARS MIPS Simulator](http://courses.missouristate.edu/kenvollmar/mars/) or [SPIM](https://spimsimulator.sourceforge.net/)  

### Running the Program  
1. Open `cipher.s` in **MARS** or **SPIM**.  
2. Assemble and run the program.  
3. Enter a string when prompted.  
4. The program will display the encrypted and decrypted versions of the string.  

---

## 📝 Example Output  
```bash
Enter a string (max 20 chars): hello
Encrypted string: khoor
Decrypted string: hello
```


---

## 📜 License  
This project is licensed under the **MIT License** – see the [LICENSE](./LICENSE) file for details.  
```bash
MIT License

Copyright (c) 2025 Gazanfar Ali

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
