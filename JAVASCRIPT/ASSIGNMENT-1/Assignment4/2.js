let students = [
  { name: "Akhil", marks: 85 },
  { name: "Priya", marks: 72 },
  { name: "Ravi", marks: 90 },
  { name: "Meena", marks: 45 },
  { name: "Karan", marks: 30 }
];

let passedStudents = students.filter(s => s.marks >= 40);

let distinctionStudents = students.filter(s => s.marks >= 85);

let classAverage = students.reduce((sum, s) => sum + s.marks, 0) / students.length;

let topper = students.reduce((max, s) => s.marks > max.marks ? s : max);

let failedCount = students.filter(s => s.marks < 40).length;

let gradedStudents = students.map(s => ({
  ...s,
  grade: s.marks >= 85 ? "A" :
         s.marks >= 60 ? "B" :
         s.marks >= 40 ? "C" : "Fail"
}));

let ranked = [...students]
  .sort((a,b) => b.marks - a.marks)
  .map((s,i) => ({ ...s, rank: i+1 }));

let removedLowest = [...students]
  .sort((a,b) => a.marks - b.marks)
  .slice(1);

let leaderboard = [...students].sort((a,b) => b.marks - a.marks);
console.log("Passed Students:", passedStudents);
console.log("Class Average:", classAverage);
console.log("Topper:", topper);
console.log("Leaderboard:", leaderboard);