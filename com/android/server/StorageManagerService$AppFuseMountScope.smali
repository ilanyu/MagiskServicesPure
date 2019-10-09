.class Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppFuseMountScope"
.end annotation


# instance fields
.field opened:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;III)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "mountId"    # I

    .line 2804
    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 2805
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(III)V

    .line 2802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 2806
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2820
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    if-eqz v0, :cond_18

    .line 2821
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v0

    iget v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget v3, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IVold;->unmountAppFuse(III)V

    .line 2822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 2824
    :cond_18
    return-void
.end method

.method public open()Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 2811
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 2812
    # getter for: Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1200(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v1

    iget v2, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iget v4, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IVold;->mountAppFuse(III)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 2811
    return-object v0

    .line 2813
    :catch_18
    move-exception v0

    .line 2814
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    const-string v2, "Failed to mount"

    invoke-direct {v1, v2, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
