"" Magpie Jay Vim/Airline Theme

" Symbols
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif

if (system('uname')=='Linux')
      " powerline symbols
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = '☰'
      let g:airline_symbols.maxlinenr = ''
      let g:airline_symbols.dirty='⚡'
else
      " mac-friendly symbols
      let g:airline_left_sep = '▒'
      let g:airline_left_alt_sep = '░'
      let g:airline_right_sep = '▒'
      let g:airline_right_alt_sep = '░'
      let g:airline_symbols.branch = 'ψ'
      let g:airline_symbols.readonly = 'ℝ'
      let g:airline_symbols.linenr = '≡'
      let g:airline_symbols.maxlinenr = '≣'
      let g:airline_symbols.dirty='!'
endif

" Colours definition
let drygreendark   = '#5f5f00'  " Bash 58
let drygreen       = '#878700'  " Bash 100
let drygreenlight  = '#afaf5f'  " Bash 143
let drygreenpale   = '#d7d787'  " Bash 186

let black          = '#000000'  " Bash 0
let grey3          = '#080808'  " Bash 232
let grey15         = '#262626'  " Bash 235
let white          = '#ffffff'  " Bash 231

let darkerbrick    = '#5f0000'  " Bash 52
let darkbrick      = '#870000'  " Bash 88
let brick          = '#af0000'  " Bash 124
let red            = '#ff0000'  " Bash 196

let darkorange     = '#d75f00'  " Bash 166
let orange         = '#d78700'  " Bash 172
let lightorange    = '#ffd700'  " Bash 220
let gold           = '#ffd75f'  " Bash 221
let cornsilk       = '#ffffd7'  " Bash 230

let darkpurple     = '#5f0087'  " Bash 54
let purple         = '#870087'  " Bash 90
let lightpurple    = '#875fd7'  " Bash 98
let plum           = '#d7afff'  " Bash 183

let darkindigo     = '#5f00d7'  " Bash 56
let indigo         = '#5f5fd7'  " Bash 62
let lightblue      = '#d7d7ff'  " Bash 189

"" Experimental
let lime           = '#00ff00'  " Bash 10
let darkgreen      = '#005f00'  " Bash 22
let green          = '#008000'  " Bash 2
let green4         = '#008700'  " Bash 34

let s:RED = [ red , '' , 196 , '' , '' ]

let s:NA  = [ white , drygreendark , 231 , 58 ]
let s:NB  = [ white , drygreen , 231 , 100 ]
let s:NC  = [ black , drygreenlight , 0 , 143 ]
let s:NX  = [ drygreendark , drygreenpale , 58 , 186 ]
let s:NCM = [ white , black , 231 , 0 , '' ]

let s:SA  = [ black , drygreenpale , 0 , 143 ]
let s:SB  = [ black , drygreenpale , 0 , 143 ]
let s:SC  = [ black , drygreenpale , 0 , 143 ]
let s:SCM = [ drygreenpale , black , 58 , 0 , 'bold' ]

let s:IA  = [ white , darkerbrick , 231 , 52  ]
let s:IB  = [ white , darkbrick , 231 , 88  ]
let s:IC  = [ white , brick , 231  , 124 ]
let s:IX  = [ white , red , 231  , 160 ]
let s:IAP = [ darkerbrick , plum , 52 , 183 ]
let s:ICM = [ red, black, 196 , 0 ]

let s:RA  = [ white , darkpurple, 231 , 54 ]
let s:RCM = [ plum , black , 183 , 0 ]

let s:VA  = [ white , darkorange , 231 , 166 ]
let s:VB  = [ white , orange , 231 , 172 ]
let s:VC  = [ black , gold , 0 , 221 ]
let s:VX  = [ black , cornsilk , 0 , 230 ]
let s:VCM = [ gold , black , 221 , 0 ]

let s:CA  = [ white , darkpurple , 231  , 54 ]
let s:CB  = [ white , purple , 231 , 90 ]
let s:CC  = [ white , lightpurple , 231 , 98 ]
let s:CX  = [ darkpurple , plum , 54 , 183 ]
let s:CCM = [ plum , black , 183 , 0 ]

let s:CTRLPA = [ darkpurple , plum , 54 , 183  , 'bold' ]
let s:CTRLPB = [ plum , darkpurple , 183  , 54 , 'bold' ]
let s:CTRLPC = [ plum , purple , 183 , 90 , 'bold' ]
let s:CTRLPX = [ plum , lightpurple , 183 , 98 , 'bold' ]

" Initialise the object
let g:airline#themes#magpie_jay#palette = {}

let g:airline#themes#magpie_jay#palette.accents = { 'red': s:RED }

let g:airline#themes#magpie_jay#palette.normal = {
      \ 'airline_a': s:NA , 'airline_b': s:NB , 'airline_c': s:NC ,
      \ 'airline_x': s:NX , 'airline_y': s:NB , 'airline_z': s:NA }
let g:airline#themes#magpie_jay#palette.normal_modified = { 'airline_c': s:NCM }

let g:airline#themes#magpie_jay#palette.inactive = airline#themes#generate_color_map(s:SA, s:SB, s:SC)
let g:airline#themes#magpie_jay#palette.inactive_modified = { 'airline_c': s:SCM }

let g:airline#themes#magpie_jay#palette.insert = {
      \ 'airline_a': s:IA , 'airline_b': s:IB , 'airline_c': s:IC ,
      \ 'airline_x': s:IX , 'airline_y': s:IB , 'airline_z': s:IA }
let g:airline#themes#magpie_jay#palette.insert_modified = { 'airline_c': s:ICM }
let g:airline#themes#magpie_jay#palette.insert_paste = { 'airline_a': s:IAP }

let g:airline#themes#magpie_jay#palette.replace = copy(airline#themes#magpie_jay#palette.insert)
let g:airline#themes#magpie_jay#palette.replace.airline_a = s:RA
let g:airline#themes#magpie_jay#palette.replace_modified = { 'airline_c': s:RCM }

let g:airline#themes#magpie_jay#palette.visual = {
      \ 'airline_a': s:VA , 'airline_b': s:VB , 'airline_c': s:VC ,
      \ 'airline_x': s:VX , 'airline_y': s:VC , 'airline_z': s:VB }
let g:airline#themes#magpie_jay#palette.visual_modified = { 'airline_c': s:VCM }

let g:airline#themes#magpie_jay#palette.terminal = airline#themes#generate_color_map(s:IA, s:IB, s:IC)
let g:airline#themes#magpie_jay#palette.normal_modified.airline_term = s:NC
let g:airline#themes#magpie_jay#palette.terminal.airline_term = s:IC
let g:airline#themes#magpie_jay#palette.visual_modified.airline_term = s:VB

let g:airline#themes#magpie_jay#palette.commandline = {
      \ 'airline_a': s:CA , 'airline_b': s:CB , 'airline_c': s:CC ,
      \ 'airline_x': s:CX , 'airline_y': s:CC , 'airline_z': s:CB }
let g:airline#themes#magpie_jay#palette.commandline_modified = { 'airline_c': s:CCM }

" CTRLP
if get(g:, 'loaded_ctrlp', 0)
let g:airline#themes#magpie_jay#palette.ctrlp = {
      \ 'airline_a': s:CTRLPA , 'airline_b': s:CTRLPB , 'airline_c': s:CTRLPC ,
      \ 'airline_x': s:CTRLPX , 'airline_y': s:CTRLPB , 'airline_z': s:CTRLPA }
endif

" NERDTree
if get(g:, 'loaded_nerd_tree', 9)
      let g:airline#extensions#nerdtree_statusline = 1
endif

finish
