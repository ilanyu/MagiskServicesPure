.class Lcom/android/server/am/ActivityManagerService$8;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 7890
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$8;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 7894
    :try_start_0
    const-string v0, "backup"

    .line 7895
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7894
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 7896
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$8;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->agentDisconnected(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 7899
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    goto :goto_15

    .line 7897
    :catch_14
    move-exception v0

    .line 7900
    :goto_15
    return-void
.end method
