#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'


require 'rack/route/definition/parser_extras'
module Rack
  module Route
    module Definition
      class Parser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
     4,    15,    16,     7,    12,     8,     9,     7,    12,     8,
     9,     7,     4,     8,     9,     7,    24,     8,     9,    15,
    16,     7,    23,    25,     9,    15,    16,     7,    26,   nil,
     9 ]

racc_action_check = [
     0,     8,     8,     0,     2,     0,     0,     2,     3,     2,
     2,     3,     7,     3,     3,     7,    10,     7,     7,     4,
     4,     4,     9,    20,     4,    12,    12,    12,    24,   nil,
    12 ]

racc_action_pointer = [
    -2,   nil,     2,     6,    16,   nil,   nil,    10,    -2,    19,
    16,   nil,    22,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    17,   nil,   nil,   nil,    28,   nil,   nil ]

racc_action_default = [
   -19,    -1,    -5,    -6,    -2,    -7,    -8,   -19,   -19,   -19,
   -19,    -3,   -19,    -4,   -12,   -17,   -16,   -11,    -9,   -10,
   -19,   -14,   -13,   -18,   -19,   -15,    27 ]

racc_goto_table = [
    17,    14,    21,    10,    11,    13,    22,   nil,    17,    14,
    20 ]

racc_goto_check = [
     6,     4,     7,     1,     2,     2,     8,   nil,     6,     4,
     1 ]

racc_goto_pointer = [
   nil,     3,     2,   nil,    -3,   nil,    -4,    -6,    -2 ]

racc_goto_default = [
   nil,   nil,     1,     2,     3,     5,     6,    18,    19 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 10, :_reduce_1,
  1, 10, :_reduce_2,
  2, 11, :_reduce_3,
  2, 11, :_reduce_4,
  1, 11, :_reduce_none,
  1, 11, :_reduce_none,
  1, 11, :_reduce_none,
  1, 11, :_reduce_none,
  2, 12, :_reduce_9,
  2, 12, :_reduce_10,
  2, 12, :_reduce_11,
  2, 12, :_reduce_12,
  2, 14, :_reduce_13,
  2, 14, :_reduce_14,
  3, 13, :_reduce_15,
  1, 17, :_reduce_16,
  1, 16, :_reduce_17,
  2, 15, :_reduce_18 ]

racc_reduce_n = 19

racc_shift_n = 27

racc_token_table = {
  false => 0,
  :error => 1,
  :SLASH => 2,
  :LITERAL => 3,
  :SYMBOL => 4,
  :LPAREN => 5,
  :RPAREN => 6,
  :DOT => 7,
  :STAR => 8 }

racc_nt_base = 9

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "SLASH",
  "LITERAL",
  "SYMBOL",
  "LPAREN",
  "RPAREN",
  "DOT",
  "STAR",
  "$start",
  "path",
  "paths",
  "segment",
  "group",
  "dot",
  "star",
  "literal",
  "symbol" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

def _reduce_1(val, _values, result)
 result = Node.new(:PATH, val.flatten) 
    result
end

def _reduce_2(val, _values, result)
 result = Node.new(:PATH, Node.new(:SEGMENT, [])) 
    result
end

def _reduce_3(val, _values, result)
 result = val.flatten 
    result
end

def _reduce_4(val, _values, result)
 result = val.flatten 
    result
end

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

def _reduce_9(val, _values, result)
 result = Node.new(:SEGMENT, [val.last]) 
    result
end

def _reduce_10(val, _values, result)
 result = Node.new(:SEGMENT, [val.last]) 
    result
end

def _reduce_11(val, _values, result)
 result = Node.new(:SEGMENT, [val.last]) 
    result
end

def _reduce_12(val, _values, result)
 result = Node.new(:SEGMENT, [val.last]) 
    result
end

def _reduce_13(val, _values, result)
 result = Node.new(:DOT, [val.last]) 
    result
end

def _reduce_14(val, _values, result)
 result = Node.new(:DOT, [val.last]) 
    result
end

def _reduce_15(val, _values, result)
 result = Node.new(:GROUP, val[1]) 
    result
end

def _reduce_16(val, _values, result)
 result = Node.new(:SYMBOL, val.first) 
    result
end

def _reduce_17(val, _values, result)
 result = Node.new(:LITERAL, val.first) 
    result
end

def _reduce_18(val, _values, result)
 result = Node.new(:STAR, val.last) 
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

      end   # class Parser
      end   # module Definition
    end   # module Route
  end   # module Rack
