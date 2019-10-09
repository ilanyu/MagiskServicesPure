.class Lcom/android/server/MountServiceDefragIdler$1;
.super Ljava/lang/Object;
.source "MountServiceDefragIdler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountServiceDefragIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountServiceDefragIdler;


# direct methods
.method constructor <init>(Lcom/android/server/MountServiceDefragIdler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/MountServiceDefragIdler;

    .line 45
    iput-object p1, p0, Lcom/android/server/MountServiceDefragIdler$1;->this$0:Lcom/android/server/MountServiceDefragIdler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 48
    const-string v0, "MountServiceDefragIdler"

    const-string v1, "Got defrag completion callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/server/MountServiceDefragIdler$1;->this$0:Lcom/android/server/MountServiceDefragIdler;

    # getter for: Lcom/android/server/MountServiceDefragIdler;->mFinishCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/MountServiceDefragIdler;->access$000(Lcom/android/server/MountServiceDefragIdler;)Ljava/lang/Runnable;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_e
    iget-object v1, p0, Lcom/android/server/MountServiceDefragIdler$1;->this$0:Lcom/android/server/MountServiceDefragIdler;

    # getter for: Lcom/android/server/MountServiceDefragIdler;->mStarted:Z
    invoke-static {v1}, Lcom/android/server/MountServiceDefragIdler;->access$100(Lcom/android/server/MountServiceDefragIdler;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 51
    iget-object v1, p0, Lcom/android/server/MountServiceDefragIdler$1;->this$0:Lcom/android/server/MountServiceDefragIdler;

    iget-object v2, p0, Lcom/android/server/MountServiceDefragIdler$1;->this$0:Lcom/android/server/MountServiceDefragIdler;

    # getter for: Lcom/android/server/MountServiceDefragIdler;->mJobParams:Landroid/app/job/JobParameters;
    invoke-static {v2}, Lcom/android/server/MountServiceDefragIdler;->access$200(Lcom/android/server/MountServiceDefragIdler;)Landroid/app/job/JobParameters;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/MountServiceDefragIdler;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 52
    iget-object v1, p0, Lcom/android/server/MountServiceDefragIdler$1;->this$0:Lcom/android/server/MountServiceDefragIdler;

    # setter for: Lcom/android/server/MountServiceDefragIdler;->mStarted:Z
    invoke-static {v1, v3}, Lcom/android/server/MountServiceDefragIdler;->access$102(Lcom/android/server/MountServiceDefragIdler;Z)Z

    .line 54
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_2e

    .line 56
    iget-object v0, p0, Lcom/android/server/MountServiceDefragIdler$1;->this$0:Lcom/android/server/MountServiceDefragIdler;

    invoke-static {v0}, Lcom/android/server/MountServiceDefragIdler;->scheduleDefrag(Landroid/content/Context;)V

    .line 57
    return-void

    .line 54
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method
