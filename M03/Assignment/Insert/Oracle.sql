Insert into Employee (EMPNO,EmpName,Department,Email,Phone) values ('E100','Chuck Coordinator','Administration','chuck@colorado.edu','3-1111');
Insert into Employee (EMPNO,EmpName,Department,Email,Phone) values ('E101','Mary Manager','Football','mary@colorado.edu','5-1111');
Insert into Employee (EMPNO,EmpName,Department,Email,Phone) values ('E102','Sally Supervisor','Planning','sally@colorado.edu','3-2222');
Insert into Employee (EMPNO,EmpName,Department,Email,Phone) values ('E103','Alan Administrator','Administration','alan@colorado.edu','3-3333');

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

Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E100',to_date('25-OCT-18','DD-MON-RR'),to_date('06-JUN-18','DD-MON-RR'),'C100','F100',to_date('08-JUN-18','DD-MON-RR'),'Approved',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E101',to_date('26-OCT-18','DD-MON-RR'),to_date('28-JUL-18','DD-MON-RR'),'C100','F100',null,'Pending',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E103',to_date('21-SEP-18','DD-MON-RR'),to_date('28-JUL-18','DD-MON-RR'),'C100','F100',to_date('01-AUG-18','DD-MON-RR'),'Approved',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E102',to_date('14-SEP-18','DD-MON-RR'),to_date('28-JUL-18','DD-MON-RR'),'C100','F100',to_date('31-JUL-18','DD-MON-RR'),'Approved',5000,80000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E104',to_date('03-DEC-18','DD-MON-RR'),to_date('28-JUL-18','DD-MON-RR'),'C101','F101',to_date('31-JUL-18','DD-MON-RR'),'Approved',2000,12000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E105',to_date('05-DEC-18','DD-MON-RR'),to_date('28-JUL-18','DD-MON-RR'),'C101','F101',to_date('01-AUG-18','DD-MON-RR'),'Approved',2000,10000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E106',to_date('12-DEC-18','DD-MON-RR'),to_date('28-JUL-18','DD-MON-RR'),'C101','F101',to_date('31-JUL-18','DD-MON-RR'),'Approved',2000,10000,'B1000');
Insert into EventRequest (EventNo,DateHeld,DateReq,CustNo,FacNo,DateAuth,Status,EstCost,EstAudience,BudNo) values ('E107',to_date('23-NOV-18','DD-MON-RR'),to_date('28-JUL-18','DD-MON-RR'),'C105','F100',to_date('31-JUL-18','DD-MON-RR'),'Denied',10000,5000,null);


Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P100','E100',to_date('25-OCT-18','DD-MON-RR'),'Standard operation','Operation','E102');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P101','E104',to_date('03-DEC-18','DD-MON-RR'),'Watch for gate crashers','Operation','E100');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P102','E105',to_date('05-DEC-18','DD-MON-RR'),'Standard operation','Operation','E102');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P103','E106',to_date('12-DEC-18','DD-MON-RR'),'Watch for seat switching','Operation',null);
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P104','E101',to_date('26-OCT-18','DD-MON-RR'),'Standard cleanup','Cleanup','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P105','E100',to_date('25-OCT-18','DD-MON-RR'),'Light cleanup','Cleanup','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P199','E102',to_date('10-DEC-18','DD-MON-RR'),'ABC','Operation','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P299','E101',to_date('26-OCT-18','DD-MON-RR'),null,'Operation','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P349','E106',to_date('12-DEC-18','DD-MON-RR'),null,'Setup','E101');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P85','E100',to_date('25-OCT-18','DD-MON-RR'),'Standard operation','Cleanup','E102');
Insert into EventPlan (PlanNo,EventNo,WorkDate,Notes,Activity,EMPNO) values ('P95','E101',to_date('26-OCT-18','DD-MON-RR'),'Extra security','Cleanup','E102');

Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',1, to_date('25-OCT-18 8:00:00','DD-MON-RR HH24:MI:SS'), to_date('25-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'),2,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',2, to_date('25-OCT-18 12:00:00','DD-MON-RR HH24:MI:SS'),to_date('25-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'), 2,'L101','R101');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',3, to_date('25-OCT-18 7:00:00','DD-MON-RR HH24:MI:SS'), to_date('25-OCT-18 16:30:00','DD-MON-RR HH24:MI:SS'), 1,'L102','R102');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P100',4, to_date('25-OCT-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('25-OCT-18 22:00:00','DD-MON-RR HH24:MI:SS'),2,'L100','R102');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P101',1, to_date('3-DEC-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('3-DEC-18 20:00:00','DD-MON-RR HH24:MI:SS'),2,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P101',2, to_date('3-DEC-18 18:30:00','DD-MON-RR HH24:MI:SS'),to_date('3-DEC-18 19:00:00','DD-MON-RR HH24:MI:SS'),4,'L105','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P101',3, to_date('3-DEC-18 19:00:00','DD-MON-RR HH24:MI:SS'),to_date('3-DEC-18 20:00:00','DD-MON-RR HH24:MI:SS'),2,'L103','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P102',1, to_date('5-DEC-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('5-DEC-18 19:00:00','DD-MON-RR HH24:MI:SS'),2,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P102',2, to_date('5-DEC-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('5-DEC-18 21:00:00','DD-MON-RR HH24:MI:SS'),4,'L105','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P102',3, to_date('5-DEC-18 19:00:00','DD-MON-RR HH24:MI:SS'),to_date('5-DEC-18 22:00:00','DD-MON-RR HH24:MI:SS'),2,'L103','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P103',1, to_date('12-DEC-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('12-DEC-18 21:00:00','DD-MON-RR HH24:MI:SS'),2,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P103',2, to_date('12-DEC-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('12-DEC-18 21:00:00','DD-MON-RR HH24:MI:SS'),4,'L105','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P103',3, to_date('12-DEC-18 19:00:00','DD-MON-RR HH24:MI:SS'),to_date('12-DEC-18 22:00:00','DD-MON-RR HH24:MI:SS'),2,'L103','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P104',1, to_date('26-OCT-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('26-OCT-18 22:00:00','DD-MON-RR HH24:MI:SS'),4,'L101','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P104',2, to_date('26-OCT-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('26-OCT-18 22:00:00','DD-MON-RR HH24:MI:SS'),4,'L100','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P105',1, to_date('25-OCT-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('25-OCT-18 22:00:00','DD-MON-RR HH24:MI:SS'),4,'L101','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P105',2, to_date('25-OCT-18 18:00:00','DD-MON-RR HH24:MI:SS'),to_date('25-OCT-18 22:00:00','DD-MON-RR HH24:MI:SS'),4,'L100','R104');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P199',1, to_date('10-DEC-18 8:00:00','DD-MON-RR HH24:MI:SS'), to_date('10-DEC-18 12:00:00','DD-MON-RR HH24:MI:SS'),1,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P349',1, to_date('12-DEC-18 12:00:00','DD-MON-RR HH24:MI:SS'),to_date('12-DEC-18 15:30:00','DD-MON-RR HH24:MI:SS'),1,'L103','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P85',1,  to_date('25-OCT-18 9:00:00','DD-MON-RR HH24:MI:SS'), to_date('25-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'),5,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P85',2,  to_date('25-OCT-18 8:00:00','DD-MON-RR HH24:MI:SS'), to_date('25-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'),2,'L102','R101');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P85',3, to_date('25-OCT-18 10:00:00','DD-MON-RR HH24:MI:SS'), to_date('25-OCT-18 15:00:00','DD-MON-RR HH24:MI:SS'),3,'L104','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',1, to_date('26-OCT-18 8:00:00','DD-MON-RR HH24:MI:SS'),  to_date('26-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'),4,'L100','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',2, to_date('26-OCT-18 9:00:00','DD-MON-RR HH24:MI:SS'),  to_date('26-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'),4,'L102','R101');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',3, to_date('26-OCT-18 10:00:00','DD-MON-RR HH24:MI:SS'), to_date('26-OCT-18 15:00:00','DD-MON-RR HH24:MI:SS'),4,'L106','R100');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',4, to_date('26-OCT-18 13:00:00','DD-MON-RR HH24:MI:SS'), to_date('26-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'),2,'L100','R103');
Insert into EventPlanLINE (PlanNo,LineNo,TimeStart,TimeEnd,NumberFld,LocNo,ResNo) values ('P95',5, to_date('26-OCT-18 13:00:00','DD-MON-RR HH24:MI:SS'), to_date('26-OCT-18 17:00:00','DD-MON-RR HH24:MI:SS'),2,'L101','R104');


