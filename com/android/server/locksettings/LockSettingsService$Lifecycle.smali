.class public final Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 212
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 223
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 224
    const/16 v0, 0x226

    if-ne p1, v0, :cond_c

    .line 225
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    # invokes: Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$000(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 227
    :cond_c
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 241
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onCleanupUser(I)V

    .line 242
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 216
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    .line 217
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 218
    const-string/jumbo v0, "lock_settings"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 219
    return-void
.end method

.method public onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 231
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onStartUser(I)V

    .line 232
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 236
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V

    .line 237
    return-void
.end method
