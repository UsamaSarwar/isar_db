---
title: FAQ
---

# Frequently Asked Questions

A random collection of frequently asked questions about Isar DB and Flutter databases.

### Why do I need a database?

> I store my data in a backend database, why do I need Isar DB?.

Even today, it is very common to have no data connection if you are in a subway or a plane or if you visit your grandma, who has no Wi-Fi and a very bad cell signal. You shouldn't let bad connection cripple your app!

### Isar DB vs Hive

The answer is easy: Isar DB is a community-maintained fork of the original Isar project. The original Isar was started as a replacement for Hive and is now at a state where we recommend always using Isar DB over Hive.

### Where clauses?!

> Why do **_I_** have to choose which index to use?

There are multiple reasons. Many databases use heuristics to choose the best index for a given query. The database needs to collect additional usage data (-> overhead) and might still choose the wrong index. It also makes creating a query slower.

Nobody knows your data better than you, the developer. So you can choose the optimal index and decide for example whether you want to use an index for querying or sorting.

### Do I have to use indexes / where clauses?

Nope! Isar is most likely fast enough if you only rely on filters.

### Is Isar fast enough?

Isar is among the fastest databases for mobile, so it should be fast enough for most use cases. If you run into performance issues, chances are that you are doing something wrong.

### Does Isar DB increase the size of my app?

A little bit, yes. Isar DB will increase the download size of your app by about 1 - 1.5 MB. Isar DB Web adds only a few KB.

### The docs are incorrect / there is a typo.

Oh no, sorry. Please [open an issue](https://github.com/usamasarwar/isar_db/issues/new/choose) or, even better, a PR to fix it 💪.
