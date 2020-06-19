# Try to find the MPIR librairies
#  MPIR_FOUND - system has MPIR lib
#  MPIR_INCLUDES - the MPIR include directory
#  MPIR_LIBRARIES - Libraries needed to use MPIR

if (MPIR_INCLUDES AND MPIR_LIBRARIES)
  set(MPIR_FIND_QUIETLY TRUE)
endif (MPIR_INCLUDES AND MPIR_LIBRARIES)

find_path(MPIR_INCLUDES NAMES mpir.h )
find_library(MPIR_LIBRARIES NAMES mpir libmpir)

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MPIR DEFAULT_MSG MPIR_INCLUDES MPIR_LIBRARIES)

mark_as_advanced(MPIR_INCLUDES MPIR_LIBRARIES)
