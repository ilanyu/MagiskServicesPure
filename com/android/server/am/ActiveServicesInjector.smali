.class public Lcom/android/server/am/ActiveServicesInjector;
.super Ljava/lang/Object;
.source "ActiveServicesInjector.java"


# static fields
.field private static final DEBUG_SERVICE:Z = false

.field private static final PROCESS_STATE_FOREGROUND_SERVICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActiveServicesInjector"

.field static final sMayRestartProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 13
    .param p0, "record"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 45
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/AutoStartManagerService;->canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 46
    return v1

    .line 50
    :cond_e
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8d

    .line 51
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v5, "Restart: AMS"

    const/4 v6, 0x2

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 56
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    move-object v8, v0

    goto :goto_31

    :cond_2e
    const-string v0, ""

    goto :goto_2c

    :goto_31
    iget-object v9, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    new-array v10, v2, [Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    aput-object v0, v10, v1

    .line 51
    invoke-virtual/range {v3 .. v10}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_8d

    .line 59
    const-string v0, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied by Whetstone, cannot re-start service from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_6c

    :cond_6a
    const-string v3, ""

    :goto_6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v1

    .line 67
    :cond_8d
    sget-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v0, :cond_d5

    .line 68
    const-string v0, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restart service from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_b5

    :cond_b3
    const-string v3, ""

    :goto_b5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_d5
    return v2
.end method

.method public static closeCheckPriority(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 102
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/am/LowPriorityServiceHelper;->closeCheckPriority()V

    .line 103
    return-void
.end method

.method public static isServiceForeground(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;I)Z
    .registers 7
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .line 80
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_19

    if-nez p1, :cond_8

    goto :goto_19

    .line 83
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v2, 0x2727

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p2, v3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "mode":I
    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1

    .line 81
    .end local v0    # "mode":I
    :cond_19
    :goto_19
    return v1
.end method

.method public static removeServiceLocked(ILandroid/util/SparseArray;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "serviceMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ActiveServices$ServiceMap;>;"
    .local p2, "mTmpCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, -0x1

    if-ne p0, v0, :cond_17

    .line 139
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_22

    .line 140
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    invoke-static {v1, p2}, Lcom/android/server/am/ActiveServicesInjector;->removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V

    .line 139
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 143
    .end local v0    # "i":I
    :cond_17
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 144
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_22

    .line 145
    invoke-static {v0, p2}, Lcom/android/server/am/ActiveServicesInjector;->removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V

    .line 148
    .end local v0    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_22
    return-void
.end method

.method public static removeServiceLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "mTmpCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz p1, :cond_1d

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 124
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 125
    .local v1, "service":Lcom/android/server/am/ServiceRecord;
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    sget-object v2, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/am/LowPriorityServiceHelper;->forceRemoveServiceLocked(Lcom/android/server/am/ServiceRecord;)Z

    .line 123
    .end local v1    # "service":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 134
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method public static removeServicePriority(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 4
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z

    .line 98
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/LowPriorityServiceHelper;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    .line 99
    return-void
.end method

.method public static setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .registers 3
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/LowPriorityServiceHelper;->setServicePriority(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public static setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;J)V
    .registers 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .line 92
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/am/LowPriorityServiceHelper;->setServicePriority(Ljava/util/List;)V

    .line 93
    sget-object v0, Lcom/android/server/am/LowPriorityServiceHelper;->mInstance:Lcom/android/server/am/LowPriorityServiceHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/LowPriorityServiceHelper;->setNoProcDelayTime(J)V

    .line 94
    return-void
.end method

.method public static willRestartNow(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 111
    if-eqz p0, :cond_17

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_17

    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 114
    const/4 v0, 0x1

    .local v0, "isTopServiceApp":Z
    goto :goto_18

    .line 116
    .end local v0    # "isTopServiceApp":Z
    :cond_17
    const/4 v0, 0x0

    .line 118
    .restart local v0    # "isTopServiceApp":Z
    :goto_18
    return v0
.end method

.method public static willRestartNow(Lcom/android/server/am/ServiceRecord;)Z
    .registers 3
    .param p0, "record"    # Lcom/android/server/am/ServiceRecord;

    .line 106
    sget-object v0, Lcom/android/server/am/ActiveServicesInjector;->sMayRestartProcessList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
