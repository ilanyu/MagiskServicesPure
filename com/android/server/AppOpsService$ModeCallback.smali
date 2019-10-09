.class final Lcom/android/server/AppOpsService$ModeCallback;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ModeCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IAppOpsCallback;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mFlags:I

.field final mWatchingUid:I

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;IIII)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "callback"    # Lcom/android/internal/app/IAppOpsCallback;
    .param p3, "watchingUid"    # I
    .param p4, "flags"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I

    .line 508
    iput-object p1, p0, Lcom/android/server/AppOpsService$ModeCallback;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p2, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 510
    iput p3, p0, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    .line 511
    iput p4, p0, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    .line 512
    iput p5, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallingUid:I

    .line 513
    iput p6, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallingPid:I

    .line 515
    :try_start_f
    iget-object v0, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a

    .line 517
    goto :goto_1b

    .line 516
    :catch_1a
    move-exception v0

    .line 518
    :goto_1b
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/android/server/AppOpsService$ModeCallback;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V

    .line 548
    return-void
.end method

.method public isWatchingUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 521
    const/4 v0, -0x2

    if-eq p1, v0, :cond_e

    iget v0, p0, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    if-ne v0, p1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 527
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ModeCallback{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, " watchinguid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget v1, p0, Lcom/android/server/AppOpsService$ModeCallback;->mWatchingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 531
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget v1, p0, Lcom/android/server/AppOpsService$ModeCallback;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v1, " from uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget v1, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 535
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget v1, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method unlinkToDeath()V
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/android/server/AppOpsService$ModeCallback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 543
    return-void
.end method
