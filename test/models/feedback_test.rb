require "test_helper"

class FeedbackTest < ActiveSupport::TestCase
  test "should create feedback" do
    city = cities(:moscow)
    feedback = Feedback.create(first_name: 'Тимофей',
                               last_name: 'Косков',
                               middle_name: 'Игнатьевич',
                               city: city,
                               phone: '(965)6394531',
                               email: 'timofey22@rambler.ru',
                               comment: 'Text')
    assert feedback.save
  end

  test "should find feedback" do
    feedback_id = feedbacks(:agafia).id
    assert_nothing_raised { Feedback.find(feedback_id) }
  end

  test "should update feedback" do
    feedback = feedbacks(:agafia)
    feedback.update(first_name: 'Римма')
    assert_equal 'Римма', feedbacks(:agafia).first_name
  end

  test "should destroy feedback" do
    feedback = feedbacks(:agafia)
    feedback.destroy
    assert_raise(ActiveRecord::RecordNotFound) { Feedback.find(feedback.id) }
  end

  test "should not create feedback without first, last, middle names" do
    feedback = Feedback.new
    assert !feedback.save
    assert_not_empty feedback.errors[:first_name]
    assert_not_empty feedback.errors[:last_name]
    assert_not_empty feedback.errors[:middle_name]
    assert_equal ["can't be blank"], feedback.errors[:first_name]
    assert_equal ["can't be blank"], feedback.errors[:last_name]
    assert_equal ["can't be blank"], feedback.errors[:middle_name]
  end

  test "should not create feedback with wrong phone format" do
    city = cities(:moscow)
    feedback = Feedback.create(first_name: 'Тимофей',
                               last_name: 'Косков',
                               middle_name: 'Игнатьевич',
                               city: city,
                               phone: '9656394531',
                               email: 'timofey22@rambler.ru',
                               comment: 'Text')
    assert !feedback.save
    assert_not_empty feedback.errors[:phone]
    assert_equal ["is invalid"], feedback.errors[:phone]
  end

  test "should not create feedback with wrong email format" do
    city = cities(:moscow)
    feedback = Feedback.create(first_name: 'Тимофей',
                               last_name: 'Косков',
                               middle_name: 'Игнатьевич',
                               city: city,
                               phone: '(965)6394531',
                               email: 'rambler.ru',
                               comment: 'Text')
    assert !feedback.save
    assert_not_empty feedback.errors[:email]
    assert_equal ["is invalid"], feedback.errors[:email]
  end

  test "should not create feedback without city" do
    feedback = Feedback.create(first_name: 'Тимофей',
                               last_name: 'Косков',
                               middle_name: 'Игнатьевич',
                               phone: '(965)6394531',
                               email: 'timofey22@rambler.ru',
                               comment: 'Text')
    assert !feedback.save
    assert_not_empty feedback.errors[:city]
    assert_equal ["must exist"], feedback.errors[:city]
  end
end
