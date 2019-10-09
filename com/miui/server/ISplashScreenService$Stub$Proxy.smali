.class Lcom/miui/server/ISplashScreenService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISplashScreenService.java"

# interfaces
.implements Lcom/miui/server/ISplashScreenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/ISplashScreenService$Stub;
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

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/miui/server/ISplashScreenService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 184
    return-void
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    const-string v1, "com.miui.server.ISplashScreenService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 223
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_11
    iget-object v3, p0, Lcom/miui/server/ISplashScreenService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_22

    .line 226
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    nop

    .line 229
    return-void

    .line 226
    :catchall_22
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/miui/server/ISplashScreenService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .registers 7
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    const-string v1, "com.miui.server.ISplashScreenService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 238
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_11
    iget-object v3, p0, Lcom/miui/server/ISplashScreenService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 239
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_22

    .line 241
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    nop

    .line 244
    return-void

    .line 241
    :catchall_22
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    const-string v1, "com.miui.server.ISplashScreenService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 198
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 202
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_14
    iget-object v3, p0, Lcom/miui/server/ISplashScreenService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 203
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 204
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 205
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_36

    .local v1, "_result":Landroid/content/Intent;
    goto :goto_2d

    .line 207
    .end local v1    # "_result":Landroid/content/Intent;
    :cond_2c
    const/4 v1, 0x0

    .line 210
    .restart local v1    # "_result":Landroid/content/Intent;
    :goto_2d
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    nop

    .line 211
    nop

    .line 213
    return-object v1

    .line 210
    .end local v1    # "_result":Landroid/content/Intent;
    :catchall_36
    move-exception v1

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setSplashPackageListener(Lcom/miui/server/ISplashPackageCheckListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/miui/server/ISplashPackageCheckListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.miui.server.ISplashScreenService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/miui/server/ISplashPackageCheckListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 253
    iget-object v2, p0, Lcom/miui/server/ISplashScreenService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
