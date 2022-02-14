##########################################################################################
# User-defined variables for logical library setup in dc_setup.tcl
##########################################################################################

set ADDITIONAL_SEARCH_PATH        "../ref/DBs "; #  Directories containing logic libraries
                                                                         #  logic design and script files.

set LINK_LIBRARY_FILES		  "../ref/DBs/saed32rvt_tt1p05v25c.db \
				   ../ref/DBs/saed32hvt_tt1p05v25c.db \
				   ../ref/DBs/saed32lvt_tt1p05v25c.db";

set TARGET_LIBRARY_FILES          "../ref/DBs/saed32rvt_tt1p05v25c.db"  ;#  Logic cell library file

set SYMBOL_LIBRARY_FILES          "../ref/DBs/generic.sdb";

set_app_var search_path ".{ADDITIONAL_SEARCH_PATH} $search_path"
set_app_var link_library ${LINK_LIBRARY_FILES}
set_app_var target_library ${TARGET_LIBRARY_FILES}
set_app_var symbol_library ${SYMBOL_LIBRARY_FILES}

     



