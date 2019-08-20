//
//  MergeSort.swift
//  Algorithms
//
//  Created by Diogo Araujo on 20/08/2019.
//

import Foundation

func mergeSort<Element: Comparable>(_ array: [Element]) -> [Element] {
    guard array.count > 1 else {
        return array
    }
    
    let middle = array.count / 2
    let leftArray = mergeSort(Array(array[..<middle]))
    let righArray = mergeSort(Array(array[middle...]))
    
    return merge(leftArray, righArray)
    
}

func merge<Element: Comparable>(_ left: [Element], _ right: [Element]) -> [Element] {
    var leftIndex = 0
    var rightIndex = 0
    
    var result: [Element] = []
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
            result.append(leftElement)
            leftIndex += 1
        }
        else if rightElement < leftElement {
            result.append(rightElement)
            rightIndex += 1
        }
        else {
            result.append(rightElement)
            result.append(leftElement)
            rightIndex += 1
            leftIndex += 1
        }
    }
    
    if leftIndex < left.count {
        result.append(contentsOf: left[leftIndex...])
    }
    
    if rightIndex < right.count {
        result.append(contentsOf: right[rightIndex...])
    }
    
    return result
}
