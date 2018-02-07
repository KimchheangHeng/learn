viewdidappear和viewdidload不在同一个runloop
所以可以在viewdidappear里做耗时的事情

> 2018-02-07 17:02:04.769561+0800 TestVCLifeCircleAndRunLoop[36305:3135742] in presenting currentRunLoop 18 in loadView  
2018-02-07 17:02:04.769872+0800 TestVCLifeCircleAndRunLoop[36305:3135742] in presenting currentRunLoop 18 in viewDidLoad  
2018-02-07 17:02:04.772444+0800 TestVCLifeCircleAndRunLoop[36305:3135742] in presenting currentRunLoop 18 in viewWillAppear:  
2018-02-07 17:02:05.274978+0800 TestVCLifeCircleAndRunLoop[36305:3135742] in presenting currentRunLoop 26 in viewDidAppear:  

