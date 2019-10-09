.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 194
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 197
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    # setter for: Lcom/android/server/UiModeManagerService;->mVrHeadset:Z
    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->access$502(Lcom/android/server/UiModeManagerService;Z)Z

    .line 199
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v1, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_16

    .line 200
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 202
    :cond_16
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method
