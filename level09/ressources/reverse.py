# encoded_str est le resultat de la commande od -tu1 sur le fichier token

encoded_str = "102  52 107 109 109  54 112 124  61 130 127 112 130 110 131 130  68  66 131  68 117 123 127 140 137"
encoded = [int(n) for n in encoded_str.split()]

decoded = ""

for i, value in enumerate(encoded):
    decoded_char = chr(value - i)
    decoded += decoded_char

print(decoded)
