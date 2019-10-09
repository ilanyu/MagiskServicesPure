.class Lcom/android/server/am/ProcessManagerService$4;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->protectCurrentProcess(ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ProcessManagerService;

    .line 1340
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$4;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessManagerService$4;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1343
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$4;->this$0:Lcom/android/server/am/ProcessManagerService;

    # getter for: Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;
    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->access$400(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$4;->val$app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessPolicy;->protectCurrentProcess(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 1344
    return-void
.end method
