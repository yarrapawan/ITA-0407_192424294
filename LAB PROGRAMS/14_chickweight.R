# Program 14: Explore and manipulate ChickWeight dataset (sorting, melting, casting by Diet).

data(ChickWeight)
print(head(ChickWeight))

# Sort by weight (ascending)
sorted_data <- ChickWeight[order(ChickWeight$weight), ]
print(head(sorted_data, 15))

# Average weight for each Diet
avg_weight <- aggregate(weight ~ Diet, data = ChickWeight,
                        FUN = mean)
print(avg_weight)
