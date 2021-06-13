import Foundation
import RxSwift

public extension Solana {
    func getStakeActivation(stakeAccount: String, configs: RequestConfiguration? = nil) -> Single<StakeActivation> {
        Single.create { emitter in
            self.getStakeActivation(stakeAccount: stakeAccount, configs: configs) {
                switch $0 {
                case .success(let activation):
                    emitter(.success(activation))
                case .failure(let error):
                    emitter(.failure(error))
                }
            }
            return Disposables.create()
        }
    }
}
