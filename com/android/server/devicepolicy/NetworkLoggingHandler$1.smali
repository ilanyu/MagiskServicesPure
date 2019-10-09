.class Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;
.super Ljava/lang/Object;
.source "NetworkLoggingHandler.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 69
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 4

    .line 72
    # getter for: Lcom/android/server/devicepolicy/NetworkLoggingHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a batch finalization timeout alarm, finalizing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 73
    # getter for: Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->access$100(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pending events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "notificationExtras":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    monitor-enter v1

    .line 76
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    # invokes: Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildDeviceOwnerMessageLocked()Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->access$200(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Landroid/os/Bundle;

    move-result-object v2

    move-object v0, v2

    .line 77
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_3b

    .line 78
    if-eqz v0, :cond_3a

    .line 79
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    # invokes: Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwner(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->access$300(Lcom/android/server/devicepolicy/NetworkLoggingHandler;Landroid/os/Bundle;)V

    .line 81
    :cond_3a
    return-void

    .line 77
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method
