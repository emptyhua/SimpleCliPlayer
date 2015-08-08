//
//  main.swift
//  SimpleCliPlayer
//
//  Created by emptyhua on 15/8/8.
//  Copyright (c) 2015年 emptyhua. All rights reserved.
//

import Foundation
import Darwin


if Process.argc < 2 {
    fputs("Useage: SimpleCliPlayer <Music Path>\n", stderr)
    exit(1)
}

let player: CliPlayer = CliPlayer()
player.play(Process.arguments[1])
while !player.finished {
    NSRunLoop.currentRunLoop().runMode(NSDefaultRunLoopMode, beforeDate: NSDate.distantFuture() as! NSDate)
}

