# Elevator Project

## Summary
Software for controlling `n` elevators working in parallel across `m` floors.

## Main components

### FSM
Uses elevator hardware to run elevator, while reading floors and opening/closing door. Decides when the elevator should stop, and when it should run up/down. Responsible for executing orders which it receives from the distributor. Sends the state of the local elevator to the distributor each time an event occurs.

### Distributor
Receives local button events, local elevator state, and network updates from other elevators. Uses this information to determine which orders should be executed locally, which it then sends to the FSM.
