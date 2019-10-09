.class Lcom/android/server/accounts/AccountManagerService$4;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 356
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 10
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 360
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 361
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 362
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;
    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->access$600(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3, v1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 364
    .local v2, "mode":I
    if-nez v2, :cond_2f

    .line 365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_20} :catch_30

    .line 367
    .local v3, "identity":J
    :try_start_20
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x1

    # invokes: Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    invoke-static {v5, p2, v1, v6}, Lcom/android/server/accounts/AccountManagerService;->access$700(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2a

    .line 369
    :try_start_26
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    goto :goto_2f

    .line 369
    :catchall_2a
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 374
    .end local v0    # "userId":I
    .end local v1    # "uid":I
    .end local v2    # "mode":I
    .end local v3    # "identity":J
    :cond_2f
    :goto_2f
    goto :goto_31

    .line 372
    :catch_30
    move-exception v0

    .line 375
    :goto_31
    return-void
.end method
