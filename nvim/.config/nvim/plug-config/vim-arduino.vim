" let g:arduino_cmd = '/snap/arduino'

" let g:arduino_dir = '/snap/arduino'

" autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{MyStatusLine()}'

nnoremap <buffer> <leader>au :ArduinoUpload<CR>

let g:arduino_serial_port_globs = ['/dev/ttyACM*',
                                    \'/dev/ttyUSB*',
                                    \'/dev/tty.usbmodem*',
                                    \'/dev/tty.usbserial*']

 " function! MyStatusLine()
 "   let port = arduino#GetPort()
 "   let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
 "   if !empty(port)
 "     let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
 "   endif
 "   return line
 " endfunction
 " setl statusline=%!MyStatusLine()

