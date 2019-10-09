.class Lcom/android/server/coverage/CoverageService$CoverageCommand;
.super Landroid/os/ShellCommand;
.source "CoverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/coverage/CoverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverageCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/coverage/CoverageService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/coverage/CoverageService$1;

    .line 66
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>()V

    return-void
.end method

.method private onDump()I
    .registers 10

    .line 104
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "dest":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 106
    const-string v0, "/data/local/tmp/coverage.ec"

    goto :goto_1f

    .line 108
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 110
    new-instance v2, Ljava/io/File;

    const-string v3, "coverage.ec"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 115
    .end local v1    # "f":Ljava/io/File;
    :cond_1f
    :goto_1f
    const-string/jumbo v1, "w"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 116
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v2, -0x1

    if-nez v1, :cond_2a

    .line 117
    return v2

    .line 121
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_6e

    .line 121
    .local v3, "output":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 123
    :try_start_35
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/jacoco/agent/rt/IAgent;->getExecutionData(Z)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v7, "Dumped coverage data to %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v6

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_56} :catch_5d
    .catchall {:try_start_35 .. :try_end_56} :catchall_5b

    .line 126
    :try_start_56
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_6e

    .line 129
    .end local v3    # "output":Ljava/io/BufferedOutputStream;
    nop

    .line 131
    return v6

    .line 126
    .restart local v3    # "output":Ljava/io/BufferedOutputStream;
    :catchall_5b
    move-exception v5

    goto :goto_5f

    .line 121
    :catch_5d
    move-exception v4

    :try_start_5e
    throw v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5b

    .line 126
    :goto_5f
    if-eqz v4, :cond_6a

    :try_start_61
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_6e

    goto :goto_6d

    :catch_65
    move-exception v6

    :try_start_66
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6d

    :cond_6a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    :goto_6d
    throw v5
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6e} :catch_6e

    .line 126
    .end local v3    # "output":Ljava/io/BufferedOutputStream;
    :catch_6e
    move-exception v3

    .line 127
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump coverage data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v2
.end method

.method private onReset()I
    .registers 3

    .line 140
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v0

    invoke-interface {v0}, Lorg/jacoco/agent/rt/IAgent;->reset()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Reset coverage data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 73
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 74
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onDump()I

    move-result v0

    return v0

    .line 75
    :cond_d
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 76
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onReset()I

    move-result v0

    return v0

    .line 78
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 88
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Coverage commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  dump [FILE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Dump code coverage to FILE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Reset coverage information."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method
