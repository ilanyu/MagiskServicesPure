.class public interface abstract Lcom/miui/server/ISplashPackageCheckListener;
.super Ljava/lang/Object;
.source "ISplashPackageCheckListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/ISplashPackageCheckListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateSplashPackageCheckInfoList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
