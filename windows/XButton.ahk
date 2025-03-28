; 定义通用的按键处理函数
HandleKeyPress(key) {
    pressStartTime := A_TickCount
    Send key
    
    while GetKeyState(A_ThisHotkey, "P")
    {
        if (A_TickCount - pressStartTime > 500)
        {
            while GetKeyState(A_ThisHotkey, "P")
            {
                Send key
                Sleep 50
            }
            break
        }
        Sleep 10
    }
}

; 映射鼠标前侧键为 Page Up
XButton2::HandleKeyPress("{PgUp}")

; 映射鼠标后侧键为 Page Down
XButton1::HandleKeyPress("{PgDn}")
