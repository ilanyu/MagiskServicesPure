.class Lcom/android/server/dreams/DreamManagerService$4;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/server/dreams/DreamController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .line 454
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamStopped(Landroid/os/Binder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/Binder;

    .line 457
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$400(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 458
    :try_start_7
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # getter for: Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;
    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$500(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;

    move-result-object v1

    if-ne v1, p1, :cond_14

    .line 459
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    # invokes: Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V
    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$600(Lcom/android/server/dreams/DreamManagerService;)V

    .line 461
    :cond_14
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method
