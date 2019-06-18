require './test/test_helper'

class JungleBeatTest < MiniTest::Test
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
