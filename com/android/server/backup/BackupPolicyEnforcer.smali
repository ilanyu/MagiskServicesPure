.class public Lcom/android/server/backup/BackupPolicyEnforcer;
.super Ljava/lang/Object;
.source "BackupPolicyEnforcer.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "device_policy"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/backup/BackupPolicyEnforcer;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 20
    return-void
.end method


# virtual methods
.method public getMandatoryBackupTransport()Landroid/content/ComponentName;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/android/server/backup/BackupPolicyEnforcer;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMandatoryBackupTransport()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
