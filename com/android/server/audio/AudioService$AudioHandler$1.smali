.class Lcom/android/server/audio/AudioService$AudioHandler$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 5779
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler$1;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 5781
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler$1;->this$1:Lcom/android/server/audio/AudioService$AudioHandler;

    # invokes: Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->access$6300(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    .line 5782
    return-void
.end method
