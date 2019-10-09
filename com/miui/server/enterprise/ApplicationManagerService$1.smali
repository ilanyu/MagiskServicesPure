.class Lcom/miui/server/enterprise/ApplicationManagerService$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "ApplicationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/ApplicationManagerService;->installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/ApplicationManagerService;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/ApplicationManagerService;ILandroid/app/PendingIntent;)V
    .registers 4
    .param p1, "this$0"    # Lcom/miui/server/enterprise/ApplicationManagerService;

    .line 99
    iput-object p1, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->this$0:Lcom/miui/server/enterprise/ApplicationManagerService;

    iput p2, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$userId:I

    iput-object p3, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 106
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2a

    .line 107
    const-string v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to install package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", returnCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    :cond_2a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;-><init>(Lcom/miui/server/enterprise/ApplicationManagerService$1;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 103
    return-void
.end method
