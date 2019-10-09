.class public Lcom/android/server/policy/MiuiKeyguardServiceDelegate;
.super Lcom/android/server/policy/AbstractKeyguardServiceDelegate;
.source "MiuiKeyguardServiceDelegate.java"


# instance fields
.field protected mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field protected mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field protected mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V
    .registers 4
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    .param p3, "powerManager"    # Landroid/os/PowerManager;

    .line 15
    invoke-direct {p0}, Lcom/android/server/policy/AbstractKeyguardServiceDelegate;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 17
    iput-object p2, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 18
    iput-object p3, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    return-void
.end method


# virtual methods
.method public OnDoubleClickHome()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->OnDoubleClickHome()V

    .line 54
    :cond_9
    return-void
.end method

.method protected enableUserActivity(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 22
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public keyguardDone()V
    .registers 1

    .line 35
    return-void
.end method

.method public onScreenTurnedOnWithoutListener()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 45
    :cond_9
    return-void
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "isDocked"    # Z

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public pokeWakelock()V
    .registers 5

    .line 48
    iget-object v0, p0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 49
    return-void
.end method
