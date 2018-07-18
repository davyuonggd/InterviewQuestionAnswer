//Given an array, without using extra space, move all zeros  to the end and no-zeros to the beginning. The function should return the number of non-zeros.

/// move all zeros in the list to the front without using extra space or new arrays.
///
/// - Parameter list: list of Int
/// - Returns: number of zeros
public func moveZerosToFront(list: inout [Int]) -> Int { //O(n)
  var numOfZeros = 0

  for i in 0..<list.count {
    if list[i] != 0 {
      continue
    } else {
      if i == 0 {
        continue
      }
      (list[i], list[numOfZeros]) = (list[numOfZeros], list[i]) //swap
      numOfZeros += 1
    }
  }
  return numOfZeros
}
