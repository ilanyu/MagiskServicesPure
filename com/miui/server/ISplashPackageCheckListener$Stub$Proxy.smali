.class Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISplashPackageCheckListener.java"

# interfaces
.implements Lcom/miui/server/ISplashPackageCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashPackageCheckListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 75
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, "com.miui.server.ISplashPackageCheckListener"

    return-object v0
.end method

.method public updateSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .registers 7
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    invoke-virtual {p1, v0, v1}, Lcom/miui/server/SplashPackageCheckInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 113
    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    :goto_17
    iget-object v1, p0, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_23

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    nop

    .line 120
    return-void

    .line 118
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateSplashPackageCheckInfoList(Ljava/util/List;)V
    .registers 6
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

    .line 93
    .local p1, "splashPackageCheckInfos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/server/SplashPackageCheckInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 95
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.miui.server.ISplashPackageCheckListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 97
    iget-object v1, p0, Lcom/miui/server/ISplashPackageCheckListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
