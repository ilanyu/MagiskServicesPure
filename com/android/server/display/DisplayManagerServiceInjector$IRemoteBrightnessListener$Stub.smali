.class public abstract Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub;
.super Landroid/os/Binder;
.source "DisplayManagerServiceInjector.java"

# interfaces
.implements Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.view.android.hardware.display.IBrightnessListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "android.view.android.hardware.display.IBrightnessListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method
