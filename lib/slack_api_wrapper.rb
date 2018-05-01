require 'httparty'

class SlackApiWrapper

  URL = "https://slack.com/api/"
  TOKEN = ENV["SLACK_TOKEN"]


  def self.list_channels
    response = HTTParty.get("#{URL}channels.list?token=#{TOKEN}")

    if response ["channels"]
      return response["channels"]
    else
      return []
    end
  end

  def self.send_message(channel,message)
    message_url = "#{URL}chat.postMessage"
    response = HTTParty.post(message_url, body: {
      "token" => TOKEN,
      "channel" => channel,
      "text" => message,
      "username" => "Betsy",
      "icon_emoji" => ":scream_cat:",
      "as_user" => "false"
    },
    :headers => { 'Content-Type' => 'application/x-www-form-urlencoded' })
    return response.success?

  end
end
