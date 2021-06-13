import Foundation
import RxSwift

public extension Solana {
    func getTransactionCount(commitment: Commitment? = nil) -> Single<UInt64> {
        Single.create { emitter in
            self.getTransactionCount(commitment: commitment) {
                switch $0 {
                case .success(let count):
                    emitter(.success(count))
                case .failure(let error):
                    emitter(.failure(error))
                }
            }
            return Disposables.create()
        }
    }
}
