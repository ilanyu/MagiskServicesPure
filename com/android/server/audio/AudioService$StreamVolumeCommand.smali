.class Lcom/android/server/audio/AudioService$StreamVolumeCommand;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamVolumeCommand"
.end annotation


# instance fields
.field public final mDevice:I

.field public final mFlags:I

.field public final mIndex:I

.field public final mStreamType:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;IIII)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "streamType"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I
    .param p5, "device"    # I

    .line 1894
    iput-object p1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    iput p2, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    .line 1896
    iput p3, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    .line 1897
    iput p4, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    .line 1898
    iput p5, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    .line 1899
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    .line 1904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    .line 1905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1903
    return-object v0
.end method
