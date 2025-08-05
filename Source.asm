INCLUDE Irvine32.inc

.data


pacmanArt   BYTE "                                                                                                                       ", 0ah   
            BYTE "                 __________      _____         _________   _____        _____       _____       _____       ___        ", 0ah
            BYTE "                / /_______ \    / / \ \       / _______ \  | |\ \      / /| |      / / \ \      | |\ \      | |        ", 0ah
            BYTE "               / /        \ \  / /   \ \     / /       \_\ | | \ \    / / | |     / /   \ \     | | \ \     | |        ", 0ah
            BYTE "              / /         | | / /     \ \   | |            | |  \ \__/ /  | |    / /     \ \    | |  \ \    | |        ", 0ah
            BYTE "             / /_________/ / / /_______\ \  | |            | |   \____/   | |   / /_______\ \   | |   \ \   | |        ", 0ah
            BYTE "            / /___________/ / /---------\ \ | |         __ | |            | |  / /---------\ \  | |    \ \  | |        ", 0ah
            BYTE "           / /             / /           \ \ \ \_______/ / | |            | | / /           \ \ | |     \ \ | |        ", 0ah
            BYTE "          /_/             /_/             \_\ \_________/  |_|            |_|/_/             \_\|_|      \_\|_|        ", 0ah
            BYTE "                                                                                                                       ", 0
startPrompt BYTE "                    Press any key to start...", 0

MenuArt     BYTE "                                                                                                                       ", 0ah   
            BYTE "                            _____        _____   ___________  _____       ___  _          _                            ", 0ah
            BYTE "                            | |\ \      / /| |  |  _________| | |\ \      | | | |        | |                           ", 0ah
            BYTE "                            | | \ \    / / | |  | |           | | \ \     | | | |        | |                           ", 0ah
            BYTE "                            | |  \ \__/ /  | |  | |______     | |  \ \    | | | |        | |                           ", 0ah
            BYTE "                            | |   \____/   | |  |  ______|    | |   \ \   | | | |        | |                           ", 0ah
            BYTE "                            | |            | |  | |           | |    \ \  | | | |        | |                           ", 0ah
            BYTE "                            | |            | |  | |_________  | |     \ \ | |  \ \______/ /                            ", 0ah
            BYTE "                            |_|            |_|  |___________| |_|      \_\|_|   \________/                             ", 0ah
            BYTE "                                                                                                                       ", 0

L1Art       BYTE "                                                                                                                       ", 0ah   
            BYTE "              ___              ___________  ___        ___  ___________  ___                   ___                     ", 0ah
            BYTE "              | |             |  _________| | |        | | |  _________| | |                  /   |                    ", 0ah
            BYTE "              | |             | |           | |        | | | |           | |                 / /| |                    ", 0ah
            BYTE "              | |             | |______     | |        | | | |______     | |                /_/ | |                    ", 0ah
            BYTE "              | |             |  ______|     \ \      / /  |  ______|    | |                    | |                    ", 0ah
            BYTE "              | |             | |             \ \    / /   | |           | |                    | |                    ", 0ah
            BYTE "              | |___________  | |_________     \ \__/ /    | |_________  | |___________      ___| |___                 ", 0ah
            BYTE "              |_____________| |___________|     \____/     |___________| |_____________|    |_________|                ", 0ah
            BYTE "                                                                                                                       ", 0

L2Art       BYTE "                                                                                                                       ", 0ah   
            BYTE "              ___              ___________  ___        ___  ___________  ___                 _________                 ", 0ah
            BYTE "              | |             |  _________| | |        | | |  _________| | |                | _______ |                ", 0ah
            BYTE "              | |             | |           | |        | | | |           | |                |_|     | |                ", 0ah
            BYTE "              | |             | |______     | |        | | | |______     | |                        | |                ", 0ah
            BYTE "              | |             |  ______|     \ \      / /  |  ______|    | |                 _______| |                ", 0ah
            BYTE "              | |             | |             \ \    / /   | |           | |                |  _______|                ", 0ah
            BYTE "              | |___________  | |_________     \ \__/ /    | |_________  | |___________     | |_______                 ", 0ah
            BYTE "              |_____________| |___________|     \____/     |___________| |_____________|    |_________|                ", 0ah
            BYTE "                                                                                                                       ", 0

L3Art       BYTE "                                                                                                                        ", 0ah   
            BYTE "              ___              ___________  ___        ___  ___________  ___                 _________                  ", 0ah
            BYTE "              | |             |  _________| | |        | | |  _________| | |                | _______ |                 ", 0ah
            BYTE "              | |             | |           | |        | | | |           | |                |_|     | |                 ", 0ah
            BYTE "              | |             | |______     | |        | | | |______     | |                   _____| |                 ", 0ah
            BYTE "              | |             |  ______|     \ \      / /  |  ______|    | |                  |_____  |                 ", 0ah 
            BYTE "              | |             | |             \ \    / /   | |           | |                 _      | |                 ", 0ah
            BYTE "              | |___________  | |_________     \ \__/ /    | |_________  | |___________     | |_____| |                 ", 0ah
            BYTE "              |_____________| |___________|     \____/     |___________| |_____________|    |_________|                 ", 0ah
            BYTE "                                                                                                                        ", 0

; Game OVer

gameOverMsg db "GAME OVER",0


