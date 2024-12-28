#map = affine_map<(d0) -> (d0)>
module {
  func.func @test(%arg0: tensor<512xf64>) -> tensor<512xf64> {
    %c64 = arith.constant 64 : index
    %c128 = arith.constant 128 : index
    %cst = arith.constant 0.70710678118654746 : f64
    %c16 = arith.constant 16 : index
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c32 = arith.constant 32 : index
    %0 = tensor.empty() : tensor<512xf64>
    %1 = scf.for %arg1 = %c0 to %c512 step %c32 iter_args(%arg2 = %0) -> (tensor<512xf64>) {
      %3 = arith.addi %arg1, %c16 : index
      %extracted_slice = tensor.extract_slice %arg0[%arg1] [16] [1] : tensor<512xf64> to tensor<16xf64>
      %extracted_slice_0 = tensor.extract_slice %arg0[%3] [16] [1] : tensor<512xf64> to tensor<16xf64>
      %extracted_slice_1 = tensor.extract_slice %arg2[%arg1] [16] [1] : tensor<512xf64> to tensor<16xf64>
      %4 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%extracted_slice, %extracted_slice_0 : tensor<16xf64>, tensor<16xf64>) outs(%extracted_slice_1 : tensor<16xf64>) {
      ^bb0(%in: f64, %in_4: f64, %out: f64):
        %6 = arith.addf %in, %in_4 : f64
        %7 = arith.mulf %6, %cst : f64
        linalg.yield %7 : f64
      } -> tensor<16xf64>
      %inserted_slice = tensor.insert_slice %4 into %arg2[%arg1] [16] [1] : tensor<16xf64> into tensor<512xf64>
      %extracted_slice_2 = tensor.extract_slice %inserted_slice[%3] [16] [1] : tensor<512xf64> to tensor<16xf64>
      %5 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%extracted_slice, %extracted_slice_0 : tensor<16xf64>, tensor<16xf64>) outs(%extracted_slice_2 : tensor<16xf64>) {
      ^bb0(%in: f64, %in_4: f64, %out: f64):
        %6 = arith.subf %in, %in_4 : f64
        %7 = arith.mulf %6, %cst : f64
        linalg.yield %7 : f64
      } -> tensor<16xf64>
      %inserted_slice_3 = tensor.insert_slice %5 into %inserted_slice[%3] [16] [1] : tensor<16xf64> into tensor<512xf64>
      scf.yield %inserted_slice_3 : tensor<512xf64>
    }
    %2 = scf.for %arg1 = %c0 to %c512 step %c128 iter_args(%arg2 = %0) -> (tensor<512xf64>) {
      %3 = arith.addi %arg1, %c64 : index
      %extracted_slice = tensor.extract_slice %1[%arg1] [64] [1] : tensor<512xf64> to tensor<64xf64>
      %extracted_slice_0 = tensor.extract_slice %1[%3] [64] [1] : tensor<512xf64> to tensor<64xf64>
      %extracted_slice_1 = tensor.extract_slice %arg2[%arg1] [64] [1] : tensor<512xf64> to tensor<64xf64>
      %4 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%extracted_slice, %extracted_slice_0 : tensor<64xf64>, tensor<64xf64>) outs(%extracted_slice_1 : tensor<64xf64>) {
      ^bb0(%in: f64, %in_4: f64, %out: f64):
        %6 = arith.addf %in, %in_4 : f64
        %7 = arith.mulf %6, %cst : f64
        linalg.yield %7 : f64
      } -> tensor<64xf64>
      %inserted_slice = tensor.insert_slice %4 into %arg2[%arg1] [64] [1] : tensor<64xf64> into tensor<512xf64>
      %extracted_slice_2 = tensor.extract_slice %inserted_slice[%3] [64] [1] : tensor<512xf64> to tensor<64xf64>
      %5 = linalg.generic {indexing_maps = [#map, #map, #map], iterator_types = ["parallel"]} ins(%extracted_slice, %extracted_slice_0 : tensor<64xf64>, tensor<64xf64>) outs(%extracted_slice_2 : tensor<64xf64>) {
      ^bb0(%in: f64, %in_4: f64, %out: f64):
        %6 = arith.subf %in, %in_4 : f64
        %7 = arith.mulf %6, %cst : f64
        linalg.yield %7 : f64
      } -> tensor<64xf64>
      %inserted_slice_3 = tensor.insert_slice %5 into %inserted_slice[%3] [64] [1] : tensor<64xf64> into tensor<512xf64>
      scf.yield %inserted_slice_3 : tensor<512xf64>
    }
    return %2 : tensor<512xf64>
  }
}

