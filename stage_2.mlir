#map = affine_map<()[s0, s1] -> (s0 + s1)>
module {
  func.func @test(%arg0: tensor<512xf64>) -> tensor<512xf64> {
    %cst = arith.constant dense<0.70710678118654746> : vector<8xf64>
    %cst_0 = arith.constant 0.000000e+00 : f64
    %c8 = arith.constant 8 : index
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c32 = arith.constant 32 : index
    %0 = tensor.empty() : tensor<512xf64>
    %1 = scf.for %arg1 = %c0 to %c512 step %c32 iter_args(%arg2 = %0) -> (tensor<512xf64>) {
      %3 = arith.addi %arg1, %c16 : index
      %extracted_slice = tensor.extract_slice %arg2[%arg1] [16] [1] : tensor<512xf64> to tensor<16xf64>
      %4 = scf.for %arg3 = %c0 to %c16 step %c8 iter_args(%arg4 = %extracted_slice) -> (tensor<16xf64>) {
        %6 = affine.apply #map()[%arg3, %arg1]
        %7 = vector.transfer_read %arg0[%6], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %8 = affine.apply #map()[%arg3, %3]
        %9 = vector.transfer_read %arg0[%8], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %10 = arith.addf %7, %9 : vector<8xf64>
        %11 = arith.mulf %10, %cst : vector<8xf64>
        %12 = vector.transfer_write %11, %arg4[%arg3] {in_bounds = [true]} : vector<8xf64>, tensor<16xf64>
        scf.yield %12 : tensor<16xf64>
      }
      %inserted_slice = tensor.insert_slice %4 into %arg2[%arg1] [16] [1] : tensor<16xf64> into tensor<512xf64>
      %extracted_slice_1 = tensor.extract_slice %inserted_slice[%3] [16] [1] : tensor<512xf64> to tensor<16xf64>
      %5 = scf.for %arg3 = %c0 to %c16 step %c8 iter_args(%arg4 = %extracted_slice_1) -> (tensor<16xf64>) {
        %6 = affine.apply #map()[%arg3, %arg1]
        %7 = vector.transfer_read %arg0[%6], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %8 = affine.apply #map()[%arg3, %3]
        %9 = vector.transfer_read %arg0[%8], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %10 = arith.subf %7, %9 : vector<8xf64>
        %11 = arith.mulf %10, %cst : vector<8xf64>
        %12 = vector.transfer_write %11, %arg4[%arg3] {in_bounds = [true]} : vector<8xf64>, tensor<16xf64>
        scf.yield %12 : tensor<16xf64>
      }
      %inserted_slice_2 = tensor.insert_slice %5 into %inserted_slice[%3] [16] [1] : tensor<16xf64> into tensor<512xf64>
      scf.yield %inserted_slice_2 : tensor<512xf64>
    }
    %2 = scf.for %arg1 = %c0 to %c512 step %c128 iter_args(%arg2 = %0) -> (tensor<512xf64>) {
      %3 = arith.addi %arg1, %c64 : index
      %extracted_slice = tensor.extract_slice %arg2[%arg1] [64] [1] : tensor<512xf64> to tensor<64xf64>
      %4 = scf.for %arg3 = %c0 to %c64 step %c8 iter_args(%arg4 = %extracted_slice) -> (tensor<64xf64>) {
        %6 = affine.apply #map()[%arg3, %arg1]
        %7 = vector.transfer_read %1[%6], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %8 = affine.apply #map()[%arg3, %3]
        %9 = vector.transfer_read %1[%8], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %10 = arith.addf %7, %9 : vector<8xf64>
        %11 = arith.mulf %10, %cst : vector<8xf64>
        %12 = vector.transfer_write %11, %arg4[%arg3] {in_bounds = [true]} : vector<8xf64>, tensor<64xf64>
        scf.yield %12 : tensor<64xf64>
      }
      %inserted_slice = tensor.insert_slice %4 into %arg2[%arg1] [64] [1] : tensor<64xf64> into tensor<512xf64>
      %extracted_slice_1 = tensor.extract_slice %inserted_slice[%3] [64] [1] : tensor<512xf64> to tensor<64xf64>
      %5 = scf.for %arg3 = %c0 to %c64 step %c8 iter_args(%arg4 = %extracted_slice_1) -> (tensor<64xf64>) {
        %6 = affine.apply #map()[%arg3, %arg1]
        %7 = vector.transfer_read %1[%6], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %8 = affine.apply #map()[%arg3, %3]
        %9 = vector.transfer_read %1[%8], %cst_0 {in_bounds = [true]} : tensor<512xf64>, vector<8xf64>
        %10 = arith.subf %7, %9 : vector<8xf64>
        %11 = arith.mulf %10, %cst : vector<8xf64>
        %12 = vector.transfer_write %11, %arg4[%arg3] {in_bounds = [true]} : vector<8xf64>, tensor<64xf64>
        scf.yield %12 : tensor<64xf64>
      }
      %inserted_slice_2 = tensor.insert_slice %5 into %inserted_slice[%3] [64] [1] : tensor<64xf64> into tensor<512xf64>
      scf.yield %inserted_slice_2 : tensor<512xf64>
    }
    return %2 : tensor<512xf64>
  }
}

