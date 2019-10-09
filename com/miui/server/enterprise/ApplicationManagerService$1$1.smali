.class Lcom/miui/server/enterprise/ApplicationManagerService$1$1;
.super Ljava/lang/Object;
.source "ApplicationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/ApplicationManagerService$1;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

.field final synthetic val$basePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/ApplicationManagerService$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/miui/server/enterprise/ApplicationManagerService$1;

    .line 111
    iput-object p1, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

    iput-object p2, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$basePackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3e

    .line 118
    :try_start_4
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

    iget-object v1, v1, Lcom/miui/server/enterprise/ApplicationManagerService$1;->this$0:Lcom/miui/server/enterprise/ApplicationManagerService;

    # getter for: Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v1}, Lcom/miui/server/enterprise/ApplicationManagerService;->access$000(Lcom/miui/server/enterprise/ApplicationManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$basePackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

    iget v3, v3, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_15} :catch_16

    .line 119
    goto :goto_3e

    .line 120
    :catch_16
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Enterprise-App"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->val$basePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is still frozen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-wide/16 v2, 0x3e8

    :try_start_36
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 127
    goto :goto_3b

    .line 125
    :catch_3a
    move-exception v2

    .line 128
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    .line 129
    .end local v1    # "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 132
    :cond_3e
    :goto_3e
    :try_start_3e
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

    iget-object v1, v1, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 133
    const-string v1, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService$1$1;->this$1:Lcom/miui/server/enterprise/ApplicationManagerService$1;

    iget-object v3, v3, Lcom/miui/server/enterprise/ApplicationManagerService$1;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3e .. :try_end_5f} :catch_60

    .line 136
    goto :goto_68

    .line 134
    :catch_60
    move-exception v1

    .line 135
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "Enterprise-App"

    const-string v3, "Failed to send pending intent"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_68
    return-void
.end method
