.class Lcom/android/server/SystemServer$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->performPendingShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$reboot:Z


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/SystemServer;

    .line 522
    iput-object p1, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    iput-boolean p2, p0, Lcom/android/server/SystemServer$1;->val$reboot:Z

    iput-object p3, p0, Lcom/android/server/SystemServer$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 525
    monitor-enter p0

    .line 526
    const/4 v0, 0x0

    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/SystemServer$1;->val$reboot:Z

    iget-object v2, p0, Lcom/android/server/SystemServer$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 527
    monitor-exit p0

    .line 528
    return-void

    .line 527
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
