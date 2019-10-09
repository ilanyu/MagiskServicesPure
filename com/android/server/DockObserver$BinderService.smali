.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DockObserver;
    .param p2, "x1"    # Lcom/android/server/DockObserver$1;

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DockObserver"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 258
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 260
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_11e

    .line 261
    if-eqz p3, :cond_b6

    :try_start_1c
    array-length v3, p3

    if-eqz v3, :cond_b6

    const-string v3, "-a"

    const/4 v4, 0x0

    aget-object v5, p3, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto/16 :goto_b6

    .line 269
    :cond_2c
    array-length v3, p3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v3, v5, :cond_85

    const-string/jumbo v3, "set"

    aget-object v5, p3, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 270
    aget-object v3, p3, v6

    .line 271
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p3, v4
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_b4

    .line 273
    .local v4, "value":Ljava/lang/String;
    :try_start_41
    const-string/jumbo v5, "state"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 274
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # setter for: Lcom/android/server/DockObserver;->mUpdatesStopped:Z
    invoke-static {v5, v6}, Lcom/android/server/DockObserver;->access$502(Lcom/android/server/DockObserver;Z)Z

    .line 275
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    # invokes: Lcom/android/server/DockObserver;->setDockStateLocked(I)V
    invoke-static {v5, v6}, Lcom/android/server/DockObserver;->access$900(Lcom/android/server/DockObserver;I)V

    goto :goto_6d

    .line 277
    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown set option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_6d} :catch_6e
    .catchall {:try_start_41 .. :try_end_6d} :catchall_b4

    .line 281
    :goto_6d
    goto :goto_83

    .line 279
    :catch_6e
    move-exception v5

    .line 280
    .local v5, "ex":Ljava/lang/NumberFormatException;
    :try_start_6f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :goto_83
    goto/16 :goto_116

    :cond_85
    array-length v3, p3

    if-ne v3, v6, :cond_a4

    const-string/jumbo v3, "reset"

    aget-object v5, p3, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 283
    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # setter for: Lcom/android/server/DockObserver;->mUpdatesStopped:Z
    invoke-static {v3, v4}, Lcom/android/server/DockObserver;->access$502(Lcom/android/server/DockObserver;Z)Z

    .line 284
    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mActualDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$800(Lcom/android/server/DockObserver;)I

    move-result v4

    # invokes: Lcom/android/server/DockObserver;->setDockStateLocked(I)V
    invoke-static {v3, v4}, Lcom/android/server/DockObserver;->access$900(Lcom/android/server/DockObserver;I)V

    goto :goto_116

    .line 286
    :cond_a4
    const-string v3, "Dump current dock state, or:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    const-string v3, "  set state <value>"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string v3, "  reset"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_116

    .line 290
    :catchall_b4
    move-exception v3

    goto :goto_11c

    .line 262
    :cond_b6
    :goto_b6
    const-string v3, "Current Dock Observer Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mUpdatesStopped:Z
    invoke-static {v3}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 264
    const-string v3, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    :cond_c8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  reported state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mReportedDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$600(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  previous state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mPreviousDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$700(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  actual state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mActualDockState:I
    invoke-static {v4}, Lcom/android/server/DockObserver;->access$800(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    :goto_116
    monitor-exit v2
    :try_end_117
    .catchall {:try_start_6f .. :try_end_117} :catchall_b4

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    nop

    .line 294
    return-void

    .line 290
    :goto_11c
    :try_start_11c
    monitor-exit v2
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_b4

    :try_start_11d
    throw v3
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11e

    .line 292
    :catchall_11e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
