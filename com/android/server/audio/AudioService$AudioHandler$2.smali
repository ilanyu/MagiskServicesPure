.class Lcom/android/server/audio/AudioService$AudioHandler$2;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$AudioHandler;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$AudioHandler;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5784
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$2;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 5786
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler$2;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    # invokes: Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->access$6300(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    .line 5787
    const/4 v0, 0x1

    return v0
.end method