; Menu Screem
menuOption1 BYTE "1. Display Instructions", 0
menuOption2 BYTE "2. Display High Score", 0
menuOption3 BYTE "3. Start Game", 0

; Instructions
instruction1 BYTE "1. Use 'W', 'A', 'S', 'D' keys to move Pac-Man.", 0
instruction2 BYTE "2. Avoid the ghosts ( O ) to prevent losing lives.", 0
instruction3 BYTE "3. Collect coins ( o ) to increase your score.", 0
returnPrompt BYTE "Press any key to return to the menu...", 0

; ground / boundaries
ground BYTE "_______________________________________________________________________________________________________________________",0
ground1 BYTE "|",0ah,0
ground2 BYTE "|",0

; horizontal walls
hwall BYTE "=====================", 0  ; representing horizontal wall
vwall BYTE '#',0

;Level 1
    hwallX db 08, 35, 62, 89, 20, 74, 08, 35, 62, 89
    hwallY db 06, 06, 06, 06, 15, 15, 23, 23, 23, 23

    ;vertical walls 

    vwallX db 18, 45, 72, 99, 59, 18, 45, 72, 99
    vwallY db 03, 03, 03, 03, 12, 20, 20, 20, 20

; Level 2
    hwallX2 db 17, 27, 37, 27, 17, 81, 71, 61, 71, 81
    hwallY2 db 05, 10, 15, 20, 25, 05, 10, 15, 20, 25

    ;vertical walls 

    vwallX2 db 10, 10, 10, 59, 59, 59, 110, 110, 110
    vwallY2 db 03, 12, 21, 03, 12, 21, 003, 012, 021

; Level 3
    hwallX3 db 17, 17, 17, 17, 49, 49, 80, 80, 80, 80
    hwallY3 db 03, 11, 18, 26, 06, 24, 03, 11, 18, 26

    ;vertical walls 
    vwallX3 db 17, 17, 48, 70, 59, 48, 70, 101, 101
    vwallY3 db 04, 19, 06, 06, 12, 18, 18, 004, 019

;coins arrays
coinsx db 100 dup(?)
coinsy db 100 dup(?)

temp byte ?

strScore BYTE "Your score is: ",0
score Dword 0

; User Position
xPos BYTE 2
yPos BYTE 15

; Lives and Levels
lives db 3
levels db 1
livesstr db "Lives: ",0
levelstr db "Level: ",0

; Enemy Position
enemy BYTE 'O',0
Enemyx db 116
Enemyy db 15
Enemyx2 db 116
Enemyy2 db 2
Enemyx3 db 116
Enemyy3 db 25

; fruit
fruitx db 0
fruity db 0
inputChar BYTE ?

; Name
inputNamePrompt db "Enter your name: ", 0
names db 20 DUP(?)

; Paused
strPaused db "Paused!!!",0
strclear db "         ",0

.code
main PROC

    CALL DrawStartScreen
    CALL Clrscr

    CALL MENU
    CALL Clrscr

    CALL NameInput
    CALL Clrscr

