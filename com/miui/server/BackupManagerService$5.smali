.class Lcom/miui/server/BackupManagerService$5;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/pm/IPackageStatsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .line 826
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$5;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 844
    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 10
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    iget-object v0, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 831
    .local v0, "pkg":Ljava/lang/String;
    :try_start_2
    iget-object v1, p0, Lcom/miui/server/BackupManagerService$5;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$1500(Lcom/miui/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 832
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/miui/server/BackupManagerService$5;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$700(Lcom/miui/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 833
    iget-object v2, p0, Lcom/miui/server/BackupManagerService$5;->this$0:Lcom/miui/server/BackupManagerService;

    iget-wide v3, p1, Landroid/content/pm/PackageStats;->dataSize:J

    # setter for: Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/miui/server/BackupManagerService;->access$1602(Lcom/miui/server/BackupManagerService;J)J

    goto :goto_36

    .line 835
    :cond_21
    iget-object v2, p0, Lcom/miui/server/BackupManagerService$5;->this$0:Lcom/miui/server/BackupManagerService;

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v3, v5

    # setter for: Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/miui/server/BackupManagerService;->access$1602(Lcom/miui/server/BackupManagerService;J)J
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_36} :catch_37

    .line 839
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_36
    goto :goto_3b

    .line 837
    :catch_37
    move-exception v1

    .line 838
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 840
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3b
    return-void
.end method
