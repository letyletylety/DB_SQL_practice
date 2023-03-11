package leetcode

type ListNode struct {
	Val  int
	Next *ListNode
}

// type ListNode struct {
// 	Val  int
// 	Next *ListNode
// }

func detectCycle(head *ListNode) *ListNode {
	slow := head
	fast := head

	for fast.Next != nil && fast != nil {
		slow, fast = slow.Next, fast.Next.Next

		if slow == fast {
			break
		}
	}

	if fast == nil || fast.Next == nil {
		return nil
	}

	for head != slow {
		head = head.Next
		slow = slow.Next
	}
	return head
}
