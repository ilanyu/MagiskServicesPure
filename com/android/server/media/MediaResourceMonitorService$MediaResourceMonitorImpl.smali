.class Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaResourceMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaResourceMonitorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaResourceMonitorService;

    .line 52
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    return-void
.end method

.method private getPackageNamesFromPid(I)[Ljava/lang/String;
    .registers 5
    .param p1, "pid"    # I

    .line 86
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 87
    .local v1, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1f

    .line 88
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_21

    return-object v0

    .line 90
    .end local v1    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1f
    goto :goto_c

    .line 93
    :cond_20
    goto :goto_29

    .line 91
    :catch_21
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaResourceMonitor"

    const-string v2, "ActivityManager.getRunningAppProcesses() failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public notifyResourceGranted(II)V
    .registers 15
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    # getter for: Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 57
    const-string v0, "MediaResourceMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyResourceGranted(pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 61
    .local v0, "identity":J
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_87

    .line 62
    .local v2, "pkgNames":[Ljava/lang/String;
    if-nez v2, :cond_38

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    return-void

    .line 65
    :cond_38
    :try_start_38
    iget-object v3, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 67
    .local v3, "manager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    .line 68
    .local v4, "userIds":[I
    if-eqz v4, :cond_83

    array-length v5, v4

    if-nez v5, :cond_55

    goto :goto_83

    .line 71
    :cond_55
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.PACKAGES"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v6, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    array-length v6, v4

    const/4 v7, 0x0

    :goto_68
    if-ge v7, v6, :cond_7e

    aget v8, v4, v7

    .line 75
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v9}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const-string v11, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    invoke-virtual {v9, v5, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_38 .. :try_end_7b} :catchall_87

    .line 74
    .end local v8    # "userId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    .line 79
    .end local v2    # "pkgNames":[Ljava/lang/String;
    .end local v3    # "manager":Landroid/os/UserManager;
    .end local v4    # "userIds":[I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_7e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    nop

    .line 81
    return-void

    .line 79
    .restart local v2    # "pkgNames":[Ljava/lang/String;
    .restart local v3    # "manager":Landroid/os/UserManager;
    .restart local v4    # "userIds":[I
    :cond_83
    :goto_83
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    return-void

    .line 79
    .end local v2    # "pkgNames":[Ljava/lang/String;
    .end local v3    # "manager":Landroid/os/UserManager;
    .end local v4    # "userIds":[I
    :catchall_87
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
