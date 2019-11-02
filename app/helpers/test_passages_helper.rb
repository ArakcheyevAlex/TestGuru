module TestPassagesHelper
  def result_message(test_passage)
    test_result = test_passage.test_passed? ? 'passed' : 'failed'
    "<div class=#{test_result}>#{test_passage.test_result} - test #{test_result}</div>".html_safe
  end
end
