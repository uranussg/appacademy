# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer
#  answer_choice_id :integer
#

class Response < ApplicationRecord
    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :user_id, 
        class_name: :User
    
    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice
end