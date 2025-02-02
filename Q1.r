products <- list(Apple = 120, Banana = 35, Milk = 25, Bread = 50, Eggs = 10)
cart <- list(Apple = 3, Milk = 2)

subtotal <- sum(mapply(`*`, products[names(cart)], cart))
tax <- subtotal * 0.08
total <- subtotal + tax

cat("Receipt:\n")
for (item in names(cart)) 
  cat(sprintf("%s (%d) - $%.2f\n", item, cart[[item]], products[[item]] * cart[[item]]))
cat(sprintf("\nSubtotal: $%.2f\nTax (8%%): $%.2f\nTotal: $%.2f\n", subtotal, tax, total))
