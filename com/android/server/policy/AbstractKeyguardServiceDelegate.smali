.class public abstract Lcom/android/server/policy/AbstractKeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "AbstractKeyguardServiceDelegate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract OnDoubleClickHome()V
.end method

.method protected abstract enableUserActivity(Z)V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isShowingAndNotHidden()Z
.end method

.method public abstract keyguardDone()V
.end method

.method public abstract onScreenTurnedOnWithoutListener()V
.end method

.method public abstract onWakeKeyWhenKeyguardShowingTq(IZ)Z
.end method

.method public abstract pokeWakelock()V
.end method
