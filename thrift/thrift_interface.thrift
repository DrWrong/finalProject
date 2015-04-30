// a common Request header
// each RPC should have this header
struct CommonRequest{
    1: string requester  // where is the requester from
    2: i32 requestId // requestId used for track the service invoke
}

// city info request, the request contains city info
// now it has only one part CityName
struct CityWeatherInfoRequest{
    1: string cityName
}


// a basic thrift service
// all service should have a ping method
service CommonService {
    // ping method to validate if the service is available now.
    bool ping(
        1: CommonRequest commonRequest
    ),
}

# weather info service to get city weather info
service CityWeatherInfoService extends CommonService{
    string getCityWeatherInfo(
        1: CommonRequest commonRequest,
        2: CityWeatherInfoRequest cityInfo,
    )
}

# security service to encrypt a plain text or decrypt a cipher text use AES algorithm.
service SecureService extends CommonService{
    string encrypted(
        1: CommonRequest commonRequest,
        2: string plainText,
    )

    string decrypted(
        1: CommonRequest commonRequest,
        2: string cipherText,
        3: string key
    )
}
