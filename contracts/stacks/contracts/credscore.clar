;; CredScore Clarity Contract
;; Decentralized credit scoring oracle adapter.


(define-map scores principal uint)
(define-constant oracle tx-sender)

(define-public (update-score (user principal) (score uint))
    (begin
        (asserts! (is-eq tx-sender oracle) (err u401))
        (map-set scores user score)
        (ok true)
    )
)

(define-read-only (get-score (user principal))
    (ok (default-to u0 (map-get? scores user)))
)

