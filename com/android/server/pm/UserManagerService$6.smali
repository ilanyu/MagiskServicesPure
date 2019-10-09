.class Lcom/android/server/pm/UserManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 2972
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$6;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2980
    new-instance v0, Lcom/android/server/pm/UserManagerService$6$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$6$1;-><init>(Lcom/android/server/pm/UserManagerService$6;)V

    .line 2988
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$6$1;->start()V

    .line 2989
    return-void
.end method
