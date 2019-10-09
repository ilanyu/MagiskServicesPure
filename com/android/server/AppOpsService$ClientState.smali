.class final Lcom/android/server/AppOpsService$ClientState;
.super Landroid/os/Binder;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ClientState"
.end annotation


# instance fields
.field final mAppToken:Landroid/os/IBinder;

.field final mPid:I

.field final mStartedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AppOpsService$Op;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 601
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    .line 602
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 603
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$ClientState;->mPid:I

    .line 605
    instance-of v0, p2, Landroid/os/Binder;

    if-nez v0, :cond_20

    .line 607
    :try_start_18
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 610
    goto :goto_20

    .line 608
    :catch_1f
    move-exception v0

    .line 612
    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .line 624
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 625
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1d

    .line 626
    iget-object v3, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v4, p0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Op;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;Z)V

    .line 625
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 628
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientState{mAppToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/AppOpsService$ClientState;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
