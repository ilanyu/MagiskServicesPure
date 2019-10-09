.class Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver2$Stub;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerProxy$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerProxy$1;

    .line 42
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    monitor-enter p0

    .line 54
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z

    .line 55
    if-ne p2, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 57
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method
