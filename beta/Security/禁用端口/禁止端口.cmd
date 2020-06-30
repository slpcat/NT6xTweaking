ipconfig -w REG -p "HFUT_SECU" -r "Block TCP/135" -f *+0:135:TCP -n BLOCK -x >nul
ipconfig -w REG -p "HFUT_SECU" -r "Block UDP/123" -f *+0:123:UDP -n BLOCK -x >nul
ipconfig -w REG -p "HFUT_SECU" -r "Block UDP/5050" -f *+0:5050:UDP -n BLOCK -x >nul