class Student {
  constructor(name) {
    this.name = name;
    this.marks = [];
  }
  addMark(mark) {
    this.marks.push(mark);
  }
  getAverage() {
    return this.marks.reduce((a,b)=>a+b,0) / this.marks.length;
  }
  getGrade() {
    let avg = this.getAverage();
    if (avg >= 90) return "A";
    if (avg >= 75) return "B";
    if (avg >= 50) return "C";
    return "Fail";
  }
}

let s1 = new Student("Amit");
s1.addMark(80);
s1.addMark(90);
console.log(s1.getAverage());
console.log(s1.getGrade());