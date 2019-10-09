.class Lcom/android/server/am/ProcessManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService$LocalService;->onCleanUpApplicationRecord(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessManagerService$LocalService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService$LocalService;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/am/ProcessManagerService$LocalService;

    .line 1771
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$LocalService$1;->this$1:Lcom/android/server/am/ProcessManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/am/ProcessManagerService$LocalService$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ProcessManagerService$LocalService$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1774
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$LocalService$1;->this$1:Lcom/android/server/am/ProcessManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/am/ProcessManagerService$LocalService;->this$0:Lcom/android/server/am/ProcessManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$LocalService$1;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ProcessManagerService$LocalService$1;->val$uid:I

    # invokes: Lcom/android/server/am/ProcessManagerService;->removeNotificationIfNeeded(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessManagerService;->access$1100(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;I)V

    .line 1775
    return-void
.end method
