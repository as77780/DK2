#!/bin/bash
cd ~/buildroot/output/images
STM32_Programmer_CLI -c port=usb1 -w ~/buildroot/board/stmicroelectronics/stm32mp157-dk/flash.tsv 
