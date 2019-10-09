.class public Lcom/android/server/backup/utils/AppBackupUtils;
.super Ljava/lang/Object;
.source "AppBackupUtils.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 151
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 153
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 157
    :cond_13
    return v1
.end method

.method public static appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .registers 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 126
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 133
    const/4 v0, 0x0

    return v0

    .line 130
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .registers 5
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 59
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 60
    return v1

    .line 64
    :cond_a
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 65
    return v1

    .line 69
    :cond_15
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 70
    return v1

    .line 74
    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 75
    return v1

    .line 82
    :cond_27
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_33

    invoke-static {p0, p1}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_33

    :cond_32
    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    :goto_34
    return v1
.end method

.method public static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 165
    invoke-static {p0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 10
    .param p0, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 98
    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 100
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 101
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v2, p2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 102
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 103
    invoke-static {v2, p2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_19} :catch_4c

    if-eqz v3, :cond_1c

    goto :goto_4b

    .line 106
    :cond_1c
    if-eqz p0, :cond_49

    .line 108
    :try_start_1e
    const-string v3, "AppBackupUtils.appIsEligibleForBackupAtRuntime"

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 111
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    nop

    .line 112
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 111
    invoke-interface {v3, v0, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v4
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_2d} :catch_4c

    return v4

    .line 113
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_2e
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_49} :catch_4c

    .line 118
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_49
    const/4 v1, 0x1

    return v1

    .line 104
    :cond_4b
    :goto_4b
    return v1

    .line 119
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_4c
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method public static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 143
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .registers 14
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .param p2, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 188
    const/4 v0, 0x0

    if-eqz p1, :cond_53

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_53

    .line 197
    :cond_8
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 201
    return v2

    .line 205
    :cond_11
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 206
    return v0

    .line 209
    :cond_18
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 210
    .local v1, "signingInfo":Landroid/content/pm/SigningInfo;
    if-nez v1, :cond_25

    .line 211
    const-string v2, "BackupManagerService"

    const-string/jumbo v3, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v0

    .line 221
    :cond_25
    array-length v3, p0

    .line 222
    .local v3, "nStored":I
    if-ne v3, v2, :cond_31

    .line 228
    aget-object v0, p0, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManagerInternal;->isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 233
    :cond_31
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 234
    .local v4, "deviceSigs":[Landroid/content/pm/Signature;
    array-length v5, v4

    .line 237
    .local v5, "nDevice":I
    move v6, v0

    .line 237
    .local v6, "i":I
    :goto_37
    if-ge v6, v3, :cond_52

    .line 238
    const/4 v7, 0x0

    .line 239
    .local v7, "match":Z
    move v8, v0

    .line 239
    .local v8, "j":I
    :goto_3b
    if-ge v8, v5, :cond_4c

    .line 240
    aget-object v9, p0, v6

    aget-object v10, v4, v8

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 241
    const/4 v7, 0x1

    .line 242
    goto :goto_4c

    .line 239
    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 245
    .end local v8    # "j":I
    :cond_4c
    :goto_4c
    if-nez v7, :cond_4f

    .line 246
    return v0

    .line 237
    .end local v7    # "match":Z
    :cond_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 250
    .end local v6    # "i":I
    :cond_52
    return v2

    .line 189
    .end local v1    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v3    # "nStored":I
    .end local v4    # "deviceSigs":[Landroid/content/pm/Signature;
    .end local v5    # "nDevice":I
    :cond_53
    :goto_53
    return v0
.end method
