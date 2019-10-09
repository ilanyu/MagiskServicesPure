.class final Lcom/android/server/IpSecService$TunnelInterfaceRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TunnelInterfaceRecord"
.end annotation


# instance fields
.field private final mIkey:I

.field private final mInterfaceName:Ljava/lang/String;

.field private final mLocalAddress:Ljava/lang/String;

.field private final mOkey:I

.field private final mRemoteAddress:Ljava/lang/String;

.field private final mUnderlyingNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p2, "resourceId"    # I
    .param p3, "interfaceName"    # Ljava/lang/String;
    .param p4, "underlyingNetwork"    # Landroid/net/Network;
    .param p5, "localAddr"    # Ljava/lang/String;
    .param p6, "remoteAddr"    # Ljava/lang/String;
    .param p7, "ikey"    # I
    .param p8, "okey"    # I

    .line 804
    iput-object p1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    .line 805
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 807
    iput-object p3, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    .line 808
    iput-object p4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    .line 809
    iput-object p5, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    .line 810
    iput-object p6, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    .line 811
    iput p7, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    .line 812
    iput p8, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    .line 813
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    .line 786
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .registers 16

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    # getter for: Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    invoke-static {v0}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/INetd;->removeVirtualTunnelInterface(Ljava/lang/String;)V

    .line 824
    # getter for: Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/IpSecService;->access$100()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_44

    aget-object v7, v0, v3

    .line 825
    .local v7, "wildcardAddr":Ljava/lang/String;
    # getter for: Lcom/android/server/IpSecService;->DIRECTIONS:[I
    invoke-static {}, Lcom/android/server/IpSecService;->access$200()[I

    move-result-object v11

    array-length v12, v11

    move v13, v2

    :goto_20
    if-ge v13, v12, :cond_41

    aget v4, v11, v13

    move v14, v4

    .line 826
    .local v14, "direction":I
    if-nez v14, :cond_2a

    iget v4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    goto :goto_2c

    :cond_2a
    iget v4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    :goto_2c
    move v9, v4

    .line 827
    .local v9, "mark":I
    iget-object v4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    # getter for: Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    invoke-static {v4}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v4

    .line 828
    invoke-interface {v4}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 829
    move v6, v14

    move-object v8, v7

    invoke-interface/range {v4 .. v10}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_3e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_3e} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_45

    .line 825
    .end local v9    # "mark":I
    .end local v14    # "direction":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    .line 824
    .end local v7    # "wildcardAddr":Ljava/lang/String;
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 840
    :cond_44
    goto :goto_68

    .line 833
    :catch_45
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete VTI with interface name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_68
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 843
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 844
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 845
    return-void
.end method

.method public getIkey()I
    .registers 2

    .line 866
    iget v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 848
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOkey()I
    .registers 2

    .line 870
    iget v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .registers 2

    .line 862
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .registers 2

    .line 875
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public getUnderlyingNetwork()Landroid/net/Network;
    .registers 2

    .line 852
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    .line 880
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeTunnelInterfaceRecord(I)V

    .line 881
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{super="

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInterfaceName="

    .line 888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUnderlyingNetwork="

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalAddress="

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAddress="

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIkey="

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOkey="

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    .line 899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 885
    return-object v0
.end method
