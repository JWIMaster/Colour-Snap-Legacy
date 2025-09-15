#if !swift(>=3.0)

import Foundation

// Mimic DispatchTime
struct DispatchTime {
    let secondsFromNow: NSTimeInterval
    
    // .now() reference
    static func now() -> DispatchTime {
        return DispatchTime(secondsFromNow: 0)
    }
    
    var dispatchTime: dispatch_time_t {
        return dispatch_time(DISPATCH_TIME_NOW, Int64(secondsFromNow * Double(NSEC_PER_SEC)))
    }
}

// Define + operator globally
func +(time: DispatchTime, interval: NSTimeInterval) -> DispatchTime {
    return DispatchTime(secondsFromNow: time.secondsFromNow + interval)
}

// Mimic DispatchQueue
struct DispatchQueue {
    private let queue: dispatch_queue_t
    
    static var main: DispatchQueue {
        return DispatchQueue(queue: dispatch_get_main_queue())
    }
    
    static func global(qos: dispatch_queue_priority_t = DISPATCH_QUEUE_PRIORITY_DEFAULT) -> DispatchQueue {
        return DispatchQueue(queue: dispatch_get_global_queue(qos, 0))
    }
    
    private init(queue: dispatch_queue_t) {
        self.queue = queue
    }
    
    func async(execute block: () -> Void) {
        dispatch_async(queue, block)
    }
    
    func asyncAfter(deadline deadline: DispatchTime, execute block: () -> Void) {
        dispatch_after(deadline.dispatchTime, queue, block)
    }
}



#endif
