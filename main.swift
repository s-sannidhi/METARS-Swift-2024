import Foundation
import FoundationNetworking

let ansiRed = "\u{001B}[31m"
let ansiNormal = "\u{001B}[0m"

class Metar {

    enum MetarError: Error{
        case fieldCountMismatch(expectedFieldCount: Int, actualFieldCount: Int, fields : [String])
    }

    let rawText: String
    let stationId: String
    let observationTime: String
    let latitude: String
    let longitude: String
    let tempC: String
    let dewpointC: String
    let windDirDegrees: String
    let windSpeedKt: String
    let windGustKt: String
    let visibilityStatuteMi: String
    let altimInHg: String
    let seaLevelPressureMb: String
    let corrected: String
    let auto: String
    let autoStation: String
    let maintenanceIndicatorOn: String
    let noSignal: String
    let lightningSensorOff: String
    let freezingRainSensorOff: String
    let presentWeatherSensorOff: String
    let wxString: String
    let skyCover_1: String
    let cloudBaseFtAgl_1: String
    let skyCover_2: String
    let cloudBaseFtAgl_2: String
    let skyCover_3: String
    let cloudBaseFtAgl_3: String
    let skyCover_4: String
    let cloudBaseFtAgl_4: String
    let flightCategory: String
    let threeHrPressureTendencyMb: String
    let maxTC: String
    let minTC: String
    let maxT24hrC: String
    let minT24hrC: String
    let precipIn: String
    let pcp3hrIn: String
    let pcp6hrIn: String
    let pcp24hrIn: String
    let snowIn: String
    let vertVisFt: String
    let metarType: String
    let elevationM: String

    init(rawText: String,
    stationId: String,
    observationTime: String,
    latitude: String,
    longitude: String,
    tempC: String,
    dewpointC: String,
    windDirDegrees: String,
    windSpeedKt: String,
    windGustKt: String,
    visibilityStatuteMi: String,
    altimInHg: String,
    seaLevelPressureMb: String,
    corrected: String,
    auto: String,
    autoStation: String,
    maintenanceIndicatorOn: String,
    noSignal: String,
    lightningSensorOff: String,
    freezingRainSensorOff: String,
    presentWeatherSensorOff: String,
    wxString: String,
    skyCover_1: String,
    cloudBaseFtAgl_1: String,
    skyCover_2: String,
    cloudBaseFtAgl_2: String,
    skyCover_3: String,
    cloudBaseFtAgl_3: String,
    skyCover_4: String,
    cloudBaseFtAgl_4: String,
    flightCategory: String,
    threeHrPressureTendencyMb: String,
    maxTC: String,
    minTC: String,
    maxT24hrC: String,
    minT24hrC: String,
    precipIn: String,
    pcp3hrIn: String,
    pcp6hrIn: String,
    pcp24hrIn: String,
    snowIn: String,
    vertVisFt: String,
    metarType: String,
    elevationM: String) {
        self.rawText = rawText
        self.stationId = stationId
        self.observationTime = observationTime
        self.latitude = latitude
        self.longitude = longitude
        self.tempC = tempC
        self.dewpointC = dewpointC
        self.windDirDegrees = windDirDegrees
        self.windSpeedKt = windSpeedKt
        self.windGustKt = windGustKt
        self.visibilityStatuteMi = visibilityStatuteMi
        self.altimInHg = altimInHg
        self.seaLevelPressureMb = seaLevelPressureMb
        self.corrected = corrected
        self.auto = auto
        self.autoStation = autoStation
        self.maintenanceIndicatorOn = maintenanceIndicatorOn
        self.noSignal = noSignal
        self.lightningSensorOff = lightningSensorOff
        self.freezingRainSensorOff = freezingRainSensorOff
        self.presentWeatherSensorOff = presentWeatherSensorOff
        self.wxString = wxString
        self.skyCover_1 = skyCover_1
        self.cloudBaseFtAgl_1 = cloudBaseFtAgl_1
        self.skyCover_2 = skyCover_2
        self.cloudBaseFtAgl_2 = cloudBaseFtAgl_2
        self.skyCover_3 = skyCover_3
        self.cloudBaseFtAgl_3 = cloudBaseFtAgl_3
        self.skyCover_4 = skyCover_4
        self.cloudBaseFtAgl_4 = cloudBaseFtAgl_4
        self.flightCategory = flightCategory
        self.threeHrPressureTendencyMb = threeHrPressureTendencyMb
        self.maxTC = maxTC
        self.minTC = minTC
        self.maxT24hrC = maxT24hrC
        self.minT24hrC = minT24hrC
        self.precipIn = precipIn
        self.pcp3hrIn = pcp3hrIn
        self.pcp6hrIn = pcp6hrIn
        self.pcp24hrIn = pcp24hrIn
        self.snowIn = snowIn
        self.vertVisFt = vertVisFt
        self.metarType = metarType
        self.elevationM = elevationM

    }

    convenience init(fields: [String]) throws {
        let expectedFieldCount = 44
        guard fields.count == 44 else {
            throw MetarError.fieldCountMismatch(expectedFieldCount: expectedFieldCount, actualFieldCount: fields.count, fields: fields)
        }
        self.init(
            rawText: fields[0],
            stationId: fields[1],
            observationTime: fields[2],
            latitude: fields[3],
            longitude: fields[4],
            tempC: fields[5],
            dewpointC: fields[6],
            windDirDegrees: fields[7],
            windSpeedKt: fields[8],
            windGustKt: fields[9],
            visibilityStatuteMi: fields[10],
            altimInHg: fields[11],
            seaLevelPressureMb: fields[12],
            corrected: fields[13],
            auto: fields[14],
            autoStation: fields[15],
            maintenanceIndicatorOn: fields[16],
            noSignal: fields[17],
            lightningSensorOff: fields[18],
            freezingRainSensorOff: fields[19],
            presentWeatherSensorOff: fields[20],
            wxString: fields[21],
            skyCover_1: fields[22],
            cloudBaseFtAgl_1: fields[23],
            skyCover_2: fields[24],
            cloudBaseFtAgl_2: fields[25],
            skyCover_3: fields[26],
            cloudBaseFtAgl_3: fields[27],
            skyCover_4: fields[28],
            cloudBaseFtAgl_4: fields[29],
            flightCategory: fields[30],
            threeHrPressureTendencyMb: fields[31],
            maxTC: fields[32],
            minTC: fields[33],
            maxT24hrC: fields[34],
            minT24hrC: fields[35],
            precipIn: fields[36],
            pcp3hrIn: fields[37],
            pcp6hrIn: fields[38],
            pcp24hrIn: fields[39],
            snowIn: fields[40],
            vertVisFt: fields[41],
            metarType: fields[42],
            elevationM: fields[43]
        )

    }
}
convenience init(line: String) throws {
    let fields = line.components(separatedBy: ",")
    try self.init(fields: fields)
}

class Metars{

    fund read(){
        let urlString =
    }
}

func main(){
    do{
    } catch {
        fputs("\(ansiRed)Error: \(error)\(ansiNormal)\n", stderr)
    }
}
//Fortnite
