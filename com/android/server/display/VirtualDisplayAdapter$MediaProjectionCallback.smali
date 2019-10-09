.class final Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionCallback"
.end annotation


# instance fields
.field private mAppToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 436
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    .line 437
    iput-object p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    .line 438
    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 4

    .line 442
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 443
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/display/VirtualDisplayAdapter;->handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    invoke-static {v1, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->access$200(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 444
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method
