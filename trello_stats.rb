load 'api_keys/trello_api_keys.rb'
require 'trello'

include Trello
include Trello::Authorization

Trello::Authorization.const_set :AuthPolicy, OAuthPolicy
OAuthPolicy.consumer_credential = OAuthCredential.new TRELLO_API_KEYS[:key], TRELLO_API_KEYS[:secret]
OAuthPolicy.token = OAuthCredential.new TRELLO_API_KEYS[:access_user_token], nil

board_info = {"0"=>{:name=>"VA_C",:id=>"518c54434910e0ff0c0042bb"},"1"=>{:name=>"Web_JSisson",:id=>"51941981c3213aea65001427"},"2"=>{:name=>"Web_SSingh",:id=>"51951ea6b1b94e8e780039e2"}, "3"=>{:name=>"Web_AAleem",:id=>"5195562896c918d265006e6a"}}
boards = Trello::Board.all
p boards[0]

##Useful references:
# 1) https://gist.github.com/joshmcarthur/2839352
# 2) https://github.com/madtypist/trello-archiver/blob/master/config.example.yml
# 3) https://github.com/blairc/trello-client/