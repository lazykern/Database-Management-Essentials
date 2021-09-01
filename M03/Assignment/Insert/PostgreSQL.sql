Insert into Employee (EmpNo,EmpName,Department,Email,Phone) values ('E100','Chuck Coordinator','Administration','chuck@colorado.edu','3-1111');
Insert into Employee (EmpNo,EmpName,Department,Email,Phone) values ('E101','Mary Manager','Football','mary@colorado.edu','5-1111');
Insert into Employee (EmpNo,EmpName,Department,Email,Phone) values ('E102','Sally Supervisor','Planning','sally@colorado.edu','3-2222');
Insert into Employee (EmpNo,EmpName,Department,Email,Phone) values ('E103','Alan Administrator','Administration','alan@colorado.edu','3-3333');

Insert into Customer (CustNo,CustName,Address,Internal,Contact,Phone,City,State,Zip) values ('C100','Football','Box 352200','Y','Mary Manager','6857100','Boulder','CO','80309');
Insert into Customer (CustNo,CustName,Address,Internal,Contact,Phone,City,State,Zip) values ('C101','Men''s Basketball','Box 352400','Y','Sally Supervisor','5431700','Boulder','CO','80309');
Insert into Customer (CustNo,CustName,Address,Internal,Contact,Phone,City,State,Zip) values ('C103','Baseball','Box 352020','Y','Bill Baseball','5431234','Boulder','CO','80309');
Insert into Customer (CustNo,CustName,Address,Internal,Contact,Phone,City,State,Zip) values ('C104','Women''s Softball','Box 351200','Y','Sue Softball','5434321','Boulder','CO','80309');
Insert into Customer (CustNo,CustName,Address,Internal,Contact,Phone,City,State,Zip) values ('C105','High School Football','123 AnyStreet','N','Coach Bob','4441234','Louisville','CO','80027');

Insert into ResourceTbl (ResNo,ResName,Rate) values ('R100','attendant',10);
Insert into ResourceTbl (ResNo,ResName,Rate) values ('R101','police',15);
Insert into ResourceTbl (ResNo,ResName,Rate) values ('R102','usher',10);
Insert into ResourceTbl (ResNo,ResName,Rate) values ('R103','nurse',20);
Insert into ResourceTbl (ResNo,ResName,Rate) values ('R104','janitor',15);
Insert into ResourceTbl (ResNo,ResName,Rate) values ('R105','food service',10);

Insert into Facility (FacNo,FacName) values ('F100','Football stadium');
Insert into Facility (FacNo,FacName) values ('F101','Basketball arena');
Insert into Facility (FacNo,FacName) values ('F102','Baseball field');
Insert into Facility (FacNo,FacName) values ('F103','Recreation room');

Insert into Location (LocNo,FacNo,LocName) values ('L100','F100','Locker room');
Insert into Location (LocNo,FacNo,LocName) values ('L101','F100','Plaza');
Insert into Location (LocNo,FacNo,LocName) values ('L102','F100','Vehicle gate');
Insert into Location (LocNo,FacNo,LocName) values ('L103','F101','Locker room');
Insert into Location (LocNo,FacNo,LocName) values ('L104','F100','Ticket Booth');
Insert into Location (LocNo,FacNo,LocName) values ('L105','F101','Gate');
Insert into Location (LocNo,FacNo,LocName) values ('L106','F100','Pedestrian gate');

Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E100','2018-10-25','2018-06-06','C100','F100','2018-06-08','Approved',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E101','2018-10-26','2018-07-28','C100','F100',NULL,'Pending',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E103','2018-09-21','2018-07-28','C100','F100','2018-08-01','Approved',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E102','2018-09-14','2018-07-28','C100','F100','2018-07-31','Approved',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E104','2018-12-03','2018-07-28','C101','F101','2018-07-31','Approved',2000,12000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E105','2018-12-05','2018-07-28','C101','F101','2018-08-01','Approved',2000,10000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E106','2018-12-12','2018-07-28','C101','F101','2018-07-31','Approved',2000,10000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E107','2018-11-23','2018-07-28','C105','F100','2018-07-31','Denied',10000,5000,null);

Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P100','E100','2018-10-25','Standard operation','Operation','E102');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P101','E104','2018-12-03','Watch for gate crashers','Operation','E100');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P102','E105','2018-12-05','Standard operation','Operation','E102');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P103','E106','2018-12-12','Watch for seat switching','Operation',null);
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P104','E101','2018-10-26','Standard cleanup','Cleanup','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P105','E100','2018-10-25','Light cleanup','Cleanup','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P199','E102','2018-12-10','ABC','Operation','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P299','E101','2018-10-26',NULL,'Operation','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P349','E106','2018-12-12',NULL,'Setup','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P85','E100','2018-10-25','Standard operation','Cleanup','E102');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EmpNo) values ('P95','E101','2018-10-26','Extra security','Cleanup','E102');

-- TimeStart and TimeEnd both use TIMESTAMP data type so values include both date and time components
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',1,'2018-10-25 08:00:00','2018-10-25 017:00:00',2,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',2,'2018-10-25 12:00:00','2018-10-25 17:00:00', 2,'L101','R101');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',3,'2018-10-25 07:00:00','2018-10-25 16:30:00', 1,'L102','R102');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',4,'2018-10-25 18:00:00','2018-10-25 22:00:00', 2,'L100','R102');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P101',1,'2018-12-03 18:00:00','2018-12-03 20:00:00', 2,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P101',2,'2018-12-03 18:30:00','2018-12-03 19:00:00', 4,'L105','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P101',3,'2018-12-03 19:00:00','2018-12-03 20:00:00', 2,'L103','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P102',1,'2018-12-05 18:00:00','2018-12-05 19:00:00', 2,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P102',2,'2018-12-05 18:00:00','2018-12-05 21:00:00', 4,'L105','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P102',3,'2018-12-05 19:00:00','2018-12-05 22:00:00', 2,'L103','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P103',1,'2018-12-12 18:00:00','2018-12-12 21:00:00', 2,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P103',2,'2018-12-12 18:00:00','2018-12-12 21:00:00', 4,'L105','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P103',3,'2018-12-12 19:00:00','2018-12-12 22:00:00', 2,'L103','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P104',1,'2018-10-26 18:00:00','2018-10-26 22:00:00', 4,'L101','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P104',2,'2018-10-26 18:00:00','2018-10-26 22:00:00', 4,'L100','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P105',1,'2018-10-25 18:00:00','2018-10-25 22:00:00', 4,'L101','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P105',2,'2018-10-25 18:00:00','2018-10-25 22:00:00', 4,'L100','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P199',1,'2018-12-10 08:00:00','2018-12-10 12:00:00', 1,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P349',1,'2018-12-10 12:00:00','2018-12-12 15:30:00', 1,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P85',1,'2018-10-25 09:00:00','2018-10-25 17:00:00',  5,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P85',2,'2018-10-25 08:00:00','2018-10-25 17:00:00',  2,'L102','R101');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P85',3,'2018-10-25 10:00:00','2018-10-25 15:00:00',  3,'L104','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',1,'2018-10-26 08:00:00','2018-10-26 17:00:00',  4,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',2,'2018-10-26 09:00:00','2018-10-26 17:00:00',  4,'L102','R101');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',3,'2018-10-26 10:00:00','2018-10-26 15:00:00',  4,'L106','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',4,'2018-10-26 13:00:00','2018-10-26 17:00:00', 2,'L100','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',5,'2018-10-26 13:00:00','2018-10-26 17:00:00', 2,'L101','R104');
