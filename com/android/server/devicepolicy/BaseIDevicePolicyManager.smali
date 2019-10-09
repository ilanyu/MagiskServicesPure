.class abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 119
    const/4 v0, -0x1

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .registers 1

    .line 146
    return-void
.end method

.method public forceSecurityLogs()J
    .registers 3

    .line 156
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "keySpec"    # Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .param p5, "idAttestationFlags"    # I
    .param p6, "attestationChain"    # Landroid/security/keymaster/KeymasterCertificateChain;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract handleStartUser(I)V
.end method

.method abstract handleStopUser(I)V
.end method

.method abstract handleUnlockUser(I)V
.end method

.method public isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public removeOverrideApn(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "cert"    # [B
    .param p5, "chain"    # [B
    .param p6, "isUserSelectable"    # Z

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object p2
.end method

.method public setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 138
    return-void
.end method

.method public setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 67
    return-void
.end method

.method abstract systemReady(I)V
.end method

.method public transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;

    .line 69
    return-void
.end method

.method public updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .registers 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 124
    const/4 v0, 0x0

    return v0
.end method
