func.func @test(%arg: tensor<8x!quantum.qubit>) -> tensor<8x!quantum.qubit> {
  %0 = quantum.hadamard %arg, bit=3: tensor<8x!quantum.qubit>
  %1 = quantum.hadamard %0, bit=5 : tensor<8x!quantum.qubit>
  func.return %1 : tensor<8x!quantum.qubit>
}
