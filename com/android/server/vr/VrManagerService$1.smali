.class Lcom/android/server/vr/VrManagerService$1;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .line 180
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V
    .registers 6
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    .line 183
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$100(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_d
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x0

    goto :goto_21

    :cond_17
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :goto_21
    move-object v0, v2

    .line 191
    if-eqz v0, :cond_3b

    iget-object v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_36

    iget v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 194
    :cond_36
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    # invokes: Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V
    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$400(Lcom/android/server/vr/VrManagerService;)V

    .line 196
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_61

    .line 200
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    # getter for: Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z
    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$500(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-nez v1, :cond_60

    iget v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_60

    if-eqz v0, :cond_53

    iget-object v1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 202
    :cond_53
    const-string v1, "VrManagerService"

    const-string v2, "VrListenerSevice has died permanently, leaving system VR mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/server/vr/VrManagerService;->access$600(Lcom/android/server/vr/VrManagerService;Z)V

    .line 206
    :cond_60
    return-void

    .line 196
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2
.end method
