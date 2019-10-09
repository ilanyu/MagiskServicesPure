.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$affectedPackages:[Ljava/lang/String;

.field final synthetic val$intentExtras:Landroid/os/Bundle;

.field final synthetic val$suspended:Z

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZI[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 14707
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$suspended:Z

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$9;->val$affectedPackages:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$9;->val$action:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$9;->val$intentExtras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 14711
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 14712
    .local v0, "am":Landroid/app/IActivityManager;
    if-nez v0, :cond_2b

    .line 14713
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14714
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$suspended:Z

    if-eqz v3, :cond_19

    const-string v3, ""

    goto :goto_1b

    :cond_19
    const-string v3, "UN"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SUSPENDED broadcasts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14713
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 14715
    return-void

    .line 14717
    :cond_2b
    const/4 v1, 0x1

    new-array v9, v1, [I

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$userId:I

    const/4 v2, 0x0

    aput v1, v9, v2

    .line 14718
    .local v9, "targetUserIds":[I
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$9;->val$affectedPackages:[Ljava/lang/String;

    array-length v12, v11

    move v13, v2

    :goto_37
    if-ge v13, v12, :cond_4d

    aget-object v7, v11, v13

    .line 14719
    .local v7, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$action:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$9;->val$intentExtras:Landroid/os/Bundle;

    const/high16 v6, 0x1000000

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    # invokes: Lcom/android/server/pm/PackageManagerService;->doSendBroadcast(Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    invoke-static/range {v1 .. v10}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/app/IActivityManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZ)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4a} :catch_4e

    .line 14718
    .end local v7    # "packageName":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_37

    .line 14725
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v9    # "targetUserIds":[I
    :cond_4d
    goto :goto_4f

    .line 14723
    :catch_4e
    move-exception v0

    .line 14726
    :goto_4f
    return-void
.end method
