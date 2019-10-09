.class Lcom/android/server/am/BroadcastQueueInjector$1;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueueInjector;->noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$service:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;I)V
    .registers 4

    .line 419
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueInjector$1;->val$service:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueInjector$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/am/BroadcastQueueInjector$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueInjector$1;->val$service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$1;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/am/BroadcastQueueInjector$1;->val$uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 426
    goto :goto_16

    .line 424
    :catch_15
    move-exception v0

    .line 427
    :goto_16
    return-void
.end method
