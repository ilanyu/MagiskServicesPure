.class Lcom/android/server/am/ActivityManagerService$12;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 8486
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 8489
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1e

    .line 8490
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setCastMode(Z)V

    .line 8491
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->setCurrentCastModeState(Ljava/lang/String;I)V

    .line 8492
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    .line 8494
    :cond_1e
    return-void
.end method
