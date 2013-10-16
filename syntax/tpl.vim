" ADModel Builder extentions to C++ context highlighting
" created by vimsyntax.sh from ../src/df1b2-separable/tpl2rem.lex
"
" ----------------------------------------------------------------------------
" THE BEER-WARE LICENSE (Unknown Revision) http://en.wikipedia.org/wiki/Beerware:
" sibert@hawaii.edu wrote this file. As long as you retain this notice you
" can do whatever you want with this stuff. If you think this code as been
" useful in some way you send me a virtual beer. Better yet, please and consider
" making a contribution to admb-foundation.org.
" Copyright (c) ADMB Foundation.
" ----------------------------------------------------------------------------
"
" Import the C++ syntax to start with
if version < 600
  so <sfile>:p:h/c++.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
end
"
syn keyword tplSection FUNCTION LOCAL_CALCS END_CALCS INITIALIZATION_SECTION REPORT_SECTION FINAL_SECTION RUNTIME_SECTION PRELIMINARY_CALCULATIONS_SECTION PRELIMINARY_CALCS_SECTION BETWEEN_PHASES_SECTION SLAVE_SECTION DATA_SECTION PARAMETER_SECTION PROCEDURE_SECTION GLOBALS_SECTION TOP_OF_MAIN_SECTION
syn keyword tplType 3darray 4darray 5darray 6darray 7darray DEFINE_PARAMETERS SPinit_3darray SPinit_4darray SPinit_bounded_3darray SPinit_bounded_matrix SPinit_bounded_number SPinit_bounded_vector SPinit_imatrix SPinit_int SPinit_ivector SPinit_matrix SPinit_number SPinit_vector SPint SPivector SPmatrix SPnumber SPvector constant_quadratic_penalty dll_3darray dll_adstring dll_imatrix dll_init_3darray dll_init_bounded_number dll_init_bounded_vector dll_init_imatrix dll_init_int dll_init_matrix dll_init_number dll_init_vector dll_int dll_matrix dll_number dll_random_effects_vector dll_vector equality_constraint_vector gaussian_prior imatrix inequality_constraint_vector init_3darray init_4darray init_5darray init_6darray init_7darray init_adstring init_bounded_3darray init_bounded_dev_vector init_bounded_matrix init_bounded_matrix_vector init_bounded_number init_bounded_number_vector init_bounded_vector init_bounded_vector_vector init_imatrix init_int init_ivector init_line_adstring init_matrix init_matrix_vector init_number init_number_vector init_vector init_vector_vector int ivector likeprof_number matrix normal_prior number objective_function_value quadratic_penalty quadratic_prior random_effects_bounded_matrix random_effects_bounded_vector random_effects_matrix random_effects_vector sdreport_matrix sdreport_number sdreport_vector splus_3darray splus_adstring splus_imatrix splus_init_3darray splus_init_bounded_number splus_init_bounded_vector splus_init_matrix splus_init_number splus_init_vector splus_int splus_matrix splus_number splus_vector vector
" Default highlighting
if version >= 508 || !exists("did_tpl syntax_inits")
  if version < 508
    let did_tpl_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink tplSection		Statement
  HiLink tplType		Type
  delcommand HiLink
endif
let b:current_syntax = "tpl"
"vim: ts=8
