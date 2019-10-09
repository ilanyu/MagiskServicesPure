.class public Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

.field private mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;
    .param p3, "callback"    # Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "KeyguardServiceWrapper"

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 46
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 47
    return-void
.end method


# virtual methods
.method public OnDoubleClickHome()V
    .registers 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->OnDoubleClickHome()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 65
    goto :goto_e

    .line 63
    :catch_6
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 84
    goto :goto_e

    .line 82
    :catch_6
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 93
    goto :goto_e

    .line 91
    :catch_6
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 229
    goto :goto_e

    .line 227
    :catch_6
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 304
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 305
    return-void
.end method

.method public hasLockscreenWallpaper()Z
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->hasLockscreenWallpaper()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isTrusted()Z
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public onBootCompleted()V
    .registers 4

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 257
    goto :goto_e

    .line 255
    :catch_6
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onDreamingStarted()V
    .registers 4

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 102
    goto :goto_e

    .line 100
    :catch_6
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onDreamingStopped()V
    .registers 4

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 111
    goto :goto_e

    .line 109
    :catch_6
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onFinishedGoingToSleep(IZ)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "cameraGestureTriggered"    # Z

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->onFinishedGoingToSleep(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 129
    goto :goto_e

    .line 127
    :catch_6
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onFinishedWakingUp()V
    .registers 4

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onFinishedWakingUp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 166
    goto :goto_e

    .line 164
    :catch_6
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 4

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 202
    goto :goto_e

    .line 200
    :catch_6
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 4

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 184
    goto :goto_e

    .line 182
    :catch_6
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onScreenTurningOff()V
    .registers 4

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 193
    goto :goto_e

    .line 191
    :catch_6
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 175
    goto :goto_e

    .line 173
    :catch_6
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .registers 4

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onShortPowerPressedGoHome()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 275
    goto :goto_e

    .line 273
    :catch_6
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->onStartedGoingToSleep(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 120
    goto :goto_e

    .line 118
    :catch_6
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onStartedWakingUp()V
    .registers 4

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onStartedWakingUp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 138
    goto :goto_e

    .line 136
    :catch_6
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public onStartedWakingUp(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 146
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 148
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v2}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0xff

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1f} :catch_22
    .catchall {:try_start_8 .. :try_end_1f} :catchall_20

    goto :goto_2a

    .line 155
    :catchall_20
    move-exception v2

    goto :goto_32

    .line 152
    :catch_22
    move-exception v2

    .line 153
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Remote Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 155
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :goto_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onSystemReady()V
    .registers 4

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 220
    goto :goto_e

    .line 218
    :catch_6
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->setCurrentUser(I)V

    .line 245
    :try_start_5
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 248
    goto :goto_13

    .line 246
    :catch_b
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 211
    goto :goto_e

    .line 209
    :catch_6
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setOccluded(ZZ)V
    .registers 6
    .param p1, "isOccluded"    # Z
    .param p2, "animate"    # Z

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 75
    goto :goto_e

    .line 73
    :catch_6
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 5
    .param p1, "switching"    # Z

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->setSwitchingUser(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 238
    goto :goto_e

    .line 236
    :catch_6
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 8
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 266
    goto :goto_e

    .line 264
    :catch_6
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 55
    goto :goto_e

    .line 53
    :catch_6
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
