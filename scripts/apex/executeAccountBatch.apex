AccountsBatch ab = new AccountsBatch();
database.executeBatch(ab,20);


List<Account>  accList = [select id, name from account];
AccountQueueableExample qa = new AccountQueueableExample(accList);
id jobid = system.enqueueJob(qa);
system.debug('job id is ' + jobid);
