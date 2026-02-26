let employees = [
 { id:1, name:"Ravi", dept:"IT", salary:70000 },
 { id:2, name:"Anita", dept:"HR", salary:50000 },
 { id:3, name:"Karan", dept:"IT", salary:80000 },
 { id:4, name:"Meena", dept:"Finance", salary:60000 }
];

let totalSalaryExpense = employees.reduce((sum,e)=>sum+e.salary,0);

let highestPaid = employees.reduce((max,e)=>e.salary>max.salary?e:max);
let lowestPaid = employees.reduce((min,e)=>e.salary<min.salary?e:min);

let increasedIT = employees.map(e =>
  e.dept==="IT"?{...e,salary:e.salary*1.15}:e
);

let groupedEmployees = employees.reduce((acc,e)=>{
  acc[e.dept]=acc[e.dept]||[];
  acc[e.dept].push(e);
  return acc;
},{});

let deptAvg = Object.keys(groupedEmployees).reduce((acc,dept)=>{
  let avg = groupedEmployees[dept]
    .reduce((sum,e)=>sum+e.salary,0) / groupedEmployees[dept].length;
  acc[dept]=avg;
  return acc;
},{});

let sortedBySalary = [...employees].sort((a,b)=>b.salary-a.salary);

let taxedEmployees = employees.map(e =>
  ({...e,salary:e.salary*0.9})
);

let avgSalary = totalSalaryExpense / employees.length;
let aboveAvg = employees.filter(e => e.salary > avgSalary);