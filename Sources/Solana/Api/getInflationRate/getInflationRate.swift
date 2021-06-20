import Foundation

extension Api {
    public func getInflationRate(onComplete: @escaping(Result<InflationRate, Error>)->Void) {
        router.request { (result: Result<InflationRate, Error>) in
            switch result {
            case .success(let rate):
                onComplete(.success(rate))
            case .failure(let error):
                onComplete(.failure(error))
            }
        }
    }
}