LevelChange: 
    CALL LevelScreen

    mov inputChar, 'w'
    
    ; draw ground at (0,29):
    mov eax,blue ;(black * 16)
    call SetTextColor
    mov dl,0
    mov dh,29
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    ; Left Boundary
    mov ecx, 28
    mov dh, 2
    mov temp, dh
    l1:
        mov dl, 0
        mov dh, temp
        call Gotoxy
        mov edx, OFFSET ground1
        call WriteString
        inc temp  ; Increment dl to move to the next column
        loop l1
    
    ; Right Boundary
    mov ecx,28
    mov dh,2
    mov temp, dh
    l2:
        mov dl,119
        mov dh, temp
        call Gotoxy
        mov edx,OFFSET ground2
        call WriteString
        inc temp
        loop l2

    ; Top Row
    mov eax,white (black * 16)
    call SetTextColor

    mov dl,0
    mov dh,0
    call Gotoxy
    mov edx,OFFSET strScore
    call WriteString
    mov eax,score
    call WriteInt
    
    mov dl,56
    mov dh,0
    call Gotoxy
    mov edx,OFFSET livesstr
    call WriteString
    mov eax,0
    mov al, lives
    call WriteInt

    mov dl,110
    mov dh,0
    call Gotoxy
    mov edx,OFFSET levelstr
    call WriteString
    mov eax,0
    mov al, levels
    call WriteInt

    CALL SpreadRandomCoins
    CALL DrawEnemy

    ; Draw walls
        ; Horizontal
    mov eax, blue               ; set text color to blue for walls
    call SetTextColor

    mov ecx, 10                 ; Number of walls
    mov esi, offset hwallX
    mov edi, offset hwallY


    drawWallsLoop:    
        mov dl, [esi]
        mov dh, [edi]
        call Gotoxy
        mov edx, offset hwall
        call WriteString

        inc esi
        inc edi
        loop drawWallsLoop

        ; Vertical
        mov ecx, 9                 ; Number of walls
        mov esi, offset vwallX
        mov edi, offset vwallY

        drawVWallsLoop:
            mov ebx,ecx
            mov ecx,0
            mov cl,7
            mov dl, [esi]
            mov dh, [edi]
            L3:
                call Gotoxy
                mov al, vwall
                call WriteChar
                inc dh
                loop L3

            inc esi
            inc edi
            mov ecx,ebx
            loop drawVWallsLoop

    call DrawPlayer

    cmp levels, 2
    jne bahar
    call DrawFruit
    bahar:
    call Randomize

    gameLoop:

        CALL CheckCollision
        CALL Fruiteat
        cmp lives, 0
        je exitGame
        CALL CheckAndCollectCoin

        CALL CheckAndUpdateLevel
        cmp levels, 4
        je exitGame
        cmp al, 1
        je LevelChange

        mov eax,white (black * 16)
        call SetTextColor

        
        ; get user key input:
        call ReadKey
        jz SkipMove
        mov inputChar,al


        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        ; Pause game
        cmp inputChar, "p"
        jne nopause
        CALL PauseGame

        nopause:
        ; User Movement


        cmp levels,3
        jne bahar2
        cmp inputchar, "a"
        jne bahar2
        cmp xPos, 1
        jne bahar2
        cmp yPos, 15
        jne bahar2

        call UpdatePlayer
        mov xPos, 117
        call DrawPlayer

        bahar2:
        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight
        

        moveUp: 
            cmp yPos, 2             ; allow player to jump, but within the top boundary:
            jbe skipmove

            ; Check against horizontal walls
            mov ecx, 10                 
            mov esi, offset hwallX
            mov edi, offset hwallY

            L4:
                mov al,xPos

                cmp al,[esi]
                jb out1
                mov bl,[esi]
                add bl,20
                cmp al, bl
                jg out1
                mov al,yPos
                dec al
                cmp al,[edi]
                je skipmove
                out1:
                inc esi
                inc edi
                loop L4

            ; Check against vertical walls
            mov ecx, 9                 ; Number of walls
            mov esi, offset vwallX
            mov edi, offset vwallY

            L5:
                mov al, yPos
                dec al
                cmp al, [edi]
                jb out2
                mov bl, [edi]
                add bl, 6  
                cmp al, bl
                jg out2
                mov al, xPos
                cmp al, [esi]
                je skipmove

            out2:
                inc esi
                inc edi
                loop L5

            
            call UpdatePlayer
            dec yPos
            call DrawPlayer
        
            jmp skipmove

        
        
        moveDown:
            cmp yPos, 28           ; allow player to move down, but within the bottom boundary:
            jge skipmove

            ; Check against horizontal walls
            mov ecx, 10                 
            mov esi, offset hwallX
            mov edi, offset hwallY

            L6:
                mov al, xPos

                cmp al, [esi]
                jb out4
                mov bl, [esi]
                add bl, 20
                cmp al, bl
                jg out4
                mov al, yPos
                inc al
                cmp al, [edi]
                je skipmove
                out4:
                inc esi
                inc edi
                loop L6

            ; Check against vertical walls
            mov ecx, 9                 ; Number of walls
            mov esi, offset vwallX
            mov edi, offset vwallY

            L7:
                mov al, yPos
                inc al
                cmp al, [edi]
                jb out3
                mov bl, [edi]
                add bl, 6  
                cmp al, bl
                jg out3
                mov al, xPos
                cmp al, [esi]
                je skipmove

                out3:
                inc esi
                inc edi
                loop L7

            call UpdatePlayer
            inc yPos
            call DrawPlayer

            jmp skipmove

            
        moveLeft:
            cmp xPos, 1             ; allow player to move left, but within the left boundary:
            jbe skipmove

            ; Check against horizontal walls
            mov ecx, 10                 
            mov esi, offset hwallX
            mov edi, offset hwallY
            mov al, xPos
            dec al

            L8:
                mov al, xPos
                dec al
                cmp al, [esi]
                jb out5
                mov bl, [esi]
                add bl, 20
                cmp al, bl
                jg out5
                mov al, yPos
                cmp al, [edi]
                je skipmove
                out5:
                inc esi
                inc edi
                loop L8

            ; Check against vertical walls
            mov ecx, 9                 ; Number of walls
            mov esi, offset vwallX
            mov edi, offset vwallY
            mov al, xPos
            dec al
            mov bl, yPos

            L9:
                mov al, yPos 
                cmp al, [edi]
                jb out6
                mov bl, [edi]
                add bl, 6  
                cmp al, bl
                jg out6
                mov al, xPos
                dec al
                cmp al, [esi]
                je skipmove

                out6:
                inc esi
                inc edi
                loop L9

            call UpdatePlayer
            dec xPos
            call DrawPlayer

            jmp skipmove

        moveRight:
            cmp xPos, 118           ; allow player to move right, but within the right boundary:
            jge skipmove

            ; Check against horizontal walls
            mov ecx, 10                 
            mov esi, offset hwallX
            mov edi, offset hwallY
            mov al, xPos
            dec al

            L10:
                mov al, xPos
                inc al
                cmp al, [esi]
                jb out7
                mov bl, [esi]
                add bl, 20
                cmp al, bl
                jg out7
                mov al, yPos
                cmp al, [edi]
                je skipmove
                out7:
                inc esi
                inc edi
                loop L10

            ; Check against vertical walls
            mov ecx, 9                
            mov esi, offset vwallX
            mov edi, offset vwallY
            mov al, xPos
            dec al
            mov bl, yPos

            L11:
                mov al, yPos 
                cmp al, [edi]
                jb out8
                mov bl, [edi]
                add bl, 6  
                cmp al, bl
                jg out8
                mov al, xPos
                inc al
                cmp al, [esi]
                je skipmove

                out8:
                inc esi
                inc edi
                loop L11

            call UpdatePlayer
            inc xPos
            call DrawPlayer

            skipMove:
            
            cmp levels,1
            jne level2
            mov eax, 200
            jmp changespeed
            level2:
            cmp levels,2
            jne level3
            mov eax, 150
            jmp changespeed
            level3:
            mov eax, 100

            changespeed:
                CALL Delay

            CALL CheckCollision            
            
            CALL MoveEnemy
            jmp gameLoop

    exitGame:
    CALL Clrscr
    CALL EndScreen
    exit
