.class public interface abstract Lcom/android/server/wm/AppWindowContainerController$GestureCallback;
.super Ljava/lang/Object;
.source "AppWindowContainerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureCallback"
.end annotation


# virtual methods
.method public abstract ensureActivitiesVisible()V
.end method

.method public abstract getMiuiLaunchIconInfo()Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
.end method

.method public abstract isHomeAppToken()Z
.end method

.method public abstract launchHome()V
.end method

.method public abstract onGestureCancel()V
.end method

.method public abstract onGestureFinished()V
.end method

.method public abstract setLaunchRecentsBehind(Z)V
.end method
