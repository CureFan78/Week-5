#user input, the "strip(" ignores spaces in input
# source: https://www.reddit.com/r/learnpython/comments/11w56ru/how_do_you_combat_blank_spaces_in_input/
protocol = str(input("What is the protocol name?:")).strip()
# three different branches depending on input
if protocol == "Cyphersec":
    print("Cyphersec is the only supported protocol")
elif protocol == "cybersec":
    print("DENIED! Cyphersec protocol ONLY!")

else:
    print(f"Cyphersec! Not {protocol}")
