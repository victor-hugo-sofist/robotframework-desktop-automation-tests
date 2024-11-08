*** Settings ***
Documentation    Load the basic elements and keywords to operate the calculator
Library    SikuliLibrary
Library    ImageHorizonLibrary
Library    Process

*** Variables ***


*** Keywords ***

start sikuli and load elements
    SikuliLibrary.Start Sikuli Process 
    Add Image Path    ${EXECDIR}\\resources\\elements\\base

stop sikuli process
    Stop Remote Server

start sikuli process and open calculator 
    start sikuli and load elements

    Process.Run Process    taskkill    /F    /IM    calculatorApp.exe
    go to desktop
    Process.Run Process    calc.exe
    wait calc-icon.PNG with precision 0.70 and timeout 5

    SikuliLibrary.Set Min Similarity    0.99
    Run Keyword And Ignore Error    click in maximize-window.PNG
    SikuliLibrary.Set Min Similarity    0.70

close calculator and stop sikuli process
    Process.Run Process    taskkill    /F    /IM    calculatorApp.exe
    stop sikuli process
    
go to desktop
    ImageHorizonLibrary.Press Combination    key.winleft    key.d

click in ${image}
    SikuliLibrary.Click    ${image}

wait ${image} with precision ${precision} and timeout ${timeout}
    SikuliLibrary.Set Min Similarity    ${precision}
    SikuliLibrary.Wait Until Screen Contain    ${image}    ${timeout}
    SikuliLibrary.Set Min Similarity    0.70

read region of ${coordinate_x} x, ${coordinate_y} y, ${width} w, ${height} h.
    ${coordinates}	Create List    ${coordinate_x}    ${coordinate_y}    ${width}    ${height}
    ${screenshot}    SikuliLibrary.Capture Region    ${coordinates}
    SikuliLibrary.Set Ocr Text Read    true
    ${result}    SikuliLibrary.Get Text    ${screenshot}
    SikuliLibrary.Set Ocr Text Read    false
    Return From Keyword    ${result}

clean calculator
    ImageHorizonLibrary.Type    esc
    