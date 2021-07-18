# Transaction

Atomicity as 

* All the commands in a transaction are serialized and executed sequentially. It can never happen that a request issued by another client is served **in the middle** of the execution of a Redis transaction. This guarantees that the commands are executed as a single isolated operation.
* Either succeed or abort if semantic error or discard. but if other error, transaction can still succeed.
* But only for single client, concurrent transactions issued by different clients can still have race conditions

No isolation.

multi: start transaction

exec: commit transaction

discard: abort transaction