main ENDP

DrawPlayer PROC
    ; draw player at (xPos, yPos):
    mov eax, red ; set text color
    call SetTextColor
    mov dl, xPos
    mov dh, yPos
    call Gotoxy

    ; Determine the character based on the movement direction
    cmp inputChar, 'a'  ; Moving left
    je  drawLeft

    cmp inputChar, 'd'  ; Moving right
    je  drawRight

    cmp inputChar, 'w'  ; Moving up
    je  drawUp

    cmp inputChar, 's'  ; Moving down
    je  drawDown

    ; Default character when no specific direction
    mov al, 31
    call WriteChar
    jmp  endDraw

drawLeft:
    mov al, 17
    call WriteChar
    jmp  endDraw

drawRight:
    mov al, 16
    call WriteChar
    jmp  endDraw

drawUp:
    mov al, 30
    call WriteChar
    jmp  endDraw

drawDown:
    mov al, 31
    call WriteChar

endDraw:
    ret
DrawPlayer ENDP


UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

DrawStartScreen PROC

    ; Draw fancily written Pacman on the start screen
    mov eax, cyan ; set text color to cyan
    call SetTextColor

    ; Draw Pacman
    mov dl, 100 ; starting column
    mov dh, 5 ; starting row
    call Gotoxy

    mov edx, OFFSET pacmanArt
    call WriteString
    
    ; Prompt for user input to start the game
    mov dl, 30 ; position for prompt
    mov dh, 20
    call Gotoxy
    mov edx, OFFSET startPrompt
    call WriteString

    ; Wait for user input
    call ReadChar

    ret
DrawStartScreen ENDP

SpreadRandomCoins Proc
    mov ecx,100
    mov esi, offset coinsx
    mov edi, offset coinsy
    
    mov eax, yellow
    call SetTextColor

    L12:
        mov eax,117
        call RandomRange
        inc al
        mov [esi],al
        mov eax,26
        call RandomRange
        add eax,2
        mov [edi],al
        
        mov dl,[esi]
        mov dh,[edi]
        CALL Gotoxy
        mov al, "o"
        call WriteChar
        inc edi
        inc esi
        loop L12
   ret
   

SpreadRandomCoins ENDP



DrawEnemy PROC
    mov eax, white
    CALL SetTextColor

    mov dl, Enemyx
    mov dh, Enemyy
    CALL Gotoxy

    mov al, enemy
    CALL WriteChar

    cmp levels,3
    jne funcend
    
    mov dl, Enemyx2
    mov dh, Enemyy2
    CALL Gotoxy

    mov al, enemy
    CALL WriteChar
    
    mov dl, Enemyx3
    mov dh, Enemyy3
    CALL Gotoxy

    mov al, enemy
    CALL WriteChar


    funcend:

    ret
DrawEnemy ENDP

UpdateEnemy PROC
    mov dl, Enemyx
    mov dh, Enemyy
    CALL Gotoxy

    mov eax, Yellow
    CALL SetTextColor
    ; Check if there is a coin at the enemy's position
    mov ecx, 100  
    mov esi, offset coinsx
    mov edi, offset coinsy

    checkCoinLoop:
        mov al, Enemyx
        cmp al, [esi]
        jne notCoinPosition

        mov al, Enemyy
        cmp al, [edi]
        jne notCoinPosition

        ; There is a coin at this position, print 'o'
        mov al, 'o'
        CALL WriteChar
        jmp outCoinCheck

        notCoinPosition:
            inc esi
            inc edi
            loop checkCoinLoop

    mov al, Enemyx
    cmp al, Fruitx
    jne nofruit
    mov al, Enemyy
    cmp al, Fruity
    jne nofruit
    mov al, 'F'
    CALL WriteChar
    jmp outCoinCheck

    nofruit:
    mov al, ' '
    CALL WriteChar

    outCoinCheck:
    
    
    cmp levels, 3
    jne funcend
    
    mov dl, Enemyx2
    mov dh, Enemyy2
    CALL Gotoxy

    mov eax, Yellow
    CALL SetTextColor
    
    mov ecx, 100  
    mov esi, offset coinsx
    mov edi, offset coinsy

    checkCoinLoop2:
        mov al, Enemyx2
        cmp al, [esi]
        jne notCoinPosition2

        mov al, Enemyy2
        cmp al, [edi]
        jne notCoinPosition2
        
        mov al, 'o'
        CALL WriteChar
        jmp outCoinCheck2

        notCoinPosition2:
            inc esi
            inc edi
            loop checkCoinLoop2

    mov al, ' '
    CALL WriteChar

    outCoinCheck2:

    mov dl, Enemyx3
    mov dh, Enemyy3
    CALL Gotoxy

    mov eax, Yellow
    CALL SetTextColor
    
    mov ecx, 100  
    mov esi, offset coinsx
    mov edi, offset coinsy

    checkCoinLoop3:
        mov al, Enemyx3
        cmp al, [esi]
        jne notCoinPosition3

        mov al, Enemyy3
        cmp al, [edi]
        jne notCoinPosition3
        
        mov al, 'o'
        CALL WriteChar
        jmp outCoinCheck3

        notCoinPosition3:
            inc esi
            inc edi
            loop checkCoinLoop3

    mov al, ' '
    CALL WriteChar

    outCoinCheck3:
    
    funcend:
    ret
