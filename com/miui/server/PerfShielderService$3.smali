.class Lcom/miui/server/PerfShielderService$3;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 638
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 641
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V

    .line 642
    const-string v0, "PerfShielderService"

    const-string v1, "MiuiSysUser service binderDied!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$700(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    .line 644
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    # getter for: Lcom/miui/server/PerfShielderService;->mLastRetryTime:J
    invoke-static {}, Lcom/miui/server/PerfShielderService;->access$900()J

    move-result-wide v1

    # invokes: Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V
    invoke-static {v0, v1, v2}, Lcom/miui/server/PerfShielderService;->access$1000(Lcom/miui/server/PerfShielderService;J)V

    .line 645
    return-void
.end method
