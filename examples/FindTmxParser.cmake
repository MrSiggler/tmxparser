# Copyright (c) 2014 Andrew Kelley
# This file is MIT licensed.
# See http://opensource.org/licenses/MIT

# TMXPARSER_INCLUDE_DIR
# TMXPARSER_LIBRARY_DEBUG
# TMXPARSER_LIBRARY_RELEASE
# TMXPARSER_FOUND

find_path(TMXPARSER_INCLUDE_DIR NAMES tmxparser/Tmx.h
          DOC "The tmxparser include directory"
)

find_library(TMXPARSER_LIBRARY_DEBUG NAMES tmxparser
          DOC "The tmxparser library"
)

find_library(TMXPARSER_LIBRARY_RELEASE NAMES tmxparser
          DOC "The tmxparser library"
)

if(TMXPARSER_LIBRARY_DEBUG AND TMXPARSER_LIBRARY_RELEASE)
  set(TMXPARSER_FOUND TRUE)
else()
  set(TMXPARSER_FOUND FALSE)
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(TMXPARSER DEFAULT_MSG TMXPARSER_LIBRARY_DEBUG TMXPARSER_LIBRARY_RELEASE TMXPARSER_INCLUDE_DIR)

mark_as_advanced(TMXPARSER_INCLUDE_DIR TMXPARSER_LIBRARY)
