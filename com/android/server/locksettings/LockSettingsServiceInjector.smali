.class public Lcom/android/server/locksettings/LockSettingsServiceInjector;
.super Ljava/lang/Object;
.source "LockSettingsServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldTieManagedProfileLock(Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;I)Z
    .registers 4
    .param p0, "mStorage"    # Lcom/android/server/locksettings/LockSettingsStorage;
    .param p1, "mUserManager"    # Landroid/os/UserManager;
    .param p2, "managedUserId"    # I

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public static tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;)Z
    .registers 5
    .param p0, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p1, "mLockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "mStorage"    # Lcom/android/server/locksettings/LockSettingsStorage;
    .param p3, "mUserManager"    # Landroid/os/UserManager;

    .line 13
    const/4 v0, 0x1

    return v0
.end method
