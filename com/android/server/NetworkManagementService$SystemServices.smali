.class Lcom/android/server/NetworkManagementService$SystemServices;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemServices"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetd()Landroid/net/INetd;
    .registers 2

    .line 155
    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public registerLocalService(Lcom/android/server/NetworkManagementInternal;)V
    .registers 3
    .param p1, "nmi"    # Lcom/android/server/NetworkManagementInternal;

    .line 152
    const-class v0, Lcom/android/server/NetworkManagementInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 153
    return-void
.end method
