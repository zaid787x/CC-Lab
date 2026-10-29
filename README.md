# Compiler Construction / Design Lab (Semester V)

[![Language](https://img.shields.io/badge/Language-C%20%2F%20Lex%20%2F%20Yacc-blue.svg)](https://en.wikipedia.org/wiki/Lex_(software))
[![Semester](https://img.shields.io/badge/Semester-V-brightgreen.svg)]()
[![GitHub](https://img.shields.io/badge/GitHub-zaid787x-181717.svg?logo=github)](https://github.com/zaid787x)

This repository contains all lab practicals, source codes (`.l`, `.y`), and PDF reports for **Compiler Construction Lab (Semester V)**.

---

## 👤 Student Profile
- **Name:** Mohammed Zaid Shaikh
- **PRN:** `24070521043`
- **Batch:** A2
- **GitHub:** [@zaid787x](https://github.com/zaid787x)
- **Institute:** Symbiosis Institute of Technology (SIT), Nagpur

---

## 📑 Index of Practicals

| Practical | Title / Aim | Code | Output |
| :---: | :--- | :---: | :---: |
| **01** | Basic Lex matching (`hello`) & Single-line comment counter | [View File (Hello)](./Zaid_Prac1/Zaid_Prac1_Hello.l)<br>[View File (Comments)](./Zaid_Prac1/Zaid_Prac1_Comments.l) | [View Output](./Zaid_Prac1/Zaid_Prac1.pdf) |
| **02** | Count comments, keywords, identifiers, words, spaces, & lines | [View File](./Zaid_Prac2/Zaid_Prac2.l) | [View Output](./Zaid_Prac2/Zaid_Prac2.pdf) |
| **03** | Count words starting with 'a'/'A' and numeric literals | [View File](./Zaid_Prac3/Zaid_Prac3.l) | [View Output](./Zaid_Prac3/Zaid_Prac3.pdf) |
| **04** | Arithmetic Expression Validator using YACC & LEX | [View File (Lexer)](./Zaid_Prac4/Zaid_Prac4.l)<br>[View File (Parser)](./Zaid_Prac4/Zaid_Prac4.y) | [View Output](./Zaid_Prac4/Zaid_Prac4.pdf) |
| **05** | Case toggle: Uppercase to lowercase & lowercase to uppercase | [View File](./Zaid_Prac5/Zaid_Prac5.l) | [View Output](./Zaid_Prac5/Zaid_Prac5.pdf) |
| **06** | Decimal to Hexadecimal & Hexadecimal to Decimal conversion | [View File (Decimal to Hex)](./Zaid_Prac6/Zaid_Prac6_DecimalToHex.l)<br>[View File (Hex to Decimal)](./Zaid_Prac6/Zaid_Prac6_HexToDecimal.l) | [View Output](./Zaid_Prac6/Zaid_Prac6.pdf) |
| **07** | Pattern matching: Test input lines ending with 'com' / 'COM' | [View File](./Zaid_Prac7/Zaid_Prac7.l) | [View Output](./Zaid_Prac7/Zaid_Prac7.pdf) |
| **08** | Postfix Expression Evaluation using YACC & LEX | [View File (Lexer)](./Zaid_Prac8/Zaid_Prac8.l)<br>[View File (Parser)](./Zaid_Prac8/Zaid_Prac8.y) | [View Output](./Zaid_Prac8/Zaid_Prac8.pdf) |
| **09** | Infix Arithmetic Expression Evaluation with Precedence & Unary Operators | [View File (Lexer)](./Zaid_Prac9/Zaid_Prac9.l)<br>[View File (Parser)](./Zaid_Prac9/Zaid_Prac9.y) | [View Output](./Zaid_Prac9/Zaid_Prac9.pdf) |
| **10** | For Loop and Ternary Expression Syntax Validation | [View File (Lexer)](./Zaid_Prac10/Zaid_Prac10.l)<br>[View File (Parser)](./Zaid_Prac10/Zaid_Prac10.y) | [View Output](./Zaid_Prac10/Zaid_Prac10.pdf) |
| **11** | Parser for Variable Declaration Statements using LEX & YACC | [View File (Lexer)](./Zaid_Prac11/Zaid_Prac11.l)<br>[View File (Parser)](./Zaid_Prac11/Zaid_Prac11.y) | [View Output](./Zaid_Prac11/Zaid_Prac11.pdf) |
| **12** | Intermediate Code Generator for Arithmetic Expressions | [View File (Lexer)](./Zaid_Prac12/Zaid_Prac12.l)<br>[View File (Parser)](./Zaid_Prac12/Zaid_Prac12.y) | [View Output](./Zaid_Prac12/Zaid_Prac12.pdf) |

---

## 🛠️ Prerequisites & Installation

To run these programs on Linux / Ubuntu / WSL:

```bash
# Update package lists
sudo apt update

# Install GCC compiler, Flex (Lexical Analyzer), and Bison (YACC Parser)
sudo apt install build-essential flex bison -y
```

---

## ⚡ General Execution Guide

### 1. Running a LEX Program (`.l` file)
```bash
# Step 1: Generate lex.yy.c from the lex specification file
flex filename.l

# Step 2: Compile the generated C code with GCC
gcc lex.yy.c -o output

# Step 3: Run the executable
./output
```

### 2. Running a YACC + LEX Program (`.y` and `.l` files)
```bash
# Step 1: Generate y.tab.c and y.tab.h from the Yacc grammar file
bison -d -y parser.y

# Step 2: Generate lex.yy.c using Flex
flex lexer.l

# Step 3: Compile both C source files together
gcc y.tab.c lex.yy.c -o parser

# Step 4: Execute the parser binary
./parser
```

---

## 📜 License
This project is open-source and intended for academic and educational purposes.
