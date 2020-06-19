# Impact of transmission errors in the performance of a wireless network link


## Requirements

- Matlab

## Implementation - 1

Consider a wireless link used by two stations for data communications. The link can be either
in a normal state with a probability of p or in an interference state with a probability of 1 – p.
Consider the following probability values: p = 99%, p = 99.9%, p = 99.99% and p = 99.999%.
The bit error rate is 10-7 when the link is in the normal state and 10-3 when the link is in the
interference state.

The two stations exchange from time to time a set of n consecutive control frames of size 128
Bytes each to decide if the link is in interference state. Both stations determine with a 100%
probability if the control frames have been received with errors. The stations decide that the
link is in interference state when the n consecutive control frames are received with errors.
Consider the following definitions:

- a **false positive** is when a station decides wrongly that the link is in interference state (i.e.,
it receives n consecutive control frames with error and the link is in the normal state)
- a **false negative** is when a station decides wrongly that the link is not in the interference
state (i.e., at least one of the n consecutive control frames is received without errors and
the link is in the interference state)

## Tasks - 1

1. For each value of p, determine the probability of the link being in the interference state
and in the normal state when one control frame is received with errors.

2. For each value of p and for n = 2, 3, 4 and 5, determine the probability of false
positives.

3. For each value of p and for n = 2, 3, 4 and 5, determine the probability of false
negatives.


## Implementation - 2

Consider a wireless link between multiple stations for data communications. The bit error rate
introduced by the wireless link due to the variation along with time of the propagation and
interference factors is approximately given by the following Markov chain:

![](/img00.png)


where the state transition rates are in number of transitions per hour. Consider that the link is
in interference state when its bit error rate is 10-3
or higher.

## Tasks - 2

1. What is the average percentage of time the link is on each of the five possible states?

2. What is the average bit error rate of the link?

3. What is the average time duration (in minutes) that the link is on each of the five
possible states?

4. What is the probability of the link being in interference state?

5. What is the average bit error rate of the link when it is in the interference state?

6. What is the average time duration (in minutes) of the interference state?

## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details