# WTF is Event Sourcing?

Instead of storing the current state of your data (like a row in a database), you store every event that happened. The current state is derived by replaying the events. Like a bank account: you don't store "balance = $500", you store every deposit and withdrawal, and calculate the balance from those.

```
Traditional (store state):
  account.balance = 500    ← just the final number

Event Sourcing (store events):
  1. AccountCreated { balance: 0 }
  2. MoneyDeposited { amount: 1000 }
  3. MoneyWithdrawn { amount: 300 }
  4. MoneyWithdrawn { amount: 200 }
  → replay = $500          ← same result, full history
```

**Examples:** [EventStoreDB](https://github.com/EventStore/EventStore), [Apache Kafka](https://github.com/apache/kafka) (as event log), [Axon Framework](https://github.com/AxonFramework/AxonFramework)
