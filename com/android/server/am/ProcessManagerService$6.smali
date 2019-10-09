.class Lcom/android/server/am/ProcessManagerService$6;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$foregroundRecord:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$multiWindowAppInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$pid:I

.field final synthetic val$state:Lcom/android/server/am/ActivityStack$ActivityState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;

    .line 1539
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$6;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessManagerService$6;->val$foregroundRecord:Lcom/android/server/am/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/am/ProcessManagerService$6;->val$state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput p4, p0, Lcom/android/server/am/ProcessManagerService$6;->val$pid:I

    iput-object p5, p0, Lcom/android/server/am/ProcessManagerService$6;->val$multiWindowAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1542
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$6;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$900(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ForegroundInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$6;->val$foregroundRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$6;->val$state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget v3, p0, Lcom/android/server/am/ProcessManagerService$6;->val$pid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService$6;->val$multiWindowAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 1543
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ForegroundInfoManager;->notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    .line 1544
    return-void
.end method
