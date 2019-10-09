.class Lcom/miui/server/PerfShielderService$2;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/PerfShielderService;

    .line 586
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .line 598
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {p2}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 599
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$700(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    .line 601
    :try_start_12
    const-string v0, "PerfShielderService"

    const-string v1, "Miui performance service connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v0, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v1, v1, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_2a

    .line 605
    goto :goto_2e

    .line 603
    :catch_2a
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .line 589
    const-string v0, "PerfShielderService"

    const-string v1, "Miui performance service disconnected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 591
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 592
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$2;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/miui/server/PerfShielderService;->access$600(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 594
    :cond_23
    return-void
.end method
