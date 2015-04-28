
struct CommonRequest{
    1: string requester
    2: i32 requestId // requestId used for track the service invoke
}

struct CityWeatherInfoRequest{
    1: string cityName
}


service CommonService {
    bool ping(
        1: CommonRequest commonRequest
    ),
}

service CityWeatherInfoService extends CommonService{
    string getCityWeatherInfo(
        1: CommonRequest commonRequest,
        2: CityWeatherInfoRequest cityInfo,
    )
}

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
