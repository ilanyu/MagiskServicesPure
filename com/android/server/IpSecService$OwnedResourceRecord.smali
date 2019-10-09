.class abstract Lcom/android/server/IpSecService$OwnedResourceRecord;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Lcom/android/server/IpSecService$IResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OwnedResourceRecord"
.end annotation


# instance fields
.field protected final mResourceId:I

.field final pid:I

.field final synthetic this$0:Lcom/android/server/IpSecService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;I)V
    .registers 4
    .param p2, "resourceId"    # I

    .line 485
    iput-object p1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->this$0:Lcom/android/server/IpSecService;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1e

    .line 490
    iput p2, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->mResourceId:I

    .line 491
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->pid:I

    .line 492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->uid:I

    .line 494
    invoke-virtual {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/IpSecService$ResourceTracker;->take()V

    .line 495
    return-void

    .line 488
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Resource ID must not be INVALID_RESOURCE_ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract freeUnderlyingResources()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
.end method

.method protected getUserRecord()Lcom/android/server/IpSecService$UserRecord;
    .registers 3

    .line 502
    iget-object v0, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->this$0:Lcom/android/server/IpSecService;

    iget-object v0, v0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    return-object v0
.end method

.method public abstract invalidate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mResourceId="

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->mResourceId:I

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->pid:I

    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$OwnedResourceRecord;->uid:I

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    return-object v0
.end method
