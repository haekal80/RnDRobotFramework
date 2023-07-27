*** Test Cases ***
For Loop
    @{fruits}    Create List    Swift    Python    Go    Javascript
    FOR    ${i}    IN    @{fruits}
        # Log To Console    ${i}
        # Exit For Loop If    '${i}' == 'Python'
        IF    '${i}' == 'Python'
            Log To Console    ${i}
        END
    END