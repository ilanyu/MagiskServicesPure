.class Lcom/android/server/am/ProcessManagerService$7;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->notifyActivityChanged(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$curActivityComponent:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;

    .line 1549
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$7;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessManagerService$7;->val$curActivityComponent:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1552
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$7;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$900(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ForegroundInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$7;->val$curActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ForegroundInfoManager;->notifyActivityChanged(Landroid/content/ComponentName;)V

    .line 1553
    return-void
.end method
