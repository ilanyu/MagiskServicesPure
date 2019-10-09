.class public final synthetic Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;->f$0:Lcom/android/server/media/MediaSessionService;

    return-void
.end method


# virtual methods
.method public final onAudioPlayerActiveStateChanged(Landroid/media/AudioPlaybackConfiguration;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/media/-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw;->f$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1, p2}, Lcom/android/server/media/MediaSessionService;->lambda$onStart$0(Lcom/android/server/media/MediaSessionService;Landroid/media/AudioPlaybackConfiguration;Z)V

    return-void
.end method
