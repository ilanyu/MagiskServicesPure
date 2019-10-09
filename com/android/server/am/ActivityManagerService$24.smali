.class Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"    # Ljava/lang/String;

    .line 16416
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 16419
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 16420
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16423
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16424
    .local v0, "setting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 16425
    .local v1, "lines":I
    const/high16 v3, 0x30000

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x64

    sub-int/2addr v3, v4

    .line 16428
    .local v3, "maxDataFileSize":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    if-eqz v4, :cond_65

    if-lez v3, :cond_65

    .line 16430
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    const-string v6, "\n\n[[TRUNCATED]]"

    invoke-static {v5, v3, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4b} :catch_4c

    .line 16434
    goto :goto_65

    .line 16432
    :catch_4c
    move-exception v4

    .line 16433
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16436
    .end local v4    # "e":Ljava/io/IOException;
    :cond_65
    :goto_65
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v4, v4, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v4, :cond_78

    .line 16437
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16440
    :cond_78
    if-lez v1, :cond_13d

    .line 16441
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16444
    const/4 v4, 0x0

    .line 16446
    .local v4, "input":Ljava/io/InputStreamReader;
    :try_start_82
    new-instance v5, Ljava/lang/ProcessBuilder;

    const/16 v6, 0x11

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/system/bin/timeout"

    aput-object v7, v6, v2

    const-string v7, "-k"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v9, "15s"

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const-string v9, "10s"

    aput-object v9, v6, v7

    const/4 v7, 0x4

    const-string v9, "/system/bin/logcat"

    aput-object v9, v6, v7

    const/4 v7, 0x5

    const-string v9, "-v"

    aput-object v9, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v9, "threadtime"

    aput-object v9, v6, v7

    const/4 v7, 0x7

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0x8

    const-string v9, "events"

    aput-object v9, v6, v7

    const/16 v7, 0x9

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v9, "system"

    aput-object v9, v6, v7

    const/16 v7, 0xb

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xc

    const-string/jumbo v9, "main"

    aput-object v9, v6, v7

    const/16 v7, 0xd

    const-string v9, "-b"

    aput-object v9, v6, v7

    const/16 v7, 0xe

    const-string v9, "crash"

    aput-object v9, v6, v7

    const/16 v7, 0xf

    const-string v9, "-t"

    aput-object v9, v6, v7

    const/16 v7, 0x10

    .line 16449
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 16450
    invoke-virtual {v5, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_f5} :catch_12a
    .catchall {:try_start_82 .. :try_end_f5} :catchall_128

    .line 16452
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_f5
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_fc} :catch_fd
    .catchall {:try_start_f5 .. :try_end_fc} :catchall_128

    goto :goto_fe

    :catch_fd
    move-exception v6

    .line 16453
    :goto_fe
    :try_start_fe
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_105} :catch_106
    .catchall {:try_start_fe .. :try_end_105} :catchall_128

    goto :goto_107

    :catch_106
    move-exception v6

    .line 16454
    :goto_107
    :try_start_107
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 16457
    const/16 v6, 0x2000

    new-array v6, v6, [C

    .line 16458
    .local v6, "buf":[C
    :goto_115
    invoke-virtual {v4, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v8, v7

    .line 16458
    .local v8, "num":I
    if-lez v7, :cond_122

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_121} :catch_12a
    .catchall {:try_start_107 .. :try_end_121} :catchall_128

    goto :goto_115

    .line 16462
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v6    # "buf":[C
    .end local v8    # "num":I
    :cond_122
    :goto_122
    :try_start_122
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_126

    goto :goto_13d

    :catch_126
    move-exception v2

    goto :goto_13d

    :catchall_128
    move-exception v2

    goto :goto_135

    .line 16459
    :catch_12a
    move-exception v2

    .line 16460
    .local v2, "e":Ljava/io/IOException;
    :try_start_12b
    const-string v5, "ActivityManager"

    const-string v6, "Error running logcat"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_132
    .catchall {:try_start_12b .. :try_end_132} :catchall_128

    .line 16462
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_13d

    goto :goto_122

    :goto_135
    if-eqz v4, :cond_13c

    :try_start_137
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    goto :goto_13c

    :catch_13b
    move-exception v5

    :cond_13c
    :goto_13c
    throw v2

    .line 16466
    .end local v4    # "input":Ljava/io/InputStreamReader;
    :cond_13d
    :goto_13d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 16467
    return-void
.end method
