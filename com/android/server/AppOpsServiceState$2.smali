.class Lcom/android/server/AppOpsServiceState$2;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsServiceState;->startService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsServiceState;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsServiceState;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/AppOpsServiceState;

    .line 305
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState$2;->this$0:Lcom/android/server/AppOpsServiceState;

    iput p2, p0, Lcom/android/server/AppOpsServiceState$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 310
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.permission.Action.SecurityService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState$2;->this$0:Lcom/android/server/AppOpsServiceState;

    # getter for: Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AppOpsServiceState;->access$200(Lcom/android/server/AppOpsServiceState;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/AppOpsServiceState$2;->val$userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 316
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_25

    .line 313
    :catch_1d
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOpsServiceState"

    const-string v2, "Start Error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method
