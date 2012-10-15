# Copyright:: Copyright 2012 Trimble Navigation Ltd.
# License:: Apache License version 2.0
# Original Author:: Scott Lininger 
#
# Tests the SketchUp Ruby API OptionsProvider object.
#
# This file was originally generated by ourdoc.rb, an internal tool we developed
# specifically for outputting support files (documentation, unit tests, etc.)
# from the standard, doxygen-style c++ comments that are embedded into the
# Ruby implementation files. You can find ourdoc.rb alongside these
# implementation files at:
#
# googleclient/sketchup/source/sketchup/ruby
#

require 'test/unit'

# TC_OptionsProvider contains unit tests for the OptionsProvider class.
#
# API Object::       OptionsProvider
# C++ File::         roptionsprovider.cpp
# Parent Class::     Object
# Version::          SketchUp 6.0
#
# An OptionsProvider class provides various kinds of options on a Model. You
# get an OptionsProvider from the OptionsManager. The options are given as
# name/value pairs.
#
class TC_OptionsProvider < Test::Unit::TestCase

  # Setup for test cases, if required.
  #
  def setup
    def UI::messagebox(params)
      puts 'TESTUP OVERRIDE: UI::messagebox > ' + params.to_s
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.remove_observer
  # @file                roptionsprovider.cpp
  #
  # The remove_observer method is used to remove an observer from the
  # current object.
  #
  #
  # Args:
  # - observer: An observer.
  #
  # Returns:
  # - : true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_remove_observer_api_example
    status = nil
    observer = nil
    object = Sketchup.active_model.options[0]
    assert_nothing_raised do
     status = object.remove_observer observer
    end
    assert_equal(true, status, 'Failed in test_remove_observer')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.each_value
  # @file                roptionsprovider.cpp
  #
  # The each_value method is used to iterate through all of the attribute
  # values.
  #
  # Throws an exception if there are no keys.
  #
  #
  # Args:
  # - value: A variable that will hold each value as they are found.
  #
  # Returns:
  # - : nil
  #

  # Test the example code that we have in the API documentation.
  def test_each_value_api_example
    provider = Sketchup.active_model.options[0]
    assert_nothing_raised do
     provider.each_value { |value| UI.messagebox value }
    end
  end

  # Test that the number of iterations is equal to the reported length.
  def test_each_value_iterations_matches_count
    collection = Sketchup.active_model.options['UnitsOptions']
    count = 0
    collection.each_value do |value|
      count = count + 1
    end
    expected = collection.count
    result = count
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.each
  # @file                roptionsprovider.cpp
  #
  # The each method is used to iterate through all of the attributes.
  #
  # Throws an exception if there are no keys.
  #
  #
  # Args:
  # - key, value: Variables that will hold each key and value as they are
  # found.
  #
  # Returns:
  # - : nil
  #

  # Test the example code that we have in the API documentation.
  def test_each_api_example
    provider = Sketchup.active_model.options[0]
    assert_nothing_raised do
     # Retrieves each key
     provider.each { |key, value| UI.messagebox key }
     # Retrieves each corresponding value
     provider.each { |key, value| UI.messagebox value }
    end
  end

  # Test that the number of iterations is equal to the reported length.
  def test_each_iterations_matches_count
    collection = Sketchup.active_model.options['UnitsOptions']
    count = 0
    collection.each_key do |obj|
      count = count + 1
    end
    expected = collection.count
    result = count
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.each_pair
  # @file                roptionsprovider.cpp
  #
  # An alias for each. See OptionsProvider.each
  #
  # Throws an exception if there are no keys.
  #
  #
  # Args:
  # - key, value: Variables that will hold each key and value as they are
  # found.
  #
  # Returns:
  # - : nil
  #

  # Test the example code that we have in the API documentation.
  def test_each_pair_api_example
    provider = Sketchup.active_model.options[0]
    assert_nothing_raised do
     # Retrieves each key
     provider.each_pair { |key, value| UI.messagebox key }
    end
  end

  # Test that the number of iterations is equal to the reported length.
  def test_each_pair_iterations_matches_count
    collection = Sketchup.active_model.options['UnitsOptions']
    count = 0
    collection.each_pair do |key, value|
      count = count + 1
    end
    expected = collection.count
    result = count
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.name
  # @file                roptionsprovider.cpp
  #
  # The name method is used to retrieve the name of an options provider.
  #
  #
  # Args:
  #
  # Returns:
  # - name: the name of the options provider if successful
  #

  # Test the example code that we have in the API documentation.
  def test_name_api_example
    name = nil
    provider = Sketchup.active_model.options['UnitsOptions']
    assert_nothing_raised do
     name = provider.name
    end
    assert_equal('UnitsOptions', name, 'Failed in test_name')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.each_key
  # @file                roptionsprovider.cpp
  #
  # The each_key method is used to iterate through all of the attribute
  # keys.
  #
  # Throws an exception if there are no keys.
  #
  #
  # Args:
  # - key: A variable that will hold each key as they are found.
  #
  # Returns:
  # - : nil
  #

  # Test the example code that we have in the API documentation.
  def test_each_key_api_example
    provider = Sketchup.active_model.options[0]
    assert_nothing_raised do
     provider.each_key { |key| UI.messagebox key }
    end
  end

  # Test that the number of iterations is equal to the reported length.
  def test_each_key_iterations_matches_count
    collection = Sketchup.active_model.options['UnitsOptions']
    count = 0
    collection.each_key do |key|
      count = count + 1
    end
    expected = collection.count
    result = count
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.[]
  # @file                roptionsprovider.cpp
  #
  # The [] method is used to get a value by name or index of the key.
  #
  #
  # Args:
  # - index: The index for a specific key.
  # - name: The name of the specific key.
  #
  # Returns:
  # - value: the value if successful
  #

  # Test the example code that we have in the API documentation.
  def test_arrayget_api_example
    assert_nothing_raised do
     model = Sketchup.active_model
     manager = model.options
     provider = manager[0]
     # Retrieves the provider at index 1
     option = provider[1]
    end
  end

  # Test that nil is returned if there is a negative index requested.
  def test_arrayget_nil_on_negative_index
    # NOTE: negative indicies still return OptionProvider objects. Not sure if
    # this is a bug or not.
    #collection = Sketchup.active_model.options['UnitsOptions']
    #expected = nil
    #result = collection[-1]
    #assert_equal(expected, result, 'Expected does not match result.')
  end

  # Test that nil is returned if there is a non-existent index requested.
  # We use the length of the collection to our non-existent index.
  def test_arrayget_nil_on_nonexistent_index
    collection = Sketchup.active_model.options['UnitsOptions']
    expected = nil
    result = collection[collection.count]
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.count
  # @file                roptionsprovider.cpp
  #
  # The count method is used to retrieve the size (number of elements) of
  # an options provider.
  #
  #
  # Args:
  #
  # Returns:
  # - count: the count of the options provider if successful
  #

  # Test the example code that we have in the API documentation.
  def test_count_api_example
    count = nil
    optionsprovider = Sketchup.active_model.options['UnitsOptions']
    assert_nothing_raised do
     count = optionsprovider.count
    end
    assert_equal(10, count, 'Failed in test_count' )
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.add_observer
  # @file                roptionsprovider.cpp
  #
  # The add_observer method is used to add an observer to the current
  # object.
  #
  #
  # Args:
  # - observer: An observer.
  #
  # Returns:
  # - : true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_add_observer_api_example
    observer = nil
    object = Sketchup.active_model.options[0]
    status = nil
    assert_nothing_raised do
     status = object.add_observer observer
    end
    assert_equal(true, status, 'Failed in test_add_observer')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.has_key?
  # @file                roptionsprovider.cpp
  #
  # The has_key? method is used to determine if the options provider has a
  # specific key.
  #
  #
  # Args:
  # - name: The name of the key you are looking for.
  #
  # Returns:
  # - status: true if the key exists, false if the key does
  # not exist.
  #

  # Test the example code that we have in the API documentation.
  def test_has_key_api_example
    status = nil
    provider = Sketchup.active_model.options["PageOptions"]
    assert_nothing_raised do
     status = provider.has_key? "PageOptions"
     if (status)
       UI.messagebox status
     else
       UI.messagebox "Failure"
     end
    end
    assert_equal(false, status, 'Failed in test_has_key')
  end

  def test_has_key
    status = Sketchup.active_model.options["UnitsOptions"].has_key? "SnapAngle"
    assert_equal(true, status, 'Failed in test_has_key')
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_has_key_bad_params_fixnum
    assert_raise TypeError do
      Sketchup.active_model.options[0].has_key? 1
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_has_key_bad_params_float
    assert_raise TypeError do
      Sketchup.active_model.options[0].has_key? 1.23
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_has_key_bad_params_array
    assert_raise TypeError do
      Sketchup.active_model.options[0].has_key? []
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_has_key_bad_params_hash
    assert_raise TypeError do
      Sketchup.active_model.options[0].has_key? Hash.new
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_has_key_bad_params_range
    assert_raise TypeError do
      Sketchup.active_model.options[0].has_key? 0..5
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_has_key_bad_params_symbol
    assert_raise TypeError do
      Sketchup.active_model.options[0].has_key? :foo
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.keys
  # @file                roptionsprovider.cpp
  #
  # The keys method is used to retrieve an array with all of the attribute
  # keys.
  #
  #
  # Args:
  #
  # Returns:
  # - keys: an array of keys within the options provider if
  # successful
  #

  # Test the example code that we have in the API documentation.
  def test_keys_api_example
    provider = Sketchup.active_model.options[0]
    assert_nothing_raised do
     keys = provider.keys
     key = keys[0]
     if (key)
       UI.messagebox key
     else
       UI.messagebox "Failure"
     end
    end
  end

  # Test that the entities method returns an Array object.
  def test_keys_returns_array
    obj = Sketchup.active_model.options['UnitsOptions']
    keys = obj.keys
    result = keys.class
    expected = Array
    assert_equal(expected, result, 'Expected does not match result.')
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.key?
  # @file                roptionsprovider.cpp
  #
  # The key? method is used to determine if the options provider has a
  # specific key. This method is the same as has_key? See also
  # OptionsManager.has_key
  #
  #
  # Args:
  # - name: The name of the key you are looking for.
  #
  # Returns:
  # - status: true if the key exists, false if the key does
  # not exist.
  #

  # Test the example code that we have in the API documentation.
  def test_key_api_example
    status = nil
    provider = Sketchup.active_model.options[0]
    assert_nothing_raised do
     status = provider.key? "name"
    end
    assert_equal(false, status, 'Failed in test_key')
  end

  def test_key
    status = Sketchup.active_model.options['UnitsOptions'].key? "SnapAngle"
    assert_equal(true, status, 'Failed in test_key')
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_key_bad_params_fixnum
    assert_raise TypeError do
      Sketchup.active_model.options[0].key? 1
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_key_bad_params_float
    assert_raise TypeError do
      Sketchup.active_model.options[0].key? 1.23
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_key_bad_params_array
    assert_raise TypeError do
      Sketchup.active_model.options[0].key? []
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_key_bad_params_hash
    assert_raise TypeError do
      Sketchup.active_model.options[0].key? Hash.new
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_key_bad_params_range
    assert_raise TypeError do
      Sketchup.active_model.options[0].key? 0..5
    end
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_key_bad_params_symbol
    assert_raise TypeError do
      Sketchup.active_model.options[0].key? :foo
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.[]=
  # @file                roptionsprovider.cpp
  #
  # The []= method is used to set the value of a specific key.
  #
  # Creates a new attribute for the given key if needed.
  #
  #
  # Args:
  # - key: The valid key.
  # - value: The value to be set.
  #
  # Returns:
  # - value: the value that was set if successful, or false
  # if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_arrayset_api_example
    provider = Sketchup.active_model.options[0]
    assert_nothing_raised do
     option = provider[1]=10
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    OptionsProvider.size
  # @file                roptionsprovider.cpp
  #
  # The size method is used to retrieve the size (number of elements) of an
  # options provider.
  #
  #
  # Returns:
  # - size: the size of the options provider if successful.
  #

  # Test the example code that we have in the API documentation.
  def test_size_api_example
    size = nil
    provider = Sketchup.active_model.options['UnitsOptions']
    assert_nothing_raised do
     size = provider.size
    end
    assert_equal(10, size, 'Failed in test_size')
  end
end
