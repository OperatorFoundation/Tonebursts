// Speak
let speakEffect1 = GhostwriterSpeakEffect()
let speakBinding1 = Binding(value: .structuredText(StructuredText(TypedText.text("220 mail.imc.org SMTP service ready"), TypedText.newline(.crlf))))
let speak1 = EffectInstance(effect: speakEffect1, binding: speakBinding1)

// Listen
let listenEffect1 = GhostwriterListenEffect()
let listenBinding1 = Binding(value: .structuredText(StructuredText(TypedText.text("EHLO mail.imc.org"), TypedText.newline(.crlf))))
let listen1 = EffectInstance(effect: listenEffect1, binding: listenBinding1)

// Speak
let speakEffect2 = GhostwriterSpeakEffect()
let speakBinding2 = Binding(value: .structuredText(StructuredText(TypedText.text("250-mail.imc.org "), TypedText.text("offers a warm hug of welcome"), TypedText.newline(.crlf), TypedText.text("250-8BITMIME"), TypedText.newline(.crlf), TypedText.text("250-DSN"), TypedText.newline(.crlf), TypedText.text("250-STARTTLS"), TypedText.newline(.crlf))))
let speak2 = EffectInstance(effect: speakEffect2, binding: speakBinding2)

// Listen
let listenEffect2 = GhostwriterListenEffect()
let listenBinding2 = Binding(value: .structuredText(StructuredText(TypedText.text("STARTTLS"), TypedText.newline(.crlf))))
let listen2 = EffectInstance(effect: listenEffect2, binding: listenBinding2)

// Speak
let speakEffect3 = GhostwriterSpeakEffect()
let speakBinding3 = Binding(value: .structuredText(StructuredText(TypedText.text("220 Go ahead"), TypedText.newline(.crlf))))
let speak3 = EffectInstance(effect: speakEffect3, binding: speakBinding3)

let endEffect = EndProgramEffect()
let end = EffectInstance(effect: endEffect)

let timeoutDuration = TimeDuration(resolution: .seconds, ticks: 10)

let chain = EffectChain(
    instance: speak1,
    sequencer: Sequential(),
    chain:  EffectChain(
        instance: listen1,
        sequencer: Waiting(timeoutDuration),
        chain: EffectChain(
            instance: speak2,
            sequencer: Sequential(),
            chain: EffectChain(
                instance: listen2,
                sequencer: Waiting(timeoutDuration),
                chain: EffectChain(
                    instance: speak3,
                    sequencer: Sequential(),
                        chain: EffectChain(
                            instance: end
                        )
                    )
                )
            )
        )
    )

return chain
