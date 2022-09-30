def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  /\d/.match(num) && /^-?\d*\.?\d*$/.match(num)
end 

prompt('Welcome to the Loan Calculator!')

loan_amt = ''
loop do
  prompt('Please enter the loan amount, in dollars:')
  loan_amt = gets.chomp

  if valid_number?(loan_amt)
    break
  else
    prompt('Oops...that is not a valid number. Please try again.')
  end
end

loan_amt = loan_amt.to_f

apr = ''
loop do
  prompt('Please enter the APR: (Example: if 5.5% enter 5.5)')
  apr = gets.chomp
  
  if valid_number?(apr)
    break
  else 
    prompt('Oops...that is not a valid number. Please try again.')
  end 
end

monthly_rate = (apr.to_f / 12) / 100

loan_term_years = ''
loop do
  prompt('Please enter the loan term, in years:')
  loan_term_years = gets.chomp

  if valid_number?(loan_term_years)
    break
  else 
    prompt('Oops...that is not a valid number. Please try again.')
  end
end

loan_term_mos = loan_term_years.to_f * 12

input_prompt = <<-MSG
  What would you like to do today?
    1) Calculate monthly interest rate
    2) See loan term in months
    3) Calculate your monthly payment
MSG

loop do
  prompt(input_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3).include?(operator)
      break
    else 
      prompt('Must choose 1, 2 or 3')
    end
  end

  result = case operator
           when '1'
            (monthly_rate * 100).to_s + '%'
           when '2'
            loan_term_mos.to_s + ' months'
           when '3'
            loan_amt * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_term_mos)))
  end

  prompt("The result is #{result}")
  prompt('Would you like to calculate something else? (y for yes)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end