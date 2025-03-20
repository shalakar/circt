#ifndef CIRCT_VERIFIC_DIALECT_TD
#define CIRCT_VERIFIC_DIALECT_TD

include "mlir/IR/DialectBase.td"

def Verific_Dialect {
    let name = "verific";
    let cppNamespace = "::circt::verific";

    let summary = "Types and operations for the verific dialect";

    let description = [{Null}];

    let useDefaultAttributePrinterParser = 1;
}

include "circt/Dialect/Verific/VerificOps.td"