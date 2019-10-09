.class final Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotplugDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 778
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 779
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    .line 780
    return-void
.end method


# virtual methods
.method public onHotplug(JIZ)V
    .registers 7
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "connected"    # Z

    .line 784
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 785
    if-eqz p4, :cond_11

    .line 786
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    # invokes: Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V
    invoke-static {v1, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;I)V

    goto :goto_16

    .line 790
    :catchall_f
    move-exception v1

    goto :goto_18

    .line 788
    :cond_11
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    # invokes: Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V
    invoke-static {v1, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$400(Lcom/android/server/display/LocalDisplayAdapter;I)V

    .line 790
    :goto_16
    monitor-exit v0

    .line 791
    return-void

    .line 790
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_f

    throw v1
.end method
