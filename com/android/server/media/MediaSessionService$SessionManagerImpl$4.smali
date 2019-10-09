.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$suggestedStream:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;III)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 1846
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1850
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1851
    .local v5, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    const-string v6, "MediaSessionService"

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_4e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1f} :catch_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1f} :catch_20

    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_56

    .line 1855
    :catch_20
    move-exception v0

    .line 1856
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot adjust volume: direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", suggestedStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_57

    .line 1853
    :catch_4e
    move-exception v0

    .line 1854
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaSessionService"

    const-string v2, "Error adjusting default volume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1859
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_56
    nop

    .line 1860
    :goto_57
    return-void
.end method
