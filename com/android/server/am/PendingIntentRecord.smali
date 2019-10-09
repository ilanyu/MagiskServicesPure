.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .line 191
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 192
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 193
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 194
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 196
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .registers 5

    .line 429
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 430
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 431
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 432
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_1f

    .line 433
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 436
    return-void

    .line 435
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 233
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 234
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 439
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 440
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_5f

    .line 444
    :cond_44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 445
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 448
    :cond_6b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    :cond_87
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_a3

    .line 452
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    :cond_a3
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_ab

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_c3

    .line 456
    :cond_ab
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 459
    :cond_c3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_10b

    .line 460
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    move v0, v1

    .line 462
    .local v0, "i":I
    :goto_d1
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_108

    .line 463
    if-eqz v0, :cond_e0

    .line 464
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    :cond_e0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 470
    .end local v0    # "i":I
    :cond_108
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 472
    :cond_10b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_13e

    .line 473
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    nop

    .line 474
    .local v1, "i":I
    :goto_119
    move v0, v1

    .line 474
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_13e

    .line 475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 474
    add-int/lit8 v1, v0, 0x1

    .line 474
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_119

    .line 479
    .end local v1    # "i":I
    :cond_13e
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_15

    .line 420
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1a

    .line 424
    :cond_15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 425
    nop

    .line 426
    return-void

    .line 424
    :catchall_1a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 215
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 216
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 218
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 219
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 239
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 241
    return-void
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 62
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "flagsMask"    # I
    .param p11, "flagsValues"    # I
    .param p12, "options"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 253
    move-object/from16 v15, p12

    const/4 v0, 0x1

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 254
    :cond_c
    if-eqz v15, :cond_11

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 256
    :cond_11
    iget-object v14, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 257
    iget-boolean v3, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v3, :cond_30f

    .line 258
    iput-boolean v0, v1, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 259
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_31c

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_37

    .line 260
    :try_start_26
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2c

    goto :goto_37

    .line 412
    :catchall_2c
    move-exception v0

    move-object/from16 v34, p3

    move/from16 v35, p10

    move/from16 v36, p11

    .line 412
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .local v34, "resolvedType":Ljava/lang/String;
    .local v35, "flagsMask":I
    .local v36, "flagsValues":I
    :goto_33
    move-object/from16 v18, v14

    goto/16 :goto_327

    .line 263
    .end local v34    # "resolvedType":Ljava/lang/String;
    .end local v35    # "flagsMask":I
    .end local v36    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :cond_37
    :goto_37
    :try_start_37
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_31c

    if-eqz v3, :cond_47

    .line 264
    :try_start_3d
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_2c

    goto :goto_4c

    :cond_47
    :try_start_47
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :goto_4c
    move-object v12, v3

    .line 266
    .local v12, "finalIntent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_31c

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    const/4 v4, 0x0

    if-eqz v3, :cond_59

    move v3, v0

    goto :goto_5a

    :cond_59
    move v3, v4

    :goto_5a
    move/from16 v33, v3

    .line 267
    .local v33, "immutable":Z
    if-nez v33, :cond_a2

    .line 268
    if-eqz v2, :cond_75

    .line 269
    :try_start_60
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v3

    .line 270
    .local v3, "changes":I
    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_72

    .line 271
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_2c

    move-object v3, v5

    .line 271
    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v3, "resolvedType":Ljava/lang/String;
    goto :goto_74

    .line 273
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_72
    move-object/from16 v3, p3

    .line 273
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :goto_74
    goto :goto_79

    .line 274
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_75
    :try_start_75
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_98

    .line 276
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :goto_79
    move/from16 v5, p10

    and-int/lit16 v5, v5, -0xc4

    .line 277
    .end local p10    # "flagsMask":I
    .local v5, "flagsMask":I
    and-int v6, p11, v5

    .line 278
    .end local p11    # "flagsValues":I
    .local v6, "flagsValues":I
    :try_start_7f
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v7

    not-int v8, v5

    and-int/2addr v7, v8

    or-int/2addr v7, v6

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_90

    .line 283
    move-object/from16 v34, v3

    move/from16 v35, v5

    move/from16 v36, v6

    goto :goto_ae

    .line 412
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v33    # "immutable":Z
    :catchall_90
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v35, v5

    move/from16 v36, v6

    goto :goto_33

    .line 412
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v5    # "flagsMask":I
    .end local v6    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_98
    move-exception v0

    move/from16 v5, p10

    move-object/from16 v34, p3

    move/from16 v36, p11

    move/from16 v35, v5

    goto :goto_33

    .line 280
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v33    # "immutable":Z
    :cond_a2
    move/from16 v5, p10

    :try_start_a4
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_30d

    .line 283
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    move/from16 v36, p11

    move-object/from16 v34, v3

    move/from16 v35, v5

    .line 283
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v34    # "resolvedType":Ljava/lang/String;
    .restart local v35    # "flagsMask":I
    .restart local v36    # "flagsValues":I
    :goto_ae
    :try_start_ae
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move v11, v3

    .line 284
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v38

    .line 287
    .local v38, "callingPid":I
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-static {v3, v12}, Lcom/android/server/am/PendingIntentRecordInjector;->preSendInner(Lcom/android/server/am/PendingIntentRecord$Key;Landroid/content/Intent;)V

    .line 290
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/am/SafeActivityOptions;

    .line 291
    .local v3, "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    if-nez v3, :cond_ca

    .line 292
    invoke-static/range {p12 .. p12}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v5

    move-object v3, v5

    .line 297
    .end local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .local v44, "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :goto_c7
    move-object/from16 v44, v3

    goto :goto_d2

    .line 294
    .end local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :cond_ca
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V

    goto :goto_c7

    .line 297
    .end local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :goto_d2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v9, v5

    .line 299
    .local v9, "origId":J
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_d9
    .catchall {:try_start_ae .. :try_end_d9} :catchall_30a

    if-eqz v3, :cond_16b

    .line 300
    :try_start_db
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_dd
    .catchall {:try_start_db .. :try_end_dd} :catchall_166

    move-object/from16 v8, p4

    :try_start_df
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 301
    .local v3, "duration":Ljava/lang/Long;
    if-eqz v3, :cond_16d

    .line 302
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v5

    .line 303
    .local v5, "procState":I
    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v6

    if-nez v6, :cond_147

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    .local v6, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "pendingintent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {v6, v11}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 307
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_116

    .line 309
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_131

    .line 310
    :cond_116
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_124

    .line 311
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_131

    .line 312
    :cond_124
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_131

    .line 313
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    :cond_131
    :goto_131
    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v13, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 316
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 315
    move-object/from16 v37, v7

    move/from16 v39, v11

    move/from16 v40, v13

    invoke-virtual/range {v37 .. v43}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    .line 317
    .end local v6    # "tag":Ljava/lang/StringBuilder;
    goto :goto_16d

    .line 318
    :cond_147
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not doing whitelist "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": caller state="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "duration":Ljava/lang/Long;
    .end local v5    # "procState":I
    goto :goto_16d

    .line 412
    .end local v9    # "origId":J
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v33    # "immutable":Z
    .end local v38    # "callingPid":I
    .end local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :catchall_166
    move-exception v0

    move-object/from16 v8, p4

    goto/16 :goto_33

    .line 324
    .restart local v9    # "origId":J
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v33    # "immutable":Z
    .restart local v38    # "callingPid":I
    .restart local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :cond_16b
    move-object/from16 v8, p4

    :cond_16d
    :goto_16d
    if-eqz p5, :cond_171

    move v3, v0

    goto :goto_172

    :cond_171
    move v3, v4

    :goto_172
    move/from16 v37, v3

    .line 325
    .local v37, "sendFinish":Z
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 326
    .local v3, "userId":I
    const/4 v5, -0x2

    if-ne v3, v5, :cond_184

    .line 327
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v5

    move v3, v5

    .line 329
    .end local v3    # "userId":I
    .local v39, "userId":I
    :cond_184
    move/from16 v39, v3

    const/16 v40, 0x0

    .line 330
    .local v40, "res":I
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_18c
    .catchall {:try_start_df .. :try_end_18c} :catchall_30a

    packed-switch v3, :pswitch_data_330

    .line 400
    move-wide/from16 v45, v9

    move/from16 v17, v11

    move-object/from16 v47, v12

    move-object/from16 v18, v14

    .line 400
    .end local v9    # "origId":J
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v17, "callingUid":I
    .local v45, "origId":J
    .local v47, "finalIntent":Landroid/content/Intent;
    goto/16 :goto_2da

    .line 389
    .end local v17    # "callingUid":I
    .end local v45    # "origId":J
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :pswitch_199
    :try_start_199
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v5, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1a5

    goto :goto_1a6

    :cond_1a5
    move v0, v4

    :goto_1a6
    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v13, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_1aa
    .catch Ljava/lang/RuntimeException; {:try_start_199 .. :try_end_1aa} :catch_1c9
    .catch Landroid/os/TransactionTooLargeException; {:try_start_199 .. :try_end_1aa} :catch_1bc
    .catchall {:try_start_199 .. :try_end_1aa} :catchall_30a

    move-object v4, v3

    move-object v6, v12

    move-object/from16 v7, v34

    move v8, v0

    move-wide/from16 v45, v9

    move-object v9, v13

    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    move/from16 v10, v39

    :try_start_1b4
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;
    :try_end_1b7
    .catch Ljava/lang/RuntimeException; {:try_start_1b4 .. :try_end_1b7} :catch_1ba
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1b4 .. :try_end_1b7} :catch_1b8
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_30a

    goto :goto_1d3

    .line 394
    :catch_1b8
    move-exception v0

    goto :goto_1bf

    .line 392
    :catch_1ba
    move-exception v0

    goto :goto_1cc

    .line 394
    .end local v45    # "origId":J
    .restart local v9    # "origId":J
    :catch_1bc
    move-exception v0

    move-wide/from16 v45, v9

    .line 395
    .end local v9    # "origId":J
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    .restart local v45    # "origId":J
    :goto_1bf
    const/16 v40, -0x60

    .line 400
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v40    # "res":I
    .local v11, "res":I
    .restart local v17    # "callingUid":I
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :cond_1c1
    :goto_1c1
    move/from16 v17, v11

    move-object/from16 v47, v12

    move-object/from16 v18, v14

    goto/16 :goto_2da

    .line 392
    .end local v17    # "callingUid":I
    .end local v45    # "origId":J
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .local v11, "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v40    # "res":I
    :catch_1c9
    move-exception v0

    move-wide/from16 v45, v9

    .line 393
    .end local v9    # "origId":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v45    # "origId":J
    :goto_1cc
    :try_start_1cc
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startService intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "callingUid":I
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :goto_1d3
    goto :goto_1c1

    .line 365
    .end local v17    # "callingUid":I
    .end local v45    # "origId":J
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :pswitch_1d4
    move-wide/from16 v45, v9

    .line 365
    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 366
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1c1

    .line 367
    const/4 v5, -0x1

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v3, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v3, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object v4, v0

    move/from16 v9, p1

    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_1f4
    .catchall {:try_start_1cc .. :try_end_1f4} :catchall_30a

    goto :goto_1c1

    .line 337
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v45    # "origId":J
    .restart local v9    # "origId":J
    :pswitch_1f5
    move-wide/from16 v45, v9

    .line 337
    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    :try_start_1f7
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_259

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    if-le v3, v0, :cond_259

    .line 338
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    new-array v3, v3, [Landroid/content/Intent;

    .line 339
    .local v3, "allIntents":[Landroid/content/Intent;
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    .line 340
    .local v5, "allResolvedTypes":[Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v7, v7

    invoke-static {v6, v4, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v6, :cond_230

    .line 343
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v6, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    :cond_230
    array-length v4, v3

    sub-int/2addr v4, v0

    aput-object v12, v3, v4

    .line 347
    array-length v4, v5

    sub-int/2addr v4, v0

    aput-object v34, v5, v4

    .line 349
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v17

    iget v0, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v25, 0x0

    move/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, p7

    move-object/from16 v23, v44

    move/from16 v24, v39

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I

    move-result v0

    .line 353
    .end local v3    # "allIntents":[Landroid/content/Intent;
    .end local v5    # "allResolvedTypes":[Ljava/lang/String;
    .end local v40    # "res":I
    .local v0, "res":I
    goto :goto_287

    .line 354
    .end local v0    # "res":I
    .restart local v40    # "res":I
    :cond_259
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v17

    iget v0, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v30, 0x0

    const-string v31, "PendingIntentRecord"

    const/16 v32, 0x0

    move/from16 v18, v0

    move/from16 v19, v38

    move/from16 v20, v11

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object/from16 v23, v34

    move-object/from16 v24, p7

    move-object/from16 v25, p8

    move/from16 v26, p9

    move-object/from16 v28, v44

    move/from16 v29, v39

    invoke-virtual/range {v17 .. v32}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_287
    .catch Ljava/lang/RuntimeException; {:try_start_1f7 .. :try_end_287} :catch_28b
    .catchall {:try_start_1f7 .. :try_end_287} :catchall_30a

    .line 362
    :goto_287
    move/from16 v40, v0

    goto/16 :goto_1c1

    .line 360
    :catch_28b
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_28c
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_293
    .catchall {:try_start_28c .. :try_end_293} :catchall_30a

    .line 363
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_1c1

    .line 375
    .end local v45    # "origId":J
    .restart local v9    # "origId":J
    :pswitch_295
    move-wide/from16 v45, v9

    .line 375
    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    :try_start_297
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_29f
    .catch Ljava/lang/RuntimeException; {:try_start_297 .. :try_end_29f} :catch_2cb
    .catchall {:try_start_297 .. :try_end_29f} :catchall_30a

    const/4 v10, 0x0

    const/4 v13, 0x0

    if-eqz p5, :cond_2a4

    goto :goto_2a5

    :cond_2a4
    move v0, v4

    :goto_2a5
    const/16 v16, 0x0

    move-object v4, v5

    move v5, v6

    move-object v6, v12

    move-object/from16 v7, v34

    move-object/from16 v8, p5

    move/from16 v9, p1

    move/from16 v17, v11

    move-object v11, v13

    .end local v11    # "callingUid":I
    .restart local v17    # "callingUid":I
    move-object v13, v12

    move-object/from16 v12, p6

    .line 375
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v13, "finalIntent":Landroid/content/Intent;
    move-object/from16 v47, v13

    move-object v13, v15

    .line 375
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v18, v14

    move v14, v0

    move/from16 v15, v16

    move/from16 v16, v39

    :try_start_2c0
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    move-result v0
    :try_end_2c4
    .catch Ljava/lang/RuntimeException; {:try_start_2c0 .. :try_end_2c4} :catch_2c9
    .catchall {:try_start_2c0 .. :try_end_2c4} :catchall_32c

    .line 379
    .local v0, "sent":I
    if-nez v0, :cond_2c8

    .line 380
    const/16 v37, 0x0

    .line 384
    .end local v0    # "sent":I
    :cond_2c8
    goto :goto_2da

    .line 382
    :catch_2c9
    move-exception v0

    goto :goto_2d2

    .line 382
    .end local v17    # "callingUid":I
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :catch_2cb
    move-exception v0

    move/from16 v17, v11

    move-object/from16 v47, v12

    move-object/from16 v18, v14

    .line 383
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v17    # "callingUid":I
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :goto_2d2
    :try_start_2d2
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d9
    .catchall {:try_start_2d2 .. :try_end_2d9} :catchall_32c

    .line 385
    .end local v0    # "e":Ljava/lang/RuntimeException;
    nop

    .line 400
    .end local v40    # "res":I
    .local v11, "res":I
    :goto_2da
    move/from16 v11, v40

    if-eqz v37, :cond_2fe

    const/16 v3, -0x60

    if-eq v11, v3, :cond_2fe

    .line 402
    :try_start_2e2
    new-instance v4, Landroid/content/Intent;
    :try_end_2e4
    .catch Landroid/os/RemoteException; {:try_start_2e2 .. :try_end_2e4} :catch_2fa
    .catchall {:try_start_2e2 .. :try_end_2e4} :catchall_32c

    move-object/from16 v12, v47

    :try_start_2e6
    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 402
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v3, p5

    invoke-interface/range {v3 .. v10}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_2f7
    .catch Landroid/os/RemoteException; {:try_start_2e6 .. :try_end_2f7} :catch_2f8
    .catchall {:try_start_2e6 .. :try_end_2f7} :catchall_32c

    .line 405
    goto :goto_300

    .line 404
    :catch_2f8
    move-exception v0

    goto :goto_2fd

    .line 404
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :catch_2fa
    move-exception v0

    move-object/from16 v12, v47

    .line 404
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :goto_2fd
    goto :goto_300

    .line 408
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :cond_2fe
    move-object/from16 v12, v47

    .line 408
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :goto_300
    move-wide/from16 v3, v45

    :try_start_302
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    .end local v45    # "origId":J
    .local v3, "origId":J
    monitor-exit v18
    :try_end_306
    .catchall {:try_start_302 .. :try_end_306} :catchall_32c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v11

    .line 412
    .end local v3    # "origId":J
    .end local v11    # "res":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "callingUid":I
    .end local v33    # "immutable":Z
    .end local v37    # "sendFinish":Z
    .end local v38    # "callingPid":I
    .end local v39    # "userId":I
    .end local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :catchall_30a
    move-exception v0

    goto/16 :goto_33

    .line 412
    .end local v34    # "resolvedType":Ljava/lang/String;
    .end local v35    # "flagsMask":I
    .end local v36    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_30d
    move-exception v0

    goto :goto_31f

    :cond_30f
    move/from16 v5, p10

    move-object/from16 v18, v14

    const/16 v3, -0x60

    :try_start_315
    monitor-exit v18
    :try_end_316
    .catchall {:try_start_315 .. :try_end_316} :catchall_31a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 413
    return v3

    .line 412
    :catchall_31a
    move-exception v0

    goto :goto_321

    :catchall_31c
    move-exception v0

    move/from16 v5, p10

    .line 412
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v34    # "resolvedType":Ljava/lang/String;
    .restart local v35    # "flagsMask":I
    .restart local v36    # "flagsValues":I
    :goto_31f
    move-object/from16 v18, v14

    :goto_321
    move-object/from16 v34, p3

    move/from16 v36, p11

    move/from16 v35, v5

    :goto_327
    :try_start_327
    monitor-exit v18
    :try_end_328
    .catchall {:try_start_327 .. :try_end_328} :catchall_32c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_32c
    move-exception v0

    goto :goto_327

    nop

    nop

    :pswitch_data_330
    .packed-switch 0x1
        :pswitch_295
        :pswitch_1f5
        :pswitch_1d4
        :pswitch_199
        :pswitch_199
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 21
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 245
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .registers 7
    .param p1, "whitelistToken"    # Landroid/os/IBinder;
    .param p2, "duration"    # J

    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    .line 200
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 201
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 203
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 204
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2f

    .line 205
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2f

    .line 207
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 211
    :cond_2f
    :goto_2f
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 483
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0

    .line 485
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_7c

    .line 493
    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_77

    .line 495
    if-eqz v1, :cond_4f

    .line 496
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_4f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 502
    .end local v1    # "i":I
    :cond_77
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_7c
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 222
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    .line 223
    return-void

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 226
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_15

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 229
    :cond_15
    return-void
.end method
