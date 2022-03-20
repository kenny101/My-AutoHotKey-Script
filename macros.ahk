SetCapsLockState, AlwaysOff

; Toggle CapsLock with Shift+CapsLock
Shift & CapsLock::
    state := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
    if (state)
        SetCapsLockState, AlwaysOff
    else
        SetCapsLockState, AlwaysOn
return


; '/' and '?' for 60% boards
Control & up::Send /         ; CTRL UP       (Send /)
+Up::?               ; Shift UP       (Send ?)

; Change desktops
CapsLock & q::Send {LWin Down}{LControl Down}{LEFT}{LControl Up}{LWin Up}
CapsLock & e::Send {LWin Down}{LControl Down}{RIGHT}{LControl Up}{LWin Up}


; arrow keys and paging right/left
CapsLock & u::Send {LControl Down}{LEFT}{LControl Up}
CapsLock & o::Send {LControl Down}{RIGHT}{LControl Up}
CapsLock & l::Send {RIGHT}
CapsLock & j::Send {LEFT}
CapsLock & i::Send {UP}
CapsLock & k::Send {DOWN}
CapsLock & m::Send {PgUp}
CapsLock & n::Send {PgDn}


; Alternative CTRL macro with arrow keys
; ctrl Keypress Implied for all below
; Ctrl & i::Send {UP}       ; i UP
; Ctrl & k::Send {DOWN}     ; k DOWN 
; Ctrl & j::Send {LEFT}     ; j LEFT       
; Ctrl & l::Send {RIGHT}    ; l RIGHT


;common ctrl hotkeys remapped using CapsLock
CapsLock & c::Send {LControl Down}{c}{LControl Up}
CapsLock & v::Send {LControl Down}{v}{LControl Up}
CapsLock & a::Send {LControl Down}{a}{LControl Up}
CapsLock & z::Send {LControl Down}{z}{LControl Up}
CapsLock & w::Send {LControl Down}{w}{LControl Up}
CapsLock & t::Send {LControl Down}{t}{LControl Up}
CapsLock & h::Send {LControl Down}{h}{LControl Up}
CapsLock & p::Send {LControl Down}{p}{LControl Up}
CapsLock & r::Send {LControl Down}{r}{LControl Up}
CapsLock & d::Send {LControl Down}{d}{LControl Up}
CapsLock & f::Send {LControl Down}{f}{LControl Up}
CapsLock & s::Send {LControl Down}{s}{LControl Up}
CapsLock & BackSpace::Send {LControl Down}{BackSpace}{LControl Up}
CapsLock & Enter::Send {LControl Down}{Enter}{LControl Up}
CapsLock & [::Send {LControl Down}{[}{LControl Up}
CapsLock & ]::Send {LControl Down}{]}{LControl Up}
CapsLock & x::Send {LControl Down}{x}{LControl Up}

; tilde key for 60% boards
CapsLock & Esc::~


; media control
Alt & WheelUp::Send {Volume_Up}
Alt & WheelDown::Send {Volume_Down}
Alt & MButton::Send {Media_Play_Pause}
