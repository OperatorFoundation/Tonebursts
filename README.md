# Tonebursts
Tonebursts is a collection of Tonebursts written in Swift for tuning the Swift Replicant Transport.

### Replicant

[Replicant](https://github.com/OperatorFoundation/ReplicantSwift.git) is Operator's Pluggable Transport that can be tuned for each adversary. It is designed to be more effective and efficient than older transports. It can be quickly reconfigured as filtering conditions change by updating just the configuration file.

There are two main advantages to using Replicant. First, it can be more effective than other transports. Simple transports such as shadowsocks work well against some adversaries, but other adversaries with more advanced filtering techniques can easily block them. In situations such as this, Replicant can work where other transports fail. Second, Replicant can be more efficient than other transports. Some transports that are very effective at circumventing the filter are also very inefficient, using a lot of bandwidth in order to implement their approach to shapeshifting. This can make it very expensive to run proxy servers using these transports. Replicant is designed to use the minimum amount of additional bandwidth in order to provide shapeshifting, and can therefore save on the cost of providing proxy servers. Less additional bandwidth used also means a faster connection and more reliable performance on slower Internet connections.
 
