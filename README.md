# Verilog-Binary-to-BCD-Converter-
# 4-Bit Binary to BCD Converter (Verilog RTL)

## Project Overview
This repository hosts a combinational **Binary-Coded Decimal (BCD) Converter** engine written in structural Verilog. The hardware block successfully intercepts a 4-bit binary data payload and parses the variables into separate structural decimals (Tens and Ones places) optimized for system peripheral display decoders.

## Architectural Features
* **Pure Combinational Logic:** Zero clock latency architecture ensuring immediate data throughput transitions.
* **Output Isolation:** Prevents invalid hex output glitches by strictly partitioning decimal limits from `0000` up to `1111`.

## File Structure
* `/binary_to_bcd.v` : Core conversion RTL routing design layout.
* `/binary_to_bcd_tb.v` : Boundary stimulus verification verification testbench.
