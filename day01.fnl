(fn max [list winner-count]
  (var result 0)
  (table.sort list (fn [a b] (> a b)))

  (each [key value (pairs list) &until (= key (+ 1 winner-number))]
    (set result (+ result value)))

  result)

(fn calorie-counting [winner-count]
  (local elf [])
  (var temp [])

  (local newline (lambda []
      (table.insert elf (accumulate [sum 0 i n (ipairs temp)] (+ sum n)))
      (set temp [])))

  (each [line (io.lines "day01.txt")]
    (if (not= line "")
      (table.insert temp line)
      (newline)))

  (newline)

  (print (max elf winner-number)))

; Part one
(calorie-counting 1)

; Part two
(calorie-counting 3)

; Day 01 note:
; - Conjure doesn't work
; - Still don't know how `map`, `filter`, `fold` works in Fennel
; - Luckily Fennel is simple enough
