MongoDB 


Q1: Insert Employee Documents
db.employee.insertMany([
  {
    eid: "E12345",
    name: "Doe",
    age: 40,
    dname: "Engineering",
    projects: [
      {
        pname: "Website",
        members: ["Alice", "Bob", "John"],
        status: "In Progress"
      },
      {
        pname: "Mobile App",
        members: ["Tom", "Jane", "Mike"],
        status: "Completed"
      }
    ]
  },
  {
    eid: "E98765",
    name: "Johnson",
    age: 32,
    dname: "Finance",
    projects: [
      {
        pname: "Financial",
        members: ["William", "David"],
        status: "Completed"
      }
    ]
  },
  {
    eid: "E13579",
    name: "Emily",
    age: 28,
    dname: "Human Resources",
    projects: [
      {
        pname: "Onboarding",
        members: ["Sophia", "Robert"],
        status: "In Progress"
      }
    ]
  },
  {
    eid: "E54321",
    name: "Smith",
    age: 37,
    dname: "Sales",
    projects: [
      {
        pname: "Product",
        members: ["Mark", "Emily"],
        status: "Completed"
      },
      {
        pname: "Marketing",
        members: ["Jane", "Tom"],
        status: "In Progress"
      }
    ]
  },
  {
    eid: "E24680",
    name: "William",
    age: 30,
    dname: "Human Resources",
    projects: [
      {
        pname: "Quality",
        members: ["Anna", "Sophia", "James"],
        status: "In Progress"
      }
    ]
  }
]);


// Q2: Add field 'year' = 2008
db.employee.updateMany({}, { $set: { year: 2008 } });


// Q3: Delete the field 'age' from all documents
db.employee.updateMany({}, { $unset: { age: "" } });



// ------------------ PART B ------------------

// Q4.1: Update year to 1800 for employee named 'William'
db.employee.updateOne({ name: "William" }, { $set: { year: 1800 } });


// Q4.2: Find all unique department names
db.employee.distinct("dname");
/*


// Q4.3: Find employees with 'o' in their name (only _id and name)
db.employee.find({ name: /o/i }, { _id: 1, name: 1 });
/*


// Q4.4: Retrieve employees working on 'In Progress' projects (name and dname)
db.employee.find(
  { "projects.status": "In Progress" },
  { name: 1, dname: 1, _id: 0 }
);
/*


// Q4.5: Projects with both 'Tom' and 'Jane', sorted by dname descending
db.employee.aggregate([
  { $unwind: "$projects" },
  {
    $match: {
      "projects.members": { $all: ["Tom", "Jane"] }
    }
  },
  {
    $project: {
      _id: 0,
      dname: 1,
      pname: "$projects.pname",
      members: "$projects.members"
    }
  },
  { $sort: { dname: -1 } }
]);
/*


// Q4.6: Count of employees per department
db.employee.aggregate([
  { $group: { _id: "$dname", total: { $sum: 1 } } },
  { $project: { _id: 0, dname: "$_id", total: 1 } }
]);
/*

// Q4.7: Find the earliest joined employee (by year)
db.employee.find({}, { _id: 0, name: 1, year: 1 }).sort({ year: 1 }).limit(1);
/*
