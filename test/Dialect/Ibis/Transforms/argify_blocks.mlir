// RUN: circt-opt --ibis-argify-blocks %s | FileCheck %s

// CHECK-LABEL: ibis.class @Argify {
// CHECK-NEXT:   %this = ibis.this @Argify 
// CHECK-NEXT:   ibis.method @foo() {
// CHECK-NEXT:     %c32_i32 = hw.constant 32 : i32
// CHECK-NEXT:     %0:2 = ibis.block (%arg0 : i32 = %c32_i32) -> (i32, i32){
// CHECK-NEXT:       %c31_i32 = hw.constant 31 : i32
// CHECK-NEXT:       %1 = arith.addi %arg0, %c31_i32 : i32
// CHECK-NEXT:       ibis.block.return %1, %arg0 : i32, i32
// CHECK-NEXT:     }
// CHECK-NEXT:     ibis.return
// CHECK-NEXT:   }
// CHECK-NEXT: }

ibis.class @Argify {
  %this = ibis.this @Argify

  ibis.method @foo()  {
    %c32 = hw.constant 32 : i32
    %0:2 = ibis.block() -> (i32, i32) {
      %c31 = hw.constant 31 : i32
      %res = arith.addi %c31, %c32 : i32
      ibis.block.return %res, %c32 : i32, i32
    } 
  }
}
