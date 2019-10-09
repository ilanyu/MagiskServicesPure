.class Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
.super Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageDeleteConfirmObserver"
.end annotation


# instance fields
.field delete:Z

.field finished:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 779
    invoke-direct {p0}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .registers 3
    .param p1, "delete"    # Z

    .line 784
    monitor-enter p0

    .line 785
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z

    .line 786
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    .line 787
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 788
    monitor-exit p0

    .line 789
    return-void

    .line 788
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
