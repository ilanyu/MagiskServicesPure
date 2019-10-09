.class Lcom/android/server/NetworkManagementService$2;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .line 1568
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$2;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1570
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$2;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$2;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    iget v1, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1570
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 1573
    return-void
.end method
