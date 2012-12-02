(define-module (gnumaku keycodes)
  #:export (keycode))

(define (keycode key)
  (define keycodes (make-hash-table))

  (define (init-keycodes)
    "Converted from Allegro 5"
    (hash-set! keycodes 'a   1)
    (hash-set! keycodes 'b   2)
    (hash-set! keycodes 'c   3)
    (hash-set! keycodes 'd   4)
    (hash-set! keycodes 'e   5)
    (hash-set! keycodes 'f   6)
    (hash-set! keycodes 'g   7)
    (hash-set! keycodes 'h   8)
    (hash-set! keycodes 'i   9)
    (hash-set! keycodes 'j   10)
    (hash-set! keycodes 'k   11)
    (hash-set! keycodes 'l   12)
    (hash-set! keycodes 'm   13)
    (hash-set! keycodes 'n   14)
    (hash-set! keycodes 'o   15)
    (hash-set! keycodes 'p   16)
    (hash-set! keycodes 'q   17)
    (hash-set! keycodes 'r   18)
    (hash-set! keycodes 's   19)
    (hash-set! keycodes 't   20)
    (hash-set! keycodes 'u   21)
    (hash-set! keycodes 'v   22)
    (hash-set! keycodes 'w   23)
    (hash-set! keycodes 'x   24)
    (hash-set! keycodes 'y   25)
    (hash-set! keycodes 'z   26)

    (hash-set! keycodes '0   27)
    (hash-set! keycodes '1   28)
    (hash-set! keycodes '2   29)
    (hash-set! keycodes '3   30)
    (hash-set! keycodes '4   31)
    (hash-set! keycodes '5   32)
    (hash-set! keycodes '6   33)
    (hash-set! keycodes '7   34)
    (hash-set! keycodes '8   35)
    (hash-set! keycodes '9   36)

    (hash-set! keycodes 'pad_0  37)
    (hash-set! keycodes 'pad_1  38)
    (hash-set! keycodes 'pad_2  39)
    (hash-set! keycodes 'pad_3  40)
    (hash-set! keycodes 'pad_4  41)
    (hash-set! keycodes 'pad_5  42)
    (hash-set! keycodes 'pad_6  43)
    (hash-set! keycodes 'pad_7  44)
    (hash-set! keycodes 'pad_8  45)
    (hash-set! keycodes 'pad_9  46)

    (hash-set! keycodes 'f1   47)
    (hash-set! keycodes 'f2   48)
    (hash-set! keycodes 'f3   49)
    (hash-set! keycodes 'f4   50)
    (hash-set! keycodes 'f5   51)
    (hash-set! keycodes 'f6   52)
    (hash-set! keycodes 'f7   53)
    (hash-set! keycodes 'f8   54)
    (hash-set! keycodes 'f9   55)
    (hash-set! keycodes 'f10  56)
    (hash-set! keycodes 'f11  57)
    (hash-set! keycodes 'f12  58)

    (hash-set! keycodes 'escape  59)
    (hash-set! keycodes 'tilde  60)
    (hash-set! keycodes 'minus  61)
    (hash-set! keycodes 'equals  62)
    (hash-set! keycodes 'backspace  63)
    (hash-set! keycodes 'tab  64)
    (hash-set! keycodes 'openbrace  65)
    (hash-set! keycodes 'closebrace  66)
    (hash-set! keycodes 'enter  67)
    (hash-set! keycodes 'semicolon  68)
    (hash-set! keycodes 'quote  69)
    (hash-set! keycodes 'backslash  70)
    (hash-set! keycodes 'backslash2  71)
    (hash-set! keycodes 'comma  72)
    (hash-set! keycodes 'fullstop  73)
    (hash-set! keycodes 'slash  74)
    (hash-set! keycodes 'space  75)

    (hash-set! keycodes 'insert  76)
    (hash-set! keycodes 'delete  77)
    (hash-set! keycodes 'home  78)
    (hash-set! keycodes 'end  79)
    (hash-set! keycodes 'pgup  80)
    (hash-set! keycodes 'pgdn  81)
    (hash-set! keycodes 'left  82)
    (hash-set! keycodes 'right  83)
    (hash-set! keycodes 'up   84)
    (hash-set! keycodes 'down  85)

    (hash-set! keycodes 'pad_slash  86)
    (hash-set! keycodes 'pad_asterisk 87)
    (hash-set! keycodes 'pad_minus  88)
    (hash-set! keycodes 'pad_plus  89)
    (hash-set! keycodes 'pad_delete  90)
    (hash-set! keycodes 'pad_enter  91)

    (hash-set! keycodes 'printscreen 92)
    (hash-set! keycodes 'pause  93)

    (hash-set! keycodes 'abnt_c1  94)
    (hash-set! keycodes 'yen  95)
    (hash-set! keycodes 'kana  96)
    (hash-set! keycodes 'convert  97)
    (hash-set! keycodes 'noconvert  98)
    (hash-set! keycodes 'at   99)
    (hash-set! keycodes 'circumflex  100)
    (hash-set! keycodes 'colon2  101)
    (hash-set! keycodes 'kanji  102)

    (hash-set! keycodes 'pad_equals  103)
    (hash-set! keycodes 'backquote  104)
    (hash-set! keycodes 'semicolon2  105)
    (hash-set! keycodes 'command  106)
    (hash-set! keycodes 'unknown     107)

    (hash-set! keycodes 'modifiers  215)

    (hash-set! keycodes 'lshift  215)
    (hash-set! keycodes 'rshift  216)
    (hash-set! keycodes 'lctrl  217)
    (hash-set! keycodes 'rctrl  218)
    (hash-set! keycodes 'alt  219)
    (hash-set! keycodes 'altgr  220)
    (hash-set! keycodes 'lwin  221)
    (hash-set! keycodes 'rwin  222)
    (hash-set! keycodes 'menu  223)
    (hash-set! keycodes 'scrolllock  224)
    (hash-set! keycodes 'numlock  225)
    (hash-set! keycodes 'capslock  226))

  ;; initalize keycodes the first time this procedure is called
  (unless (hash-ref keycodes 'a)
    (init-keycodes))

  (hash-ref keycodes key))
