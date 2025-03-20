add_circt_dialect_library(CIRCTVerific
  VerificDialect.cpp
  VerificOps.cpp

  ADDITIONAL_HEADER_DIRS
  ${CIRCT_MAIN_INCLUDE_DIR}/circt/Dialect/Verific

  DEPENDS
  MLIRVerificIncGen

  LINK_LIBS PUBLIC
  MLIRIR
  CIRCTHW
)

add_subdirectory(Transforms)