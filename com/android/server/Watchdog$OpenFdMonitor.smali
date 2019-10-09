.class public final Lcom/android/server/Watchdog$OpenFdMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenFdMonitor"
.end annotation


# static fields
.field private static final FD_HIGH_WATER_MARK:I = 0xc


# instance fields
.field private final mDumpDir:Ljava/io/File;

.field private final mFdHighWaterMark:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p1, "dumpDir"    # Ljava/io/File;
    .param p2, "fdThreshold"    # Ljava/io/File;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput-object p1, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    .line 1006
    iput-object p2, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    .line 1007
    return-void
.end method

.method public static create()Lcom/android/server/Watchdog$OpenFdMonitor;
    .registers 8

    .line 973
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 974
    return-object v1

    .line 980
    :cond_6
    const-string v0, "dalvik.vm.stack-trace-dir"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "dumpDirStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 982
    return-object v1

    .line 987
    :cond_15
    :try_start_15
    sget v2, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v2}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v2
    :try_end_1b
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_1b} :catch_44

    move-object v1, v2

    .line 991
    .local v1, "rlimit":Landroid/system/StructRlimit;
    nop

    .line 990
    nop

    .line 1000
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/self/fd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/system/StructRlimit;->rlim_cur:J

    const-wide/16 v6, 0xc

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v2, "fdThreshold":Ljava/io/File;
    new-instance v3, Lcom/android/server/Watchdog$OpenFdMonitor;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Lcom/android/server/Watchdog$OpenFdMonitor;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v3

    .line 988
    .end local v1    # "rlimit":Landroid/system/StructRlimit;
    .end local v2    # "fdThreshold":Ljava/io/File;
    :catch_44
    move-exception v2

    .line 989
    .local v2, "errno":Landroid/system/ErrnoException;
    const-string v3, "Watchdog"

    const-string v4, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 990
    return-object v1
.end method

.method private dumpOpenDescriptors()V
    .registers 7

    .line 1011
    :try_start_0
    const-string v0, "anr_fd_"

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1012
    .local v0, "dumpFile":Ljava/io/File;
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "/system/bin/lsof"

    aput-object v4, v3, v2

    const-string v2, "-p"

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    .line 1013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 1014
    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 1015
    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 1016
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 1018
    .local v1, "proc":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 1019
    .local v2, "returnCode":I
    if-eqz v2, :cond_58

    .line 1020
    const-string v3, "Watchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to dump open descriptors, lsof return code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_58} :catch_59
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_58} :catch_59

    .line 1026
    .end local v0    # "dumpFile":Ljava/io/File;
    .end local v1    # "proc":Ljava/lang/Process;
    .end local v2    # "returnCode":I
    :cond_58
    goto :goto_70

    .line 1024
    :catch_59
    move-exception v0

    .line 1025
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to dump open descriptors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_70
    return-void
.end method


# virtual methods
.method public monitor()Z
    .registers 2

    .line 1034
    iget-object v0, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1035
    invoke-direct {p0}, Lcom/android/server/Watchdog$OpenFdMonitor;->dumpOpenDescriptors()V

    .line 1036
    const/4 v0, 0x1

    return v0

    .line 1039
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
