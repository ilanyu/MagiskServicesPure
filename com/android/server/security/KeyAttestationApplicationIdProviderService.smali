.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .registers 14
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f9

    if-ne v0, v1, :cond_60

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 55
    .local v1, "token":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_47

    .line 59
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 60
    .local v4, "userId":I
    array-length v5, v3

    new-array v5, v5, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    move-object v0, v5

    .line 62
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    array-length v6, v3

    if-ge v5, v6, :cond_3d

    .line 63
    iget-object v6, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v7, v3, v5

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 65
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v7, Landroid/security/keymaster/KeyAttestationPackageInfo;

    aget-object v8, v3, v5

    .line 66
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v9

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Ljava/lang/String;J[Landroid/content/pm/Signature;)V

    aput-object v7, v0, v5
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_3a} :catch_51
    .catchall {:try_start_d .. :try_end_3a} :catchall_4f

    .line 62
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 71
    .end local v3    # "packageNames":[Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "i":I
    :cond_3d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    nop

    .line 73
    new-instance v3, Landroid/security/keymaster/KeyAttestationApplicationId;

    invoke-direct {v3, v0}, Landroid/security/keymaster/KeyAttestationApplicationId;-><init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V

    return-object v3

    .line 57
    .restart local v3    # "packageNames":[Ljava/lang/String;
    :cond_47
    :try_start_47
    new-instance v4, Landroid/os/RemoteException;

    const-string v5, "No packages for uid"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_4f} :catch_51
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4f

    .line 71
    .end local v3    # "packageNames":[Ljava/lang/String;
    :catchall_4f
    move-exception v3

    goto :goto_5c

    .line 68
    :catch_51
    move-exception v3

    .line 69
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_52
    new-instance v4, Landroid/os/RemoteException;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_4f

    .line 71
    .end local v3    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 50
    .end local v0    # "keyAttestationPackageInfos":[Landroid/security/keymaster/KeyAttestationPackageInfo;
    .end local v1    # "token":J
    :cond_60
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "This service can only be used by Keystore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
