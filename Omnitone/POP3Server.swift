/*
 S> +OK POP3 server ready.
 C> STLS
 S> +OK Begin TLS Negotiation
 */

let effect1 = GhostwriterSpeakEffect()
let binding1 = Binding(value: .structuredText(StructuredText(
    .text("+OK POP3 server ready."), .newline(.crlf)
)))
let instance1 = EffectInstance(effect: effect1, binding: binding1)

let effect2 = GhostwriterListenEffect()
let binding2 = Binding(value: .structuredText(StructuredText(
    .text("STLS"), .newline(.crlf)
)))
let instance2 = EffectInstance(effect: effect2, binding: binding2)

let effect3 = GhostwriterSpeakEffect()
let binding3 = Binding(value: .structuredText(StructuredText(
    .text("+OK Begin TLS Negotiation"), .newline(.crlf)
)))
let instance3 = EffectInstance(effect: effect3, binding: binding3)

let chain = EffectChain(
    instance: instance1,
    sequencer: Sequential(),
    chain: EffectChain(
        instance: instance2,
        sequencer: Blocking(),
        chain: EffectChain(
            instance: instance3
        )
    )
)

return chain
