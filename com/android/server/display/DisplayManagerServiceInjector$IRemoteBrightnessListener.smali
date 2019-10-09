.class public interface abstract Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener;
.super Ljava/lang/Object;
.source "DisplayManagerServiceInjector.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRemoteBrightnessListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerServiceInjector$IRemoteBrightnessListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
