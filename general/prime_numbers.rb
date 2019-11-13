#!/usr/bin/env ruby

def prime_numbers(nth_number)
  primes = Array.new(nth_number, true)
  prime  = 2

  while prime * prime <= nth_number
    if primes[p]
      
    end

    prime += 1
  end

  nth_number.times do |i|
    p i unless primes[i]
  end
end

nth_number = ARGV.first.to_i

prime_numbers(nth_number)
