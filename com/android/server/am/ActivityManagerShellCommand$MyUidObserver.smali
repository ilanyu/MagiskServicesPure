.class final Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Lcom/android/server/am/ActivityManagerService$OomAdjObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyUidObserver"
.end annotation


# static fields
.field static final STATE_NORMAL:I


# instance fields
.field final mInput:Ljava/io/InputStream;

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field final mPw:Ljava/io/PrintWriter;

.field mState:I

.field final mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "uid"    # I

    .line 1379
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 1380
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    .line 1381
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1382
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 1383
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    .line 1384
    iput p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 1385
    return-void
.end method


# virtual methods
.method public onOomAdjMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 1470
    monitor-enter p0

    .line 1471
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    .line 1473
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 1477
    :try_start_16
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1478
    nop

    .line 1479
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1480
    return-void

    .line 1477
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 1479
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onUidActive(I)V
    .registers 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1424
    monitor-enter p0

    .line 1425
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    .line 1427
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1428
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " active"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 1431
    :try_start_16
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1432
    nop

    .line 1433
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1434
    return-void

    .line 1431
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 1433
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onUidCachedChanged(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1456
    monitor-enter p0

    .line 1457
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    .line 1459
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1460
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    if-eqz p2, :cond_11

    const-string v2, " cached"

    goto :goto_13

    :cond_11
    const-string v2, " uncached"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 1463
    :try_start_1b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1464
    nop

    .line 1465
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1466
    return-void

    .line 1463
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_21
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 1465
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onUidGone(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1406
    monitor-enter p0

    .line 1407
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    .line 1409
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1410
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " gone"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1411
    if-eqz p2, :cond_1a

    .line 1412
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1415
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 1417
    :try_start_24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1418
    nop

    .line 1419
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1420
    return-void

    .line 1417
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2a
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 1419
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public onUidIdle(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1438
    monitor-enter p0

    .line 1439
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    .line 1441
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1442
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " idle"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1443
    if-eqz p2, :cond_1a

    .line 1444
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1447
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 1449
    :try_start_24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1450
    nop

    .line 1451
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1452
    return-void

    .line 1449
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2a
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 1451
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public onUidStateChanged(IIJ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    monitor-enter p0

    .line 1390
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    .line 1392
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1393
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " procstate "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1394
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1395
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " seq "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1396
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p3, p4}, Ljava/io/PrintWriter;->println(J)V

    .line 1397
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 1399
    :try_start_2b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1400
    nop

    .line 1401
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1402
    return-void

    .line 1399
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_31
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 1401
    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_36

    throw v0
.end method

.method printMessageForState()V
    .registers 3

    .line 1483
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    if-eqz v0, :cond_5

    goto :goto_c

    .line 1485
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Watching uid states...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    :goto_c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish watching"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    return-void
.end method

.method run()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1494
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1496
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    const/16 v1, 0x1f

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1500
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_1c

    .line 1501
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService;->setOomAdjObserver(ILcom/android/server/am/ActivityManagerService$OomAdjObserver;)V

    .line 1503
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    .line 1505
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1506
    .local v0, "converter":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1509
    .local v1, "in":Ljava/io/BufferedReader;
    :goto_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1509
    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_7d

    .line 1510
    const/4 v2, 0x1

    .line 1511
    .local v2, "addNewline":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3b

    .line 1512
    const/4 v2, 0x0

    goto :goto_64

    .line 1513
    :cond_3b
    const-string/jumbo v4, "q"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1514
    goto :goto_7d

    .line 1516
    :cond_4e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    :goto_64
    monitor-enter p0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_65} :catch_84
    .catchall {:try_start_0 .. :try_end_65} :catchall_82

    .line 1520
    if-eqz v2, :cond_71

    .line 1521
    :try_start_67
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    .line 1525
    :catchall_6f
    move-exception v4

    goto :goto_7b

    .line 1523
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1524
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1525
    monitor-exit p0

    .line 1526
    .end local v2    # "addNewline":Z
    goto :goto_2b

    .line 1525
    .restart local v2    # "addNewline":Z
    :goto_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_6f

    :try_start_7c
    throw v4
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7d} :catch_84
    .catchall {:try_start_7c .. :try_end_7d} :catchall_82

    .line 1532
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "addNewline":Z
    .end local v3    # "line":Ljava/lang/String;
    :cond_7d
    :goto_7d
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_98

    goto :goto_93

    :catchall_82
    move-exception v0

    goto :goto_9f

    .line 1528
    :catch_84
    move-exception v0

    .line 1529
    .local v0, "e":Ljava/io/IOException;
    :try_start_85
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1530
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_82

    .line 1532
    .end local v0    # "e":Ljava/io/IOException;
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_98

    .line 1533
    :goto_93
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1535
    :cond_98
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1536
    nop

    .line 1537
    return-void

    .line 1532
    :goto_9f
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v1, :cond_a8

    .line 1533
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1535
    :cond_a8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    throw v0
.end method
