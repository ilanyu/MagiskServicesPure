.class Lcom/android/server/connectivity/PacManager$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PacManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/PacManager;

    .line 105
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 110
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mPacUrl:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$000(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    .local v0, "pacUrl":Landroid/net/Uri;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    .line 112
    :cond_f
    const/16 v1, -0xbb

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 114
    .local v1, "oldTag":I
    :try_start_15
    # invokes: Lcom/android/server/connectivity/PacManager;->get(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->access$100(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1f
    .catchall {:try_start_15 .. :try_end_19} :catchall_1d

    .line 119
    .local v2, "file":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 120
    goto :goto_3c

    .line 119
    .end local v2    # "file":Ljava/lang/String;
    :catchall_1d
    move-exception v2

    goto :goto_71

    .line 115
    :catch_1f
    move-exception v2

    .line 116
    .local v2, "ioe":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 117
    .local v3, "file":Ljava/lang/String;
    :try_start_21
    const-string v4, "PacManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load PAC file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_1d

    .line 119
    .end local v2    # "ioe":Ljava/io/IOException;
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 120
    nop

    .line 119
    move-object v2, v3

    .line 121
    .end local v3    # "file":Ljava/lang/String;
    .local v2, "file":Ljava/lang/String;
    :goto_3c
    if-eqz v2, :cond_6b

    .line 122
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mProxyLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->access$200(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 123
    :try_start_45
    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # getter for: Lcom/android/server/connectivity/PacManager;->mCurrentPac:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/PacManager;->access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 124
    iget-object v4, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->setCurrentProxyScript(Ljava/lang/String;)Z
    invoke-static {v4, v2}, Lcom/android/server/connectivity/PacManager;->access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z

    .line 126
    :cond_56
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_68

    .line 127
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/connectivity/PacManager;->mHasDownloaded:Z
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PacManager;->access$502(Lcom/android/server/connectivity/PacManager;Z)Z

    .line 128
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->sendProxyIfNeeded()V
    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->access$600(Lcom/android/server/connectivity/PacManager;)V

    .line 129
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->longSchedule()V
    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->access$700(Lcom/android/server/connectivity/PacManager;)V

    goto :goto_70

    .line 126
    :catchall_68
    move-exception v4

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v4

    .line 131
    :cond_6b
    iget-object v3, p0, Lcom/android/server/connectivity/PacManager$1;->this$0:Lcom/android/server/connectivity/PacManager;

    # invokes: Lcom/android/server/connectivity/PacManager;->reschedule()V
    invoke-static {v3}, Lcom/android/server/connectivity/PacManager;->access$800(Lcom/android/server/connectivity/PacManager;)V

    .line 133
    :goto_70
    return-void

    .line 119
    .end local v2    # "file":Ljava/lang/String;
    :goto_71
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v2
.end method
