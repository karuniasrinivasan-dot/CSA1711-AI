
# Decision Tree using simple rules

def decision_tree(outlook, temperature):
    if outlook == "Sunny":
        if temperature == "Hot":
            return "No"
        else:
            return "No"
    else:
        return "Yes"

outlook = input("Enter outlook (Sunny/Rainy): ")
temperature = input("Enter temperature (Hot/Cool): ")

result = decision_tree(outlook, temperature)
print("Decision Tree Prediction:", result)
