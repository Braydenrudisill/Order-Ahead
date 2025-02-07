//
//  BusinessViewModel.swift
//  Order Ahead
//
//  Created by Brayden Rudisill on 9/7/21.
//

import Foundation
import Combine

class BusinessViewModel: ObservableObject, Identifiable {
  private static let businessRepository = BusinessRepository()
  @Published var business: Business
  private var cancellables: Set<AnyCancellable> = []
  var id = ""

  init(business: Business) {
    self.business = business
    $business
      .compactMap { $0.id }
      .assign(to: \.id, on: self)
      .store(in: &cancellables)
  }

  func update(business: Business) {
    BusinessViewModel.businessRepository.update(business)
  }

  func remove() {
    BusinessViewModel.businessRepository.remove(business)
  }
}
