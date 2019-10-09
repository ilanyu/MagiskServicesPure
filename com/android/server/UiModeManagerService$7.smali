.class Lcom/android/server/UiModeManagerService$7;
.super Landroid/database/ContentObserver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/UiModeManagerService;->registUIModeScaleChangeObserver(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$service:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/server/UiModeManagerService;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .param p1, "x0"    # Landroid/os/Handler;

    .line 861
    iput-object p2, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    iput-object p3, p0, Lcom/android/server/UiModeManagerService$7;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/UiModeManagerService$7;->val$lock:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 864
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ui_mode_scale"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/UiModeManagerService;->mDefaultUiModeType:I
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$1202(Lcom/android/server/UiModeManagerService;I)I

    .line 867
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->val$lock:Ljava/lang/Object;

    monitor-enter v0

    .line 868
    :try_start_16
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v1, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_21

    .line 869
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->val$service:Lcom/android/server/UiModeManagerService;

    # invokes: Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;)V

    .line 871
    :cond_21
    monitor-exit v0

    .line 872
    return-void

    .line 871
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v1
.end method
