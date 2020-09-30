function(find_program_required ARG_VAR ARG_PROGRAM_NAME)
  cmake_parse_arguments(ARG "NO_DEFAULT_PATH;NO_CMAKE_FIND_ROOT_PATH" "" "PATHS" ${ARGN})
  find_program(${ARG_VAR} ${ARG_PROGRAM_NAME} PATHS ${ARG_PATHS} ${ARG_NO_DEFAULT_PATH} ${ARG_NO_CMAKE_FIND_ROOT_PATH})
  if(NOT ${ARG_VAR})
    message(FATAL_ERROR "${ARG_PROGRAM_NAME} not found")
  else()
    debug_message(1 "${ARG_PROGRAM_NAME} was found at ${${ARG_VAR}}")
  endif()
endfunction()