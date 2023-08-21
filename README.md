g; will jump you to the last place where you entered insert mode. Pressing it again will jump you one earlier. g, will move you the opposite direction through this list. Vim calls this list of jump locations the "changelist".

<C-^> is the shortcut to switch to the last buffer you had displayed previously. 

%:h into most Ex commands ("colon commands") represents the path to the current file (without the file's name). To open a file in the same directory: use 
:find %:h/<TAB>

