type Employee_Name_Type is record
   First : String (1..20);
   Middle : String (1..20);
   Last : String (1..20);
end record;
type Employee_Record_Type is record   Employee_Name: Employee_Name_Type;
   Hourly_Rate: Float;
end record;
Employee_Record: Employee_Record_Type;
