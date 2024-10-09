#input the year
year = int(input("What Year Is It?: "))
#prevent dates above 2019
if year < 2019:
    print("Does Not Work")
#decide which trype of year depending on divisibility
elif year % 4 != 0 and year % 400 != 0:
        print(f"{year} is a Standard Year")
elif year  % 100 != 0:
        print(f"{year} is a Patch Year")
else:
        print(f"{year} is a Patch Year")