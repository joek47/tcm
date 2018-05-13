;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;; PROFILING RULES
	; profile smoking or drinking, damp-heat cf 40
  (rule (if profile-smoking is yes) 
        (then body-type is damp-heat with certainty 40 ))

	; profile stress, qi-stagnation cf 40
  (rule (if profile-stress is yes) 
        (then body-type is qi-stagnation with certainty 40 ))

	; profile high blood pressure yin-deficient cf 40
  (rule (if profile-highblood is yes) 
        (then body-type is yin-deficient with certainty 40 ))

	; profile diabetes yin-deficient cf 40
  (rule (if profile-diabetes is yes) 
        (then body-type is yin-deficient with certainty 40 ))

	; profile poor sleep yin-deficient cf 40
  (rule (if profile-poorsleep is yes) 
        (then body-type is yin-deficient with certainty 40 ))

	; profile heart disease qi-deficient cf 40
  (rule (if profile-heartdisease is yes) 
        (then body-type is qi-deficient with certainty 40 ))

	; profile overweight damp-retention cf 40
  (rule (if profile-overweight is yes) 
        (then body-type is damp-retention with certainty 40 ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;;; JUMP QUESTIONS RULES for TEXT-FOR-ID
  (rule (if bloated is yes) 
        (then body-type is damp-retention with certainty 40 ))

  (rule (if dizzy is yes) 
        (then body-type is damp-retention with certainty 40 ))

  (rule (if pale-lips is yes) 
        (then body-type is blood-deficient with certainty 40 and
            body-type is yang-deficient with certainty 40 ))

  (rule (if sticky-clammy is yes) 
        (then body-type is damp-heat with certainty 40 ))

  (rule (if constip is yes) 
        (then body-type is heat with certainty 40 ))

  (rule (if head-aches is yes) 
        (then body-type is blood-stasis with certainty 40 and
            body-type is heat with certainty 40 ))

  (rule (if bad-breath is yes) 
        (then body-type is damp-heat with certainty 40 and 
            body-type is heat with certainty 40 ))

  (rule (if bitter-taste is yes) 
        (then body-type is damp-heat with certainty 40 and 
            body-type is heat with certainty 40 ))

  (rule (if depression is yes) 
        (then body-type is qi-stagnation with certainty 40 ))

  (rule (if insomnia is yes) 
        (then body-type is qi-stagnation with certainty 40 and
            body-type is blood-deficient with certainty 40 ))

  (rule (if palpitations is yes) 
        (then body-type is qi-stagnation with certainty 40 and
            body-type is blood-deficient with certainty 40 ))

  (rule (if irritable is yes) 
        (then body-type is yin-deficient with certainty 40 and
            body-type is heat with certainty 40 ))

  (rule (if feverish is yes) 
        (then body-type is yin-deficient with certainty 40 and
            body-type is heat with certainty 40 ))

  (rule (if ringing-ears is yes) 
        (then body-type is yin-deficient with certainty 40 ))

  (rule (if fatigue is yes) 
        (then body-type is qi-deficient with certainty 40 and
            body-type is blood-deficient with certainty 40 ))

  (rule (if poor-appetite is yes) 
        (then body-type is qi-deficient with certainty 40 and
            body-type is blood-deficient with certainty 40 ))

  (rule (if sweating is yes) 
        (then body-type is qi-deficient with certainty 40 and
            body-type is damp-retention with certainty 40 ))

  (rule (if cold-easily is yes) 
        (then body-type is qi-deficient with certainty 40 and
            body-type is yang-deficient with certainty 40 and
            body-type is blood-stasis with certainty 40 ))

  (rule (if cold-limbs is yes) 
        (then body-type is yang-deficient with certainty 40 and
            body-type is blood-stasis with certainty 40 ))

  (rule (if acne-pimples is yes) 
        (then body-type is damp-heat with certainty 40 and
            body-type is blood-stasis with certainty 40 ))

;;;;;;;; TEXT-FOR-ID
    ; text-for-id top damp-retention
    (text-for-id (id bloated)
        (text "Do you have bloated stomach"))

    (text-for-id (id dizzy)
        (text "Are you feeling lightheaded or dizzy?"))

    (text-for-id (id pale-lips)
        (text "Do you have pale lips?"))

    ; text-for-id top damp-heat
    (text-for-id (id sticky-clammy)
        (text "Do you have sticky or clammy skin?"))

    ; text-for-id top blood-stasis and heat
    (text-for-id (id head-aches)
        (text "Are you experiencing headaches?"))

    ; text-for-id top damp-heat and heat
    (text-for-id (id bad-breath)
        (text "Do you notice bad breath and breath odours?"))
    (text-for-id (id bitter-taste)
        (text "Do you have bitter taste in mouth?"))

    ; text-for-id top qi-stagnation
    (text-for-id (id depression)
        (text "Are you feeling depressed?"))

    ; text-for-id top qi-stagnation and blood-deficient
    (text-for-id (id insomnia)
        (text "Do you have insomnia?"))
    (text-for-id (id palpitations)
        (text "Do you notice fast heart beats or palpitations in your chest?"))

    ; text-for-id top heat
    (text-for-id (id constip)
        (text "Are you experiencing constipation?"))

    ; text-for-id top yin-deficient and heat
    (text-for-id (id irritable)
        (text "Do you often feel irritable for no reason?"))
    (text-for-id (id feverish)
        (text "Are you feeling a bit feverish?"))

    ; text-for-id top yin-deficient 
    (text-for-id (id ringing-ears)
        (text "Do you keep hearing ringing, buzzing or hissing sounds that appear to come from inside your body?"))

    ; text-for-id top qi-deficient and blood-deficient 
    (text-for-id (id fatigue)
        (text "Do you feel fatigue or exhaustion?"))
    (text-for-id (id poor-appetite)
        (text "Do you have decreased or poor appetite?"))

    ; text-for-id top qi-deficient and damp-retention 
    (text-for-id (id sweating)
        (text "Do you sweat spontaneously or excessively?"))

    ; text-for-id top qi-deficient, yang-deficient, blood-stasis
    (text-for-id (id cold-easily)
        (text "Do you feel cold easily?"))

    ; text-for-id top yang-deficient, blood-stasis
    (text-for-id (id cold-limbs)
        (text "Are your hands and feet cold?"))

    ; text-for-id top damp-heat, blood-stasis
    (text-for-id (id acne-pimples)
        (text "Is your skin prone to acne or pimples?"))

;;;;;;; TOP PROFILE questions
    (question (qn sticky-clammy) (top damp-heat))
    (question (qn bad-breath) (top damp-heat))
    (question (qn bitter-taste) (top damp-heat))

    (question (qn bad-breath) (top heat))
    (question (qn bitter-taste) (top heat))
    (question (qn irritable) (top heat))
    (question (qn feverish) (top heat))
    (question (qn constip) (top heat))
    (question (qn head-aches) (top heat))
    (question (qn head-aches) (top blood-stasis))

    (question (qn depression) (top qi-stagnation))
    (question (qn insomnia) (top qi-stagnation))
    (question (qn palpitations) (top qi-stagnation))

    (question (qn insomnia) (top blood-deficient))
    (question (qn palpitations) (top blood-deficient))

    (question (qn irritable) (top yin-deficient))
    (question (qn feverish) (top yin-deficient))
    (question (qn ringing-ears) (top yin-deficient))

    (question (qn fatigue) (top qi-deficient))
    (question (qn fatigue) (top blood-deficient))

    (question (qn pale-lips) (top blood-deficient))
    (question (qn pale-lips) (top yang-deficient))

    (question (qn poor-appetite) (top qi-deficient))
    (question (qn poor-appetite) (top blood-deficient))

    (question (qn sweating) (top qi-deficient))
    (question (qn sweating) (top damp-retention))
    (question (qn bloated) (top damp-retention))
    (question (qn dizzy) (top damp-retention))

    (question (qn cold-easily) (top qi-deficient))
    (question (qn cold-easily) (top yang-deficient))
    (question (qn cold-easily) (top blood-stasis))

    (question (qn cold-limbs) (top blood-stasis))
    (question (qn cold-limbs) (top yang-deficient))

    (question (qn acne-pimples) (top blood-stasis))
    (question (qn acne-pimples) (top damp-heat))
