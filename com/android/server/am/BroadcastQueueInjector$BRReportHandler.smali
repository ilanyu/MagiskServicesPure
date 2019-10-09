.class final Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;
.super Landroid/os/Handler;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BRReportHandler"
.end annotation


# static fields
.field static final BROADCAST_RECORDS:I = 0x1

.field static final BROADCAST_TIME_RECORDS:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 139
    const-string v0, "BroadcastQueueInjector"

    const-string/jumbo v1, "wrong message received of BRReportHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 127
    :cond_e
    :try_start_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 129
    .local v0, "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/BroadcastEvent;>;"
    const-string v1, "BroadcastQueueInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reporting BROADCAST_RECORDS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    # invokes: Lcom/android/server/am/BroadcastQueueInjector;->isSystemBootCompleted()Z
    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v0, :cond_3c

    # invokes: Lcom/android/server/am/BroadcastQueueInjector;->isSystemBootCompleted()Z
    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 132
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3c} :catch_3d

    .line 136
    .end local v0    # "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/BroadcastEvent;>;"
    :cond_3c
    goto :goto_47

    .line 134
    :catch_3d
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BroadcastQueueInjector"

    const-string/jumbo v2, "report message record error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 142
    :goto_47
    return-void
.end method
