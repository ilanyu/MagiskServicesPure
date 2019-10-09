.class public Lcom/android/server/HardwarePropertiesManagerService;
.super Landroid/os/IHardwarePropertiesManager$Stub;
.source "HardwarePropertiesManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwarePropertiesManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Landroid/os/IHardwarePropertiesManager$Stub;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_1b
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeInit()V

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v1
.end method

.method private dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .registers 19
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "type"    # I
    .param p4, "typeLabel"    # Ljava/lang/String;

    .line 112
    const-string/jumbo v5, "temperatures: "

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v12, "throttling temperatures: "

    const/4 v13, 0x1

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 116
    const-string/jumbo v5, "shutdown temperatures: "

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 118
    const-string/jumbo v12, "vr throttling temperatures: "

    const/4 v13, 0x3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method private dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "type"    # I
    .param p4, "typeLabel"    # Ljava/lang/String;
    .param p5, "subLabel"    # Ljava/lang/String;
    .param p6, "valueType"    # I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/HardwarePropertiesManagerService;->getDeviceTemperatures(Ljava/lang/String;II)[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 166
    .local v0, "userId":I
    const-class v1, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/VrManagerInternal;

    .line 167
    .local v1, "vrService":Lcom/android/server/vr/VrManagerInternal;
    iget-object v2, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 168
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 169
    invoke-virtual {v1, p1, v0}, Lcom/android/server/vr/VrManagerInternal;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    .line 170
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_42

    .line 172
    :cond_3a
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "The caller is not a device owner, bound VrListenerService, or holding the DEVICE_POWER permission."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_42
    :goto_42
    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_17

    array-length v1, v0

    if-lez v1, :cond_17

    .line 105
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 107
    :cond_17
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method private static native nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
.end method

.method private static native nativeGetDeviceTemperatures(II)[F
.end method

.method private static native nativeGetFanSpeeds()[F
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string v1, "HardwarePropertiesManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 131
    :cond_b
    const-string v0, "****** Dump of HardwarePropertiesManagerService ******"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/android/server/HardwarePropertiesManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "PKG":Ljava/lang/String;
    const-string v1, "CPU "

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v2, v1}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 135
    const-string v1, "GPU "

    const/4 v3, 0x1

    invoke-direct {p0, v0, p2, v3, v1}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 136
    const/4 v1, 0x2

    const-string v3, "Battery "

    invoke-direct {p0, v0, p2, v1, v3}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 137
    const/4 v1, 0x3

    const-string v3, "Skin "

    invoke-direct {p0, v0, p2, v1, v3}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/server/HardwarePropertiesManagerService;->getFanSpeeds(Ljava/lang/String;)[F

    move-result-object v1

    .line 140
    .local v1, "fanSpeeds":[F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fan speed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/server/HardwarePropertiesManagerService;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

    move-result-object v3

    .line 143
    .local v3, "cpuUsageInfos":[Landroid/os/CpuUsageInfo;
    const/4 v4, 0x0

    .line 144
    .local v4, "core":I
    nop

    .local v2, "i":I
    :goto_53
    array-length v5, v3

    if-ge v2, v5, :cond_89

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cpu usage of core: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    .line 146
    invoke-virtual {v6}, Landroid/os/CpuUsageInfo;->getActive()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", total = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    .line 147
    invoke-virtual {v6}, Landroid/os/CpuUsageInfo;->getTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 149
    .end local v2    # "i":I
    :cond_89
    const-string v2, "****** End of HardwarePropertiesManagerService dump ******"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_6
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getDeviceTemperatures(Ljava/lang/String;II)[F
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_6
    invoke-static {p2, p3}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetDeviceTemperatures(II)[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getFanSpeeds(Ljava/lang/String;)[F
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_6
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetFanSpeeds()[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 98
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method
