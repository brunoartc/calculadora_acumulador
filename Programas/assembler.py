content = []
import sys



with open(sys.argv[1]) as f:
    content = f.readlines()

content = [x.strip() for x in content]





instruc = {
    "BEQ" : "00001",
    "JMP" : "00010",
    "BGT" : "00011",
    "LOAD" : "00100",
    "STORE" : "00101",
    "XOR" : "00110",
    "NOT" : "00111",
    "OR" : "01000",
    "AND" : "01001",
    "SUB" : "01010",
    "ADD" : "01011",
    "CMP" : "01100",
    "JAL" : "01110",
    "LOAC": "01101",
    "ADI": "10000",
    "LOAI": "10010",
    "REQ" : "01111",
    "CMM" : "10011"
    
}

io_pag = { #5 a 3
    "RAM" : "00000",
    "II" : "00100",
    "IO" : "00110"
}

io_addre = { #2 e 0
    "_LOW" : "000",
    "_HIGH" : "001",
    "_MODO" : "010",
    "_BUT" : "011",
    "_H1" : "100",
    "_H2" : "101",
    "_H3" : "110",
    "_H4" : "111",

}

rom = []

for i in content:
    for j in instruc.keys():
        i = i.replace(j, instruc[j])
    for j in io_pag.keys():
        i = i.replace(j, io_pag[j])
    for j in io_addre.keys():
        i = i.replace(j, io_addre[j])
    rom.append(i)
    if (len(i) > 2):
        print("000",  end="")
        print(i.split()[-1], end="")
        print(i.split()[0])
    else:
        print("")


