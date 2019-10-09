.class Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;
.super Ljava/lang/Object;
.source "GnssNavigationMessageProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssNavigationMessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusChangedOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
        "Landroid/location/IGnssNavigationMessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStatus:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "status"    # I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;->mStatus:I

    .line 138
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;->mStatus:I

    invoke-interface {p1, v0}, Landroid/location/IGnssNavigationMessageListener;->onStatusChanged(I)V

    .line 143
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;->execute(Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method
