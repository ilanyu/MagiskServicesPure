.class Lcom/android/server/MountServiceIdler$1;
.super Ljava/lang/Object;
.source "MountServiceIdler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountServiceIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountServiceIdler;


# direct methods
.method constructor <init>(Lcom/android/server/MountServiceIdler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/MountServiceIdler;

    .line 41
    iput-object p1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 44
    const-string v0, "MountServiceIdler"

    const-string v1, "Got mount service completion callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    # getter for: Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->access$000(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;

    move-result-object v0

    monitor-enter v0

    .line 46
    :try_start_e
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    # getter for: Lcom/android/server/MountServiceIdler;->mStarted:Z
    invoke-static {v1}, Lcom/android/server/MountServiceIdler;->access$100(Lcom/android/server/MountServiceIdler;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 47
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    iget-object v2, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    # getter for: Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;
    invoke-static {v2}, Lcom/android/server/MountServiceIdler;->access$200(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/MountServiceIdler;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 48
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    # setter for: Lcom/android/server/MountServiceIdler;->mStarted:Z
    invoke-static {v1, v3}, Lcom/android/server/MountServiceIdler;->access$102(Lcom/android/server/MountServiceIdler;Z)Z

    .line 50
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2e

    .line 54
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 55
    return-void

    .line 50
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method
