.class Lcom/android/server/net/NetworkPolicyManagerService$2;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 770
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()I
    .registers 2

    .line 773
    const/16 v0, 0xa

    return v0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 4
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 778
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V

    .line 780
    monitor-exit v0

    .line 781
    return-void

    .line 780
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
