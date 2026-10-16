sales = [
    ["Laptop", "Electronics", "Lucknow", 2, 50000],
    ["Mouse", "Electronics", "Delhi", 5, 800],
    ["Chair", "Furniture", "Lucknow", 3, 3500],
    ["Keyboard", "Electronics", "Delhi", 4, 1500],
    ["Table", "Furniture", "Kanpur", 2, 7000],
    ["Laptop", "Electronics", "Delhi", 1, 50000],
    ["Chair", "Furniture", "Lucknow", 5, 3500],
    ["Mouse", "Electronics", "Kanpur", 10, 800]
]

#Step 1 — Total Sales
#(Product  = Laptop ,Category = Electronics,City = Lucknow,Quantity = 2,Price = 50000)

total_sales = 0
for row in sales:
    quantity = row[3]
    price = row[4]

    total_sales += quantity * price
#print("Total Sales: ",total_sales)


#Step 2 — Total Quantity
total_quantity = 0
for row in sales:
    quantity = row[3]
    total_quantity += quantity

#print("Toatal quantity:", total_quantity) 


#Step 3 — Product-wise Sales
product_sales = {}

for row in sales:
    product = row[0]
    quantity =row [3]
    price = row[4]

    sale = quantity * price
    if product in product_sales:
        product_sales[product] += sale
    else:
        product_sales[product] = sale

#print(product_sales)    


#Step 4 — City-wise Sales
city_sales = {}

for row in sales:
    city = row[2]
    product = row[3]
    price = row[4]

    sale = quantity * price
    if city in city_sales:
        city_sales[city] += sale
    else:
        city_sales[city] = sale

#print(city_sales)      


#Step 5 — Category-wise Sales
category_sales = {}

for row in sales:
    category = row[1]
    quantity = row[3]
    price = row[4]

    sale = quantity *price
    if category in category_sales:
        category_sales[category] += sale
    else:
        category_sales[category] = sale

#print(category_sales)    




print("==========SALES REPORT==========")

print("Total Sales    :",total_sales)
print("Toatal Quantity    :", total_quantity) 

print("\nCity Sales:")
for city in city_sales:
    print(city, ":", city_sales[city])

print("\nCategory Sales:")
for category in category_sales:
    print(category, ":", category_sales[category])

print("\nProduct Sales:")
for product in product_sales:
    print(product, ":", product_sales[product])