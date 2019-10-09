.class Lcom/android/server/AppStateTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_ALL_UNWHITELISTED:I = 0x4

.field private static final MSG_ALL_WHITELIST_CHANGED:I = 0x5

.field private static final MSG_EXEMPT_CHANGED:I = 0xa

.field private static final MSG_FORCE_ALL_CHANGED:I = 0x7

.field private static final MSG_FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED:I = 0x9

.field private static final MSG_ON_UID_ACTIVE:I = 0xc

.field private static final MSG_ON_UID_GONE:I = 0xd

.field private static final MSG_ON_UID_IDLE:I = 0xe

.field private static final MSG_ON_UID_STATE_CHANGED:I = 0xb

.field private static final MSG_RUN_ANY_CHANGED:I = 0x3

.field private static final MSG_TEMP_WHITELIST_CHANGED:I = 0x6

.field private static final MSG_UID_ACTIVE_STATE_CHANGED:I = 0x0

.field private static final MSG_UID_FG_STATE_CHANGED:I = 0x1

.field private static final MSG_USER_REMOVED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTracker;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 742
    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    .line 743
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 744
    return-void
.end method

.method private removeUid(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "remove"    # Z

    .line 949
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 950
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    # invokes: Lcom/android/server/AppStateTracker;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 951
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 953
    :cond_1a
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    # invokes: Lcom/android/server/AppStateTracker;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 954
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    .line 956
    :cond_2d
    monitor-exit v0

    .line 957
    return-void

    .line 956
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public doUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 789
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 790
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 810
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17d

    .line 817
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 818
    :try_start_d
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mStarted:Z

    if-nez v2, :cond_15

    .line 819
    monitor-exit v0

    return-void

    .line 821
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17a

    .line 822
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    .line 824
    .local v0, "sender":Lcom/android/server/AppStateTracker;
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    .line 825
    .local v2, "start":J
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_186

    .line 915
    :pswitch_29
    return-void

    .line 912
    :pswitch_2a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_32

    move v5, v6

    nop

    :cond_32
    invoke-virtual {p0, v1, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidIdle(IZ)V

    .line 913
    return-void

    .line 909
    :pswitch_36
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3e

    move v5, v6

    nop

    :cond_3e
    invoke-virtual {p0, v1, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidGone(IZ)V

    .line 910
    return-void

    .line 906
    :pswitch_42
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidActive(I)V

    .line 907
    return-void

    .line 903
    :pswitch_48
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v4}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidStateChanged(II)V

    .line 904
    return-void

    .line 869
    :pswitch_50
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_57
    if-ge v5, v4, :cond_61

    aget-object v6, v1, v5

    .line 870
    .local v6, "l":Lcom/android/server/AppStateTracker$Listener;
    # invokes: Lcom/android/server/AppStateTracker$Listener;->onExemptChanged(Lcom/android/server/AppStateTracker;)V
    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1600(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 869
    .end local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 872
    :cond_61
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 873
    return-void

    .line 885
    :pswitch_6c
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 886
    :try_start_73
    iget-object v7, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v7, v7, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-nez v7, :cond_80

    iget-object v7, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v7, v7, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    if-nez v7, :cond_80

    goto :goto_81

    :cond_80
    move v6, v5

    .line 887
    .local v6, "unblockAlarms":Z
    :goto_81
    monitor-exit v4
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_a2

    .line 888
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v4

    array-length v7, v4

    :goto_89
    if-ge v5, v7, :cond_98

    aget-object v8, v4, v5

    .line 889
    .local v8, "l":Lcom/android/server/AppStateTracker$Listener;
    invoke-virtual {v8}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    .line 890
    if-eqz v6, :cond_95

    .line 891
    invoke-virtual {v8}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    .line 888
    .end local v8    # "l":Lcom/android/server/AppStateTracker$Listener;
    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    .line 894
    :cond_98
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 896
    return-void

    .line 887
    .end local v6    # "unblockAlarms":Z
    :catchall_a2
    move-exception v1

    :try_start_a3
    monitor-exit v4
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v1

    .line 899
    :pswitch_a5
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    .line 900
    return-void

    .line 876
    :pswitch_ad
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_b4
    if-ge v5, v4, :cond_be

    aget-object v6, v1, v5

    .line 877
    .local v6, "l":Lcom/android/server/AppStateTracker$Listener;
    # invokes: Lcom/android/server/AppStateTracker$Listener;->onForceAllAppsStandbyChanged(Lcom/android/server/AppStateTracker;)V
    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1700(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 876
    .end local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    .line 879
    :cond_be
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 880
    return-void

    .line 862
    :pswitch_c9
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_d0
    if-ge v5, v4, :cond_da

    aget-object v6, v1, v5

    .line 863
    .restart local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    # invokes: Lcom/android/server/AppStateTracker$Listener;->onTempPowerSaveWhitelistChanged(Lcom/android/server/AppStateTracker;)V
    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1500(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 862
    .end local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    .line 865
    :cond_da
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 866
    return-void

    .line 855
    :pswitch_e5
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_ec
    if-ge v5, v4, :cond_f6

    aget-object v6, v1, v5

    .line 856
    .restart local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    # invokes: Lcom/android/server/AppStateTracker$Listener;->onPowerSaveWhitelistedChanged(Lcom/android/server/AppStateTracker;)V
    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1400(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 855
    .end local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_ec

    .line 858
    :cond_f6
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 859
    return-void

    .line 848
    :pswitch_101
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_108
    if-ge v5, v4, :cond_112

    aget-object v6, v1, v5

    .line 849
    .restart local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    # invokes: Lcom/android/server/AppStateTracker$Listener;->onPowerSaveUnwhitelisted(Lcom/android/server/AppStateTracker;)V
    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1300(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    .line 848
    .end local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_108

    .line 851
    :cond_112
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 852
    return-void

    .line 841
    :pswitch_11d
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_124
    if-ge v5, v4, :cond_134

    aget-object v6, v1, v5

    .line 842
    .restart local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    # invokes: Lcom/android/server/AppStateTracker$Listener;->onRunAnyAppOpsChanged(Lcom/android/server/AppStateTracker;ILjava/lang/String;)V
    invoke-static {v6, v0, v7, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1200(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;ILjava/lang/String;)V

    .line 841
    .end local v6    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_124

    .line 844
    :cond_134
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 845
    return-void

    .line 834
    :pswitch_13f
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    move v6, v5

    :goto_147
    if-ge v6, v4, :cond_153

    aget-object v7, v1, v6

    .line 835
    .local v7, "l":Lcom/android/server/AppStateTracker$Listener;
    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/AppStateTracker$Listener;->onUidForegroundStateChanged(Lcom/android/server/AppStateTracker;I)V
    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1100(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    .line 834
    .end local v7    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v6, v6, 0x1

    goto :goto_147

    .line 837
    :cond_153
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 838
    return-void

    .line 827
    :pswitch_15d
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # invokes: Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_164
    if-ge v5, v4, :cond_170

    aget-object v7, v1, v5

    .line 828
    .restart local v7    # "l":Lcom/android/server/AppStateTracker$Listener;
    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/AppStateTracker$Listener;->onUidActiveStateChanged(Lcom/android/server/AppStateTracker;I)V
    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1000(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    .line 827
    .end local v7    # "l":Lcom/android/server/AppStateTracker$Listener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_164

    .line 830
    :cond_170
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 831
    return-void

    .line 821
    .end local v0    # "sender":Lcom/android/server/AppStateTracker;
    .end local v2    # "start":J
    :catchall_17a
    move-exception v1

    :try_start_17b
    monitor-exit v0
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17a

    throw v1

    .line 812
    :cond_17d
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    .line 813
    return-void

    nop

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_15d
        :pswitch_13f
        :pswitch_29
        :pswitch_11d
        :pswitch_101
        :pswitch_e5
        :pswitch_c9
        :pswitch_ad
        :pswitch_a5
        :pswitch_6c
        :pswitch_50
        :pswitch_48
        :pswitch_42
        :pswitch_36
        :pswitch_2a
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 932
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 933
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    # invokes: Lcom/android/server/AppStateTracker;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 934
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

    .line 936
    :cond_1a
    monitor-exit v0

    .line 937
    return-void

    .line 936
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public handleUidGone(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 940
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    .line 941
    return-void
.end method

.method public handleUidIdle(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 945
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    .line 946
    return-void
.end method

.method public handleUidStateChanged(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 918
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 919
    const/4 v1, 0x5

    if-le p2, v1, :cond_21

    .line 920
    :try_start_a
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/AppStateTracker;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    invoke-static {v1, p1, v2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 921
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    goto :goto_34

    .line 928
    :catchall_1f
    move-exception v1

    goto :goto_36

    .line 924
    :cond_21
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    # invokes: Lcom/android/server/AppStateTracker;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 925
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    # getter for: Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;
    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    .line 928
    :cond_34
    :goto_34
    monitor-exit v0

    .line 929
    return-void

    .line 928
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_1f

    throw v1
.end method

.method public notifyAllUnwhitelisted()V
    .registers 2

    .line 759
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    return-void
.end method

.method public notifyAllWhitelistChanged()V
    .registers 2

    .line 764
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 765
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 766
    return-void
.end method

.method public notifyExemptChanged()V
    .registers 2

    .line 784
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 786
    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .registers 2

    .line 774
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 775
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 776
    return-void
.end method

.method public notifyForcedAppStandbyFeatureFlagChanged()V
    .registers 2

    .line 779
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 780
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 781
    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 755
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 756
    return-void
.end method

.method public notifyTempWhitelistChanged()V
    .registers 2

    .line 769
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 771
    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 748
    return-void
.end method

.method public notifyUidForegroundStateChanged(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 751
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 752
    return-void
.end method

.method public onUidActive(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 797
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 798
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 801
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 802
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 805
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 806
    return-void
.end method

.method public onUidStateChanged(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 793
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 794
    return-void
.end method
