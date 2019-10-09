.class Lcom/android/server/media/MediaUpdateService$1;
.super Ljava/lang/Object;
.source "MediaUpdateService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaUpdateService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaUpdateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaUpdateService;

    .line 67
    iput-object p1, p0, Lcom/android/server/media/MediaUpdateService$1;->this$0:Lcom/android/server/media/MediaUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 70
    const-string v0, "MediaUpdateService"

    const-string/jumbo v1, "mediaextractor died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$1;->this$0:Lcom/android/server/media/MediaUpdateService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;
    invoke-static {v0, v1}, Lcom/android/server/media/MediaUpdateService;->access$002(Lcom/android/server/media/MediaUpdateService;Landroid/media/IMediaExtractorUpdateService;)Landroid/media/IMediaExtractorUpdateService;

    .line 72
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$1;->this$0:Lcom/android/server/media/MediaUpdateService;

    # invokes: Lcom/android/server/media/MediaUpdateService;->connect()V
    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$100(Lcom/android/server/media/MediaUpdateService;)V

    .line 73
    return-void
.end method