UpdateEnemy ENDP

CheckCollision PROC

    mov al, xPos
    cmp al, Enemyx
    jne NoCollision

    mov al, yPos
    cmp al, Enemyy
    jne NoCollision

    ; Decrease lives and reset position
    dec lives
    
    mov eax, White
    CALL SetTextColor
    
    mov dl,56
    mov dh,0
    call Gotoxy
    mov edx,OFFSET livesstr
    call WriteString
    mov eax,0
    mov al, lives
    call WriteInt

    mov xPos, 2
    mov yPos, 15
    CALL UpdatePlayer
    CALL DrawPlayer
    jmp funcend

NoCollision:
    cmp levels, 3
    jne funcend
    mov al, xPos
    cmp al, Enemyx2
    jne NoCollision2

    mov al, yPos
    cmp al, Enemyy2
    jne NoCollision2

    ; Decrease lives and reset position
    dec lives
    
    mov eax, White
    CALL SetTextColor
    
    mov dl,56
    mov dh,0
    call Gotoxy
    mov edx,OFFSET livesstr
    call WriteString
    mov eax,0
    mov al, lives
    call WriteInt

    mov xPos, 2
    mov yPos, 15
    CALL UpdatePlayer
    CALL DrawPlayer
    jmp funcend

NoCollision2:
    mov al, xPos
    cmp al, Enemyx3
    jne funcend

    mov al, yPos
    cmp al, Enemyy3
    jne funcend

    ; Decrease lives and reset position
    dec lives
    
    mov eax, White
    CALL SetTextColor
    
    mov dl,56
    mov dh,0
    call Gotoxy
    mov edx,OFFSET livesstr
    call WriteString
    mov eax,0
    mov al, lives
    call WriteInt

    mov xPos, 2
    mov yPos, 15
    CALL UpdatePlayer
    CALL DrawPlayer

funcend:
    ret
CheckCollision ENDP

MENU PROC

first:
    CALL Clrscr
    mov eax, cyan ; set text color to cyan
    call SetTextColor

    ; Draw Pacman
    mov dl, 100 
    mov dh, 5 
    call Gotoxy

    mov edx, OFFSET menuArt
    call WriteString

    mov dl, 30 
    mov dh, 17
    call Gotoxy
    mov edx, OFFSET menuOption1
    call WriteString

    mov dl, 30 ; position for option 2
    mov dh, 19
    call Gotoxy
    mov edx, OFFSET menuOption2
    call WriteString

    mov dl, 30 ; position for option 3
    mov dh, 21
    call Gotoxy
    mov edx, OFFSET menuOption3
    call WriteString

    Choice:
        call ReadChar
        cmp al, '1'
        je RandomInstructions
        cmp al, '2'
        je DisplayHighScore
        cmp al, '3'
        je out1
        jmp Choice ; invalid choice, read Again
    
RandomInstructions:
    CALL DisplayInstructions
    jmp first

DisplayHighScore:
    CALL DisplayHighScoreFunction
    jmp first

    out1:
        ret
MENU ENDP

DisplayInstructions PROC
    CALL Clrscr

    ; Display Pac-Man instructions
    mov eax, cyan ; set text color to cyan
    call SetTextColor

    mov dl, 30 ; starting position
    mov dh, 10
    call Gotoxy
    mov edx, OFFSET instruction1
    call WriteString

    mov dl, 30 ; position for the second instruction
    mov dh, 12
    call Gotoxy
    mov edx, OFFSET instruction2
    call WriteString

    mov dl, 30 ; position for the third instruction
    mov dh, 14
    call Gotoxy
    mov edx, OFFSET instruction3
    call WriteString

    ; Wait for user input to return to the menu
    mov dl, 30 ; position for the prompt
    mov dh, 17
    call Gotoxy
    mov edx, OFFSET returnPrompt
    call WriteString

    call ReadChar

    ret
DisplayInstructions ENDP


DisplayHighScoreFunction PROC
ret
DisplayHighScoreFunction ENDP

NameInput PROC
    ; Display prompt for entering the name
    mov eax, cyan ; set text color to cyan
    call SetTextColor

    mov dl, 30 ; starting column
    mov dh, 12 ; starting row
    call Gotoxy

    mov edx, OFFSET inputNamePrompt
    call WriteString

    mov edx, OFFSET names
    mov ecx, 20 
    call ReadString

    ret
NameInput ENDP

LevelScreen proc
    CALL clrscr
    mov dl, 40
    mov dh, 07
    CALL Gotoxy

    cmp levels, 1
    je  Level1
    cmp levels, 2
    je  Level2
    cmp levels, 3
    je  Level3
    jmp InvalidLevel

