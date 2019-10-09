.class public interface abstract Landroid/hardware/contexthub/V1_0/IContexthub;
.super Ljava/lang/Object;
.source "IContexthub.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/V1_0/IContexthub$Stub;,
        Landroid/hardware/contexthub/V1_0/IContexthub$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.contexthub@1.0::IContexthub"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthub;
    .registers 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 8
    return-object v0

    .line 11
    :cond_4
    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    .local v1, "iface":Landroid/os/IHwInterface;
    if-eqz v1, :cond_14

    instance-of v2, v1, Landroid/hardware/contexthub/V1_0/IContexthub;

    if-eqz v2, :cond_14

    .line 15
    move-object v0, v1

    check-cast v0, Landroid/hardware/contexthub/V1_0/IContexthub;

    return-object v0

    .line 18
    :cond_14
    new-instance v2, Landroid/hardware/contexthub/V1_0/IContexthub$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v2, "proxy":Landroid/hardware/contexthub/V1_0/IContexthub;
    :try_start_19
    invoke-interface {v2}, Landroid/hardware/contexthub/V1_0/IContexthub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    .local v4, "descriptor":Ljava/lang/String;
    const-string v5, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_33} :catch_38

    if-eqz v5, :cond_36

    .line 23
    return-object v2

    .line 25
    .end local v4    # "descriptor":Ljava/lang/String;
    :cond_36
    goto :goto_21

    .line 27
    :cond_37
    goto :goto_39

    .line 26
    :catch_38
    move-exception v3

    .line 29
    :goto_39
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/contexthub/V1_0/IContexthub;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 33
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Landroid/hardware/contexthub/V1_0/IContexthub;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "default"

    invoke-static {v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Ljava/lang/String;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/contexthub/V1_0/IContexthub;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/contexthub/V1_0/IContexthub;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Landroid/hardware/contexthub/V1_0/IContexthub;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/contexthub/V1_0/IContexthub;->getService(Ljava/lang/String;Z)Landroid/hardware/contexthub/V1_0/IContexthub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract disableNanoApp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enableNanoApp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHubs()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryApps(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unloadNanoApp(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
