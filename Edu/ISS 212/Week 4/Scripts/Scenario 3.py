
# input of data amount
data_usage = int(input("How Much Data Did You Use?: "))
# math formula to determine
if data_usage <= 85528:
     tax = (0.18 * data_usage) - 556
elif  data_usage > 85528:
     tax = 14839 + (0.32 * (data_usage - 85528))
if tax  < 0:
     tax = 0
print ("the tax amount is:", round(tax),  "MB")