Level1:
    mov edx, OFFSET l1Art
    jmp WaitAndExit

Level2:
    mov edx, OFFSET l2Art
    ; New Grid
        ; Horizontal
    
    mov ecx, 10
    mov esi, offset hwallX
    mov edi, offset hwallX2
    L1:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L1
    
    mov ecx, 10
    mov esi, offset hwallY
    mov edi, offset hwallY2
    L2:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L2

        ; Vertical
    mov ecx, 9
    mov esi, offset vwallX
    mov edi, offset vwallX2
    L3:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L3
    
    mov ecx, 9
    mov esi, offset vwallY
    mov edi, offset vwallY2
    L4:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L4

    mov fruitx, 116
    mov fruity, 10
    jmp WaitAndExit

Level3:
    mov edx, OFFSET l3Art
    ; New Grid
        ; Horizontal
    
    mov ecx, 10
    mov esi, offset hwallX
    mov edi, offset hwallX3
    L5:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L5
    
    mov ecx, 10
    mov esi, offset hwallY
    mov edi, offset hwallY3
    L6:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L6

        ; Vertical
    mov ecx, 9
    mov esi, offset vwallX
    mov edi, offset vwallX3
    L7:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L7
    
    mov ecx, 9
    mov esi, offset vwallY
    mov edi, offset vwallY3
    L8:
        mov al, [edi]
        mov [esi],al

        inc esi
        inc edi
        loop L8
    jmp WaitAndExit

WaitAndExit:
    mov eax, cyan
    CALL SetTextColor

    mov xPos, 2
    mov yPos, 15
    mov Enemyx, 116
    mov Enemyy, 15


    CALL WriteString
    mov eax, 1000
    CALL Delay

invalidlevel:
    CALL Clrscr
    ret
LevelScreen ENDP

CheckAndCollectCoin PROC
    ; Coin eaten
    mov ecx, 99  ; Assuming the maximum size of the array is 100
    mov esi, offset coinsx
    mov edi, offset coinsy

    checkCoinLoop:
        mov al, xPos
        cmp al, [esi]
        jne notCollectingCoin

        mov al, yPos
        cmp al, [edi]
        jne notCollectingCoin
        add score, 10

        mov byte ptr [esi], 0
        mov byte ptr [edi], 0

        ; draw score:
        mov eax, white
        CALL SetTextColor

        mov dl, 0
        mov dh, 0
        call Gotoxy
        mov edx, OFFSET strScore
        call WriteString
        mov eax, score
        call WriteInt

        jmp out9

    notCollectingCoin:
        inc esi
        inc edi
        loop checkCoinLoop

    out9:
    ret
CheckAndCollectCoin ENDP

PauseGame PROC
    
    mov eax, 4  ; Red color code
    CALL SetTextColor

    ; Set cursor position to (90, 0)
    mov dl, 90
    mov dh, 0
    CALL Gotoxy

    ; Display "Paused"
    mov edx, OFFSET strPaused
    CALL WriteString

    ; Wait for a key press
    CALL ReadChar

    mov dl, 90
    mov dh, 0
    CALL Gotoxy

    mov edx, OFFSET strclear
    CALL WriteString
    ret
PauseGame ENDP

CheckAndUpdateLevel PROC
    mov al,0

    mov eax, score
    cmp eax, 50
    jl notReached800

    ; Increment the level
    inc levels

    ; Move 1 into al
    mov al, 1

    ; Reset the score to 0 or adjust as needed
    mov score,0
notReached800:
    ret
CheckAndUpdateLevel ENDP

EndScreen proc
    CALL Clrscr
    
    mov eax, red
    CALL SetTextColor
    
    mov dl, 45  
    mov dh, 12 
    CALL Gotoxy
    mov edx, OFFSET gameOverMsg
    CALL WriteString
    
    mov eax, white
    CALL SetTextColor
    
    mov dl, 40  
    mov dh, 14  
    CALL Gotoxy
    mov edx, OFFSET names
    CALL WriteString

    mov eax, score
    CALL WriteInt
    
    CALL ReadChar
    
    CALL Clrscr
    ret
EndScreen ENDP

MoveEnemy PROC
    mov al, Enemyx
    cmp al, xPos
    je CheckVerticalMovement
    jl Rightmove
    jmp Leftmove

CheckVerticalMovement:
    mov al, Enemyy
    cmp al, yPos
    je out11 
    jg Upmove
    jmp Downmove

Upmove:
    cmp Enemyy, 2      
    jbe Downmove

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY

    L4:
        mov al,Enemyx

        cmp al,[esi]
        jb out12
        mov bl,[esi]
        add bl,20
        cmp al, bl
        jg out12
        mov al,Enemyy
        dec al
        cmp al,[edi]
        je Downmove
        out12:
            inc esi
            inc edi
            loop L4

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY

    L5:
        mov al, Enemyy
        dec al
        cmp al, [edi]
        jb out13
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out13
        mov al, Enemyx
        cmp al, [esi]
        je Downmove

        out13:
            inc esi
            inc edi
            loop L5

    CALL UpdateEnemy
    dec Enemyy
    CALL DrawEnemy
        
    jmp out11

