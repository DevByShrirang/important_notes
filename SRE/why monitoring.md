
analyzing long-term trend
how big is my datatbase and how fast is it growing? how quickly is my daily-active user count growing?
Alerting:- we will get to know something is broken and somebody need to fix it right now. something might break soon so somebody l
            should soon.
Building dashboard- Dashboard should answer basic questions about your service 

white box monitoring -- monitoring of application running on server. monitoring bases on metrics exposed by the internals of the
systems , including logs ,--request_processing_time , request_errors_total. 
Black box monitoring-monitoring of servers disk space ,cpu usage , memory usage , load average testing externally visible 
behaviour as a user would see it. ----ping , http .

Monitoring system addressing two questions
whats broken and why ?
whats broken indicates symptom
why indicates a cause.

Four golden signals of monitoring.
latency   - Time taken to serve a request.   -- HTTP response time. DB query time.
traffic   -  amount of demand on system.     -- request per second (RPS)
errors    - rate of failed requests.          --5000 errors timeout rates
saturation  -  resource usage vc total capacity  - cpu usage , memory utilization , 

