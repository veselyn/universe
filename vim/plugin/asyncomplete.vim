let g:asyncomplete_auto_popup = 0

imap <Nul> <Plug>(asyncomplete_force_refresh)

call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
\	'name': 'ultisnips',
\	'completor': function('asyncomplete#sources#ultisnips#completor'),
\	'allowlist': ['*']
\}))

call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
\	'name': 'file',
\	'completor': function('asyncomplete#sources#file#completor'),
\	'allowlist': ['*']
\}))
