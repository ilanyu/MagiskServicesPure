.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field private final mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

.field private mCurrentUserId:I

.field private volatile mHasLockscreenWallpaper:Z

.field private volatile mInputRestricted:Z

.field private volatile mIsShowing:Z

.field mKeystoreService:Landroid/security/IKeystoreService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mSimSecure:Z

.field private volatile mTrusted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;
    .param p3, "callback"    # Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mHasLockscreenWallpaper:Z

    .line 59
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 60
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 61
    iput-object p3, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    .line 63
    const-string v0, "android.security.keystore"

    .line 64
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mKeystoreService:Landroid/security/IKeystoreService;

    .line 67
    :try_start_2a
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 70
    goto :goto_36

    .line 68
    :catch_2e
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardStateMonitor"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method private declared-synchronized getCurrentUser()I
    .registers 2

    monitor-enter p0

    .line 115
    :try_start_1
    iget v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
    throw v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardStateMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mIsShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSimSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mInputRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTrusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public hasLockscreenWallpaper()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mHasLockscreenWallpaper:Z

    return v0
.end method

.method public isInputRestricted()Z
    .registers 2

    .line 82
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return v0
.end method

.method public isSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 78
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return v0
.end method

.method public isTrusted()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    return v0
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .registers 2
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 131
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mHasLockscreenWallpaper:Z

    .line 132
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .registers 2
    .param p1, "inputRestricted"    # Z

    .line 120
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 121
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .registers 5
    .param p1, "showing"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onShowingChanged()V

    .line 99
    :try_start_7
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mKeystoreService:Landroid/security/IKeystoreService;

    iget v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    invoke-interface {v0, p1, v1}, Landroid/security/IKeystoreService;->onKeyguardVisibilityChanged(ZI)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 102
    goto :goto_17

    .line 100
    :catch_f
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardStateMonitor"

    const-string v2, "Error informing keystore of screen lock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .registers 2
    .param p1, "simSecure"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 108
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const/16 v0, 0xff

    if-eq p1, v0, :cond_9

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 142
    :cond_9
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->unblockScreenOn()V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public onTrustedChanged(Z)V
    .registers 3
    .param p1, "trusted"    # Z

    .line 125
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onTrustedChanged()V

    .line 127
    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .registers 2
    .param p1, "userId"    # I

    monitor-enter p0

    .line 111
    :try_start_1
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 112
    monitor-exit p0

    return-void

    .line 110
    .end local p1    # "userId":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
    throw p1
.end method
