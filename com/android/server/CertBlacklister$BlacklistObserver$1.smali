.class Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/CertBlacklister$BlacklistObserver;
    .param p2, "x0"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 79
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$000(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 80
    :try_start_7
    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-virtual {v1}, Lcom/android/server/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "blacklist":Ljava/lang/String;
    if-eqz v1, :cond_66

    .line 82
    const-string v2, "CertBlacklister"

    const-string v3, "Certificate blacklist changed, updating..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_68

    .line 83
    const/4 v2, 0x0

    .line 86
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_17
    const-string/jumbo v3, "journal"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$000(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 88
    .local v3, "tmp":Ljava/io/File;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 90
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 95
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    # getter for: Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->access$100(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 96
    const-string v4, "CertBlacklister"

    const-string v5, "Certificate blacklist updated"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_50} :catch_56
    .catchall {:try_start_17 .. :try_end_50} :catchall_54

    .line 100
    .end local v3    # "tmp":Ljava/io/File;
    :try_start_50
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_68

    goto :goto_61

    :catchall_54
    move-exception v3

    goto :goto_62

    .line 97
    :catch_56
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    :try_start_57
    const-string v4, "CertBlacklister"

    const-string v5, "Failed to write blacklist"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_54

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_5e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    :goto_61
    goto :goto_66

    .line 100
    :goto_62
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 103
    .end local v1    # "blacklist":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_66
    :goto_66
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_68

    throw v1
.end method
