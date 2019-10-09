.class final Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClearStorageConnection"
.end annotation


# instance fields
.field mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 19720
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 19720
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 19725
    monitor-enter p0

    .line 19726
    nop

    .line 19727
    :try_start_2
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ClearStorageConnection;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 19728
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19729
    monitor-exit p0

    .line 19730
    return-void

    .line 19729
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 19734
    return-void
.end method
