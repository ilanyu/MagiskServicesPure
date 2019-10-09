.class final Lcom/android/server/IpSecService$TransformRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformRecord"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

.field private final mSpi:Lcom/android/server/IpSecService$SpiRecord;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .registers 6
    .param p2, "resourceId"    # I
    .param p3, "config"    # Landroid/net/IpSecConfig;
    .param p4, "spi"    # Lcom/android/server/IpSecService$SpiRecord;
    .param p5, "socket"    # Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 589
    iput-object p1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 591
    iput-object p3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 592
    iput-object p4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    .line 593
    iput-object p5, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 595
    invoke-virtual {p4}, Lcom/android/server/IpSecService$SpiRecord;->setOwnedByTransform()V

    .line 596
    return-void
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .registers 9

    .line 613
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v5

    .line 615
    .local v5, "spi":I
    :try_start_6
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    # getter for: Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    invoke-static {v0}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v0

    .line 616
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 619
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 620
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 622
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 623
    invoke-virtual {v0}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v7

    .line 617
    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;III)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2d} :catch_2e
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_2d} :catch_2e

    .line 626
    goto :goto_47

    .line 624
    :catch_2e
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete SA with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 629
    return-void
.end method

.method public getConfig()Landroid/net/IpSecConfig;
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .registers 2

    .line 638
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public getSocketRecord()Lcom/android/server/IpSecService$EncapSocketRecord;
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    return-object v0
.end method

.method public getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    return-object v0
.end method

.method public invalidate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TransformRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeTransformRecord(I)V

    .line 634
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{super="

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSocket="

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$EncapSocketRecord;

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSpi.mResourceId="

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpi:Lcom/android/server/IpSecService$SpiRecord;

    iget v1, v1, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConfig="

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
