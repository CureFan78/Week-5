year = int(input("What Year Is It?: "))
if year > 2000:
    print("Does Not Work")
elif year % 4 != 0 and year % 400 != 0:
        print(f"{year} is a Standard Year")
elif year  % 100 != 0:
        print(f"{year} is a Patch Year")
else:
        print(f"{year} is a Patch Year")