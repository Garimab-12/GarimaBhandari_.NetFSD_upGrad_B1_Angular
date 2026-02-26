let books = [
  { id: 1, title: "JavaScript Basics", price: 450, stock: 10 },
  { id: 2, title: "React Guide", price: 650, stock: 5 },
  { id: 3, title: "Node.js Mastery", price: 550, stock: 8 },
  { id: 4, title: "CSS Complete", price: 300, stock: 12 }
];


let titles = books.map(b => b.title);


let totalInventoryValue = books.reduce((sum, b) => sum + (b.price * b.stock), 0);

let booksAbove500 = books.filter(b => b.price > 500);


let increasedPrices = books.map(b => ({ ...b, price: b.price * 1.05 }));


let sortedBooks = [...books].sort((a, b) => a.price - b.price);

let removedBook = books.filter(b => b.id !== 2);

let anyOutOfStock = books.some(b => b.stock === 0);

let groupedByRange = books.reduce((acc, b) => {
  let range = b.price <= 400 ? "Low" :
              b.price <= 600 ? "Medium" : "High";
  acc[range] = acc[range] || [];
  acc[range].push(b);
  return acc;
}, {});

let discountAbove600 = books.map(b =>
  b.price > 600 ? { ...b, price: b.price * 0.9 } : b
);

let invoice = books.map(b => `${b.title} - ₹${b.price}`).join("\n");
console.log("All Titles:", titles);
console.log("Total Inventory Value:", totalInventoryValue);
console.log("Books Above ₹500:", booksAbove500);
console.log("Increased Prices (5%):", increasedPrices);
console.log("Sorted Books (Low to High):", sortedBooks);
console.log("After Removing ID 2:", removedBook);
console.log("Any Book Out Of Stock:", anyOutOfStock);
console.log("Grouped By Price Range:", groupedByRange);
console.log("Discount Above ₹600:", discountAbove600);
console.log("Invoice:\n" + invoice);