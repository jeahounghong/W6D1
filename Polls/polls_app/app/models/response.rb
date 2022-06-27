# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#
# Indexes
#
#  index_responses_on_user_id  (user_id)
#
class Response < ApplicationRecord

    validates :user_id, uniqueness: {scope: :answer_choice_id}
    validate :respondent_already_answered?, :author_of_poll?

    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    has_one :question,
        through: :answer_choice,
        source: :question

    def respondent_already_answered?
        sibling_responses = sibling_response
        sibling_responses.each do |response|
            return true if response.user_id == self.user_id
        end
        true
    end

    def author_of_poll?
        author = self.question.poll.author_id
        if author == self.user_id
            raise "Author cannot respond to own poll"
            return false 
        end
        true
    end

    def sibling_response
        return self.question.responses.where.not(id: self.id)
    end

end
