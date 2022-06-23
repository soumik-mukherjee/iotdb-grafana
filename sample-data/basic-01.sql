 SET STORAGE GROUP TO root.ln.wf01.wt01;
 CREATE TIMESERIES root.ln.wf01.wt01.status WITH DATATYPE=BOOLEAN, ENCODING=PLAIN;
 CREATE TIMESERIES root.ln.wf01.wt01.temperature WITH DATATYPE=FLOAT, ENCODING=PLAIN;
 CREATE TIMESERIES root.ln.wf01.wt01.hardware WITH DATATYPE=INT32, ENCODING=PLAIN;
 
 INSERT INTO root.ln.wf01.wt01 (timestamp, temperature, status, hardware)
 VALUES (1, 1.1, false, 11);
 
 INSERT INTO root.ln.wf01.wt01 (timestamp, temperature, status, hardware)
 VALUES (2, 2.2, true, 22);
 
 INSERT INTO root.ln.wf01.wt01 (timestamp, temperature, status, hardware)
 VALUES (3, 3.3, false, 33);
 
 INSERT INTO root.ln.wf01.wt01 (timestamp, temperature, status, hardware)
 VALUES (4, 4.4, false, 44);
 
 INSERT INTO root.ln.wf01.wt01 (timestamp, temperature, status, hardware)
 VALUES (5, 5.5, false, 55);
 
 
 SELECT *
 FROM root.ln.wf01.wt01
 WHERE time >= 1
   AND time <= 6;
