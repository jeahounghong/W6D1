# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :integer          not null
#
# Indexes
#
#  index_questions_on_poll_id  (poll_id)
#
class Question < ApplicationRecord

    belongs_to :poll,
        primary_key: :id,
        foreign_key: :poll_id,
        class_name: :Poll

    has_many :answer_choices,
        primary_key: :id,
        foreign_key: :question_id,
        class_name: :AnswerChoice
    
    has_many :responses,
        through: :answer_choices,
        source: :responses

    def results
        hash = Hash.new(0)
        answerChoices = self.answer_choices
        answerChoices.each do |el|
            hash[el.text] += 0
        end
        result = 
        AnswerChoice.joins(:responses)
        .select('answer_choices.id, answer_choices.text, COUNT(*) as count')
        .where('answer_choices.question_id = (?)', 109)
        .group('answer_choices.id')
        result.each do |result|
            hash[result.text] += result.count
        end
        puts self.text
        return hash

    end
end
