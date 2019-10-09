.class Lcom/android/server/pm/PackageManagerServiceInjectorProxy;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjectorProxy.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 5
    .param p0, "observer"    # Ljava/lang/Object;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    if-eqz p0, :cond_d

    instance-of v0, p0, Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v0, :cond_d

    .line 10
    move-object v0, p0

    check-cast v0, Landroid/content/pm/IPackageDeleteObserver2;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    :cond_d
    return-void
.end method