Downmove:
    cmp Enemyy, 28           ; allow enemy to move down, but within the bottom boundary:
    jge Upmove

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY

    L6:
        mov al, Enemyx
        cmp al, [esi]
        jb out14
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out14
        mov al, Enemyy
        inc al
        cmp al, [edi]
        je Upmove
        out14:
            inc esi
            inc edi
            loop L6

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY

    L7:
        mov al, Enemyy
        inc al
        cmp al, [edi]
        jb out15
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out15
        mov al, Enemyx
        cmp al, [esi]
        je Upmove

        out15:
            inc esi
            inc edi
            loop L7

    CALL UpdateEnemy
    inc Enemyy
    CALL DrawEnemy

    jmp out11
    
Leftmove:
    cmp Enemyx, 1             ; allow enemy to move left, but within the left boundary:
    jbe Rightmove

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY
    mov al, Enemyx
    dec al

    L8:
        mov al, Enemyx
        dec al
        cmp al, [esi]
        jb out16
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out16
        mov al, Enemyy
        cmp al, [edi]
        je Upmove
        out16:
            inc esi
            inc edi
            loop L8

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY
    mov al, Enemyx
    dec al
    mov bl, Enemyy

    L9:
        mov al, Enemyy 
        cmp al, [edi]
        jb out17
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out17
        mov al, Enemyx
        dec al
        cmp al, [esi]
        je Upmove

        out17:
            inc esi
            inc edi
            loop L9

    CALL UpdateEnemy
    dec Enemyx
    CALL DrawEnemy

    jmp out11

Rightmove:
    cmp Enemyx, 118         
    jge Leftmove

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY
    mov al, Enemyx
    inc al

    L10:
        mov al, Enemyx
        inc al
        cmp al, [esi]
        jb out18
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out18
        mov al, Enemyy
        cmp al, [edi]
        je Upmove

        out18:
            inc esi
            inc edi
            loop L10

    ; Check against vertical walls
    mov ecx, 9                
    mov esi, offset vwallX
    mov edi, offset vwallY
    mov al, Enemyx
    inc al
    mov bl, Enemyy

    L11:
        mov al, Enemyy 
        cmp al, [edi]
        jb out19
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out19
        mov al, Enemyx
        inc al
        cmp al, [esi]
        je Upmove
        out19:
        inc esi
        inc edi
        loop L11

    CALL UpdateEnemy
    inc Enemyx
    CALL DrawEnemy

out11:
    cmp levels, 3
    jne funcend
    
    mov al, Enemyx2
    cmp al, xPos
    je CheckVerticalMovement2
    jl Rightmove2
    jmp Leftmove2

    CheckVerticalMovement2:
        mov al, Enemyy2
        cmp al, yPos
        je out11 
        jg Upmove2
        jmp Downmove2

    Upmove2:
    cmp Enemyy2, 2      
    jbe Downmove2

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY

    L42:
        mov al,Enemyx2

        cmp al,[esi]
        jb out122
        mov bl,[esi]
        add bl,20
        cmp al, bl
        jg out122
        mov al,Enemyy2
        dec al
        cmp al,[edi]
        je Downmove2
        out122:
            inc esi
            inc edi
            loop L42

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY

    L52:
        mov al, Enemyy2
        dec al
        cmp al, [edi]
        jb out132
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out132
        mov al, Enemyx2
        cmp al, [esi]
        je Downmove2

        out132:
            inc esi
            inc edi
            loop L52

    CALL UpdateEnemy
    dec Enemyy2
    CALL DrawEnemy
        
    jmp out112

Downmove2:
    cmp Enemyy2, 28           ; allow enemy to move down, but within the bottom boundary:
    jge Upmove2

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY

    L62:
        mov al, Enemyx2
        cmp al, [esi]
        jb out142
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out142
        mov al, Enemyy2
        inc al
        cmp al, [edi]
        je Upmove2
        out142:
            inc esi
            inc edi
            loop L62

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY

    L72:
        mov al, Enemyy2
        inc al
        cmp al, [edi]
        jb out152
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out152
        mov al, Enemyx2
        cmp al, [esi]
        je Upmove2

        out152:
            inc esi
            inc edi
            loop L72

    CALL UpdateEnemy
    inc Enemyy2
    CALL DrawEnemy

    jmp out112
    
Leftmove2:
    cmp Enemyx2, 1             ; allow enemy to move left, but within the left boundary:
    jbe Rightmove2

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY
    mov al, Enemyx2
    dec al

    L82:
        mov al, Enemyx2
        dec al
        cmp al, [esi]
        jb out162
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out162
        mov al, Enemyy2
        cmp al, [edi]
        je CheckVerticalMovement2
        out162:
            inc esi
            inc edi
            loop L82

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY
    mov al, Enemyx2
    dec al
    mov bl, Enemyy2

    L92:
        mov al, Enemyy2 
        cmp al, [edi]
        jb out172
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out172
        mov al, Enemyx2
        dec al
        cmp al, [esi]
        je CheckVerticalMovement2

        out172:
            inc esi
            inc edi
            loop L92

    CALL UpdateEnemy
    dec Enemyx2
    CALL DrawEnemy

    jmp out112

