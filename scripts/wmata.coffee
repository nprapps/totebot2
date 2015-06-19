# Description:
#   Retrieves the next few trains departing the NoMa-Gallaudet Metro station
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   totebot next train
#
# Author:
#   alykat

get_next_train = (msg) ->
    msg.http('https://api.wmata.com/StationPrediction.svc/json/GetPrediction/B35?api_key=0e26b64e7797463f81cc6b60262076c4')
        .header('Accept', 'application/json')
        .get() (error, response, body) ->
            # passes back the complete reponse
            trains = JSON.parse(body)
            if error
                msg.send 'Unable to get train data right now.'
            else
                trainData = 'Next Trains at NoMa-Gallaudet:\n'
                for train in trains['Trains']
                    trainData += 'Toward '
                    if (train['Destination'] == 'Train')
                        trainData += '¯\\_(ツ)_/¯'
                    else
                        trainData += train['Destination']
                    trainData += ': ';
                    if train['Min'] == 'ARR' || train['Min'] == 'BRD'
                        trainData += train['Min']
                    else if train['Min'] == 1
                        trainData += train['Min'] + ' minute'
                    else
                        trainData += train['Min'] + ' minutes'
                    trainData += '\n'
                
                msg.send trainData

module.exports = (robot) ->
	robot.respond /next train/i, (msg) ->
	    get_next_train(msg)
