class QuestionChannel < ApplicationCable::Channel
  def subscribed
    puts "SUBSCRIBED!" * 50
    stream_from "question_channel"
  end

  def unsubscribed
    puts "UNSUBSCRIBED :(" * 50
    # Any cleanup needed when channel is unsubscribed
  end
end