Rightmove2:
    cmp Enemyx2, 118         
    jge Leftmove2

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY
    mov al, Enemyx2
    inc al

    L102:
        mov al, Enemyx2
        inc al
        cmp al, [esi]
        jb out182
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out182
        mov al, Enemyy2
        cmp al, [edi]
        je CheckVerticalMovement2

        out182:
            inc esi
            inc edi
            loop L102

    ; Check against vertical walls
    mov ecx, 9                
    mov esi, offset vwallX
    mov edi, offset vwallY
    mov al, Enemyx2
    inc al
    mov bl, Enemyy2

    L112:
        mov al, Enemyy2 
        cmp al, [edi]
        jb out192
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out192
        mov al, Enemyx2
        inc al
        cmp al, [esi]
        je CheckVerticalMovement2
        out192:
        inc esi
        inc edi
        loop L112

    CALL UpdateEnemy
    inc Enemyx2
    CALL DrawEnemy
out112:
    mov al, Enemyx3
    cmp al, xPos
    je CheckVerticalMovement
    jl Rightmove3
    jmp Leftmove3

    CheckVerticalMovement3:
        mov al, Enemyy3
        cmp al, yPos
        je out11 
        jg Upmove3
        jmp Downmove3

    Upmove3:
    cmp Enemyy3, 2      
    jbe Downmove3

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY

    L43:
        mov al,Enemyx3

        cmp al,[esi]
        jb out123
        mov bl,[esi]
        add bl,20
        cmp al, bl
        jg out123
        mov al,Enemyy3
        dec al
        cmp al,[edi]
        je Downmove3
        out123:
            inc esi
            inc edi
            loop L43

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY

    L53:
        mov al, Enemyy3
        dec al
        cmp al, [edi]
        jb out133
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out133
        mov al, Enemyx3
        cmp al, [esi]
        je Downmove3

        out133:
            inc esi
            inc edi
            loop L53

    CALL UpdateEnemy
    dec Enemyy3
    CALL DrawEnemy
        
    jmp out113

Downmove3:
    cmp Enemyy3, 28           ; allow enemy to move down, but within the bottom boundary:
    jge Upmove3

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY

    L63:
        mov al, Enemyx3
        cmp al, [esi]
        jb out143
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out143
        mov al, Enemyy3
        inc al
        cmp al, [edi]
        je Upmove3
        out143:
            inc esi
            inc edi
            loop L63

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY

    L73:
        mov al, Enemyy3
        inc al
        cmp al, [edi]
        jb out153
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out153
        mov al, Enemyx3
        cmp al, [esi]
        je Upmove3

        out153:
            inc esi
            inc edi
            loop L73

    CALL UpdateEnemy
    inc Enemyy3
    CALL DrawEnemy

    jmp out113
    
Leftmove3:
    cmp Enemyx3, 1             ; allow enemy to move left, but within the left boundary:
    jbe Rightmove3

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY
    mov al, Enemyx3
    dec al

    L83:
        mov al, Enemyx3
        dec al
        cmp al, [esi]
        jb out163
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out163
        mov al, Enemyy3
        cmp al, [edi]
        je CheckVerticalMovement3
        out163:
            inc esi
            inc edi
            loop L83

    ; Check against vertical walls
    mov ecx, 9                 ; Number of walls
    mov esi, offset vwallX
    mov edi, offset vwallY
    mov al, Enemyx3
    dec al
    mov bl, Enemyy3

    L93:
        mov al, Enemyy3 
        cmp al, [edi]
        jb out173
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out173
        mov al, Enemyx3
        dec al
        cmp al, [esi]
        je CheckVerticalMovement3

        out173:
            inc esi
            inc edi
            loop L93

    CALL UpdateEnemy
    dec Enemyx3
    CALL DrawEnemy

    jmp out113

Rightmove3:
    cmp Enemyx3, 118         
    jge Leftmove3

    ; Check against horizontal walls
    mov ecx, 10                 
    mov esi, offset hwallX
    mov edi, offset hwallY
    mov al, Enemyx3
    inc al

    L103:
        mov al, Enemyx3
        inc al
        cmp al, [esi]
        jb out183
        mov bl, [esi]
        add bl, 20
        cmp al, bl
        jg out183
        mov al, Enemyy3
        cmp al, [edi]
        je CheckVerticalMovement3

        out183:
            inc esi
            inc edi
            loop L103

    ; Check against vertical walls
    mov ecx, 9                
    mov esi, offset vwallX
    mov edi, offset vwallY
    mov al, Enemyx3
    inc al
    mov bl, Enemyy3

    L113:
        mov al, Enemyy3 
        cmp al, [edi]
        jb out193
        mov bl, [edi]
        add bl, 6  
        cmp al, bl
        jg out193
        mov al, Enemyx3
        inc al
        cmp al, [esi]
        je CheckVerticalMovement3
        out193:
        inc esi
        inc edi
        loop L113

    CALL UpdateEnemy
    inc Enemyx3
    CALL DrawEnemy
out113:

    funcend:
    ret 
MoveEnemy ENDP
DrawFruit Proc
    mov dl, fruitx
    mov dh, fruity
    CALL Gotoxy

    mov al, "F"
    CALL WriteChar
    ret
DrawFruit ENDP

Fruiteat PROC
    mov al, xPos
    cmp al, fruitx
    jne out1
    mov al, yPos
    cmp al, fruity
    jne out1

    add score, 50
    mov fruitx,0
    mov fruity,0
 
    
    out1:
    ret
Fruiteat ENDP


END main