# README

A 10-minute proving ground to figure out if GoodJob will schedule a job if current transaction fails

The answer to that question will determine whether we need to utilize [transactional outbox](https://microservices.io/patterns/data/transactional-outbox.html) or not

Reproduce:

1. Start a server and navigate to http://localhost:3000/good_quotes
2. Create a quote – you should see something like that:

```
[ActiveJob] [ReactToNewRecordJob] [3e52bbe2-9a32-4d17-833a-93f73e6a9c6b] Successfully reacted to new record 2
```

To see if it'll still shedule the job if transaction rolls back and the job never schedules, create a good quote with the text "rollback" – it will throw an exception in an "after_create" callback, essentially halting the transaction

TL;DR: it schedules but rolls back successfully
