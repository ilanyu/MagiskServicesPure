.class final Lcom/android/server/IpSecService$EncapSocketRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EncapSocketRecord"
.end annotation


# instance fields
.field private final mPort:I

.field private mSocket:Ljava/io/FileDescriptor;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILjava/io/FileDescriptor;I)V
    .registers 5
    .param p2, "resourceId"    # I
    .param p3, "socket"    # Ljava/io/FileDescriptor;
    .param p4, "port"    # I

    .line 916
    iput-object p1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->this$0:Lcom/android/server/IpSecService;

    .line 917
    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    .line 918
    iput-object p3, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 919
    iput p4, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    .line 920
    return-void
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .registers 4

    .line 925
    const-string v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 929
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    .line 930
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 937
    iget-object v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 933
    iget v0, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    return v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .registers 2

    .line 942
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    .line 947
    invoke-virtual {p0}, Lcom/android/server/IpSecService$EncapSocketRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeEncapSocketRecord(I)V

    .line 948
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{super="

    .line 953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSocket="

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mSocket:Ljava/io/FileDescriptor;

    .line 956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPort="

    .line 957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$EncapSocketRecord;->mPort:I

    .line 958
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    return-object v0
.end method
