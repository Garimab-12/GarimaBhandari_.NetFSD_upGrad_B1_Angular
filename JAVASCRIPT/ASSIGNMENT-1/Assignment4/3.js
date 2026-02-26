let cart = [
  { id: 1, product: "Laptop", price: 60000, qty: 1 },
  { id: 2, product: "Headphones", price: 2000, qty: 2 },
  { id: 3, product: "Mouse", price: 800, qty: 1 }
];

let totalCartValue = cart.reduce((sum, item) => sum + (item.price * item.qty), 0);

let updatedQty = cart.map(i => i.id === 2 ? { ...i, qty: i.qty + 1 } : i);

let updatedCart = cart.filter(i => i.id !== 3);

let discountedCart = cart.map(i =>
  i.price > 10000 ? { ...i, price: i.price * 0.9 } : i
);

let sortedCart = [...cart].sort((a,b) =>
  (a.price * a.qty) - (b.price * b.qty)
);

let anyAbove50000 = cart.some(i => i.price > 50000);

let allInStock = cart.every(i => i.qty > 0);

let cartInvoice = cart.map(i =>
  `${i.product} x${i.qty} = ₹${i.price * i.qty}`
).join("\n");

let mostExpensive = cart.reduce((max,i) =>
  i.price > max.price ? i : max
);

let gstTotal = totalCartValue * 1.18;
console.log("Total Cart Value:", totalCartValue);
console.log("Updated Quantity (ID 2):", updatedQty);
console.log("After Removing ID 3:", updatedCart);
console.log("Discounted Cart:", discountedCart);
console.log("Sorted Cart:", sortedCart);
console.log("Any Product Above ₹50,000:", anyAbove50000);
console.log("All Items In Stock:", allInStock);