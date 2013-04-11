(defun factors (n &aux (lows '()) (highs '()))
  (do ((limit (isqrt n)) (factor 1 (1+ factor)))
      ((= factor limit)
       (when (= n (* limit limit))
         (push limit highs))
       (nreconc lows highs))
    (multiple-value-bind (quotient remainder) (floor n factor)
      (when (zerop remainder)
        (push factor lows)
        (push quotient highs)))))
