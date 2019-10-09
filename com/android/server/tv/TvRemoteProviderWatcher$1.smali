.class Lcom/android/server/tv/TvRemoteProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "TvRemoteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 199
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 202
    # getter for: Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderWatcher;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 203
    const-string v0, "TvRemoteProvWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received package manager broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1c
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    # getter for: Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->access$200(Lcom/android/server/tv/TvRemoteProviderWatcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher$1;->this$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    # getter for: Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderWatcher;->access$100(Lcom/android/server/tv/TvRemoteProviderWatcher;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method
