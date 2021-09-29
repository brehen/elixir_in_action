defmodule TodoListTest do
  use ExUnit.Case
  @test_date1 ~D[2021-01-18]
  @test_date2 ~D[2011-09-30]
  @test_date3 ~D[2090-05-10]
  @test_date4 ~D[2010-04-15]

  @test_title1 "Go to bed"
  @test_title2 "Make bed"
  @test_title3 "Pet Gatsby"
  @test_title4 "Feed Linux"
  @test_title5 "Eat a hot dog"

  def fill_a_list do
    todo_list =
      TodoList.new()
      |> TodoList.add_entry(%{ date: @test_date1, title:  @test_title1})
      |> TodoList.add_entry(%{ date: @test_date1, title:  @test_title2})
      |> TodoList.add_entry(%{ date: @test_date3, title:  @test_title3})
      |> TodoList.add_entry(%{ date: @test_date4, title:  @test_title4})
  end

  test "creates new empty todolist" do
    assert TodoList.new() == %{}
  end

  test "Creates todolist, adds an entry that is in the list" do
    todo_list = fill_a_list()
    assert todo_list == %{@test_date1 => [@test_title5, @test_title1], @test_date3 => [@test_title3], @test_date4 =>[@test_title4]}
  end

end
