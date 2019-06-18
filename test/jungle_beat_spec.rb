require './test/test_helper'

class JungleBeatTest < MiniTest::Test

  def setup
    @jb = JungleBeat.new
  end

  def test_jungle_beat_exists
    assert_instance_of JungleBeat, @jb
  end

  def test_jungle_beat_has_list
    assert_instance_of LinkedList, @jb.list
  end

  def test_jungle_beat_list_head_nil
    assert_nil @jb.list.head
  end

  def test_append_to_jungle_beat
    result = "deep, doo, ditt"

    @jb.append("deep, doo, ditt")

    assert_equal result, @jb.list.to_string
    assert_equal "deep", @jb.list.head.data
    assert_equal "doo", @jb.list.head.next_node.data

    @jb.append("woo, hoo, shu")

    assert_equal 6, @jb.count
  end


end

# > require "./lib/jungle_beat"
# > jb = JungleBeat.new
# => <JungleBeat list=<LinkedList head=nil #234567890890> #456789045678>
# > jb.list
# => <LinkedList head=nil #234567890890>
# > jb.list.head
# => nil
# > jb.append("deep doo ditt")
# => "deep doo ditt"
# > jb.list.head.data
# => "deep"
# > jb.list.head.next_node.data
# => "doo"
# > jb.append("woo hoo shu")
# => "woo hoo shu"
# > jb.count
# 6
