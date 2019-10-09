.class final Lcom/android/server/VibratorService$VibratorShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorShellCommand"
.end annotation


# static fields
.field private static final MAX_VIBRATION_MS:J = 0xc8L


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 1328
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1304
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1305
    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 1306
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Lcom/android/server/VibratorService$1;

    .line 1298
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private runVibrate()I
    .registers 13

    .line 1317
    const-string/jumbo v0, "runVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1320
    const/4 v0, 0x0

    :try_start_a
    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 1322
    .local v3, "zenMode":I
    if-eqz v3, :cond_46

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4
    :try_end_21
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_21} :catch_49
    .catchall {:try_start_a .. :try_end_21} :catchall_47

    .line 1323
    .local v4, "pw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    .line 1324
    :try_start_22
    const-string v6, "Ignoring because device is on DND mode "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    const-class v6, Landroid/provider/Settings$Global;

    const-string v7, "ZEN_MODE_"

    invoke-static {v6, v7, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_32} :catch_3e
    .catchall {:try_start_22 .. :try_end_32} :catchall_3c

    .line 1327
    nop

    .line 1328
    if-eqz v4, :cond_38

    :try_start_35
    invoke-static {v5, v4}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_38
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_35 .. :try_end_38} :catch_49
    .catchall {:try_start_35 .. :try_end_38} :catchall_47

    .line 1349
    :cond_38
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1327
    return v0

    .line 1328
    :catchall_3c
    move-exception v6

    goto :goto_40

    .line 1323
    :catch_3e
    move-exception v5

    :try_start_3f
    throw v5
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 1328
    :goto_40
    if-eqz v4, :cond_45

    :try_start_42
    invoke-static {v5, v4}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_45
    throw v6
    :try_end_46
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_42 .. :try_end_46} :catch_49
    .catchall {:try_start_42 .. :try_end_46} :catchall_47

    .line 1332
    .end local v3    # "zenMode":I
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_46
    goto :goto_4a

    .line 1349
    :catchall_47
    move-exception v0

    goto :goto_82

    .line 1330
    :catch_49
    move-exception v3

    .line 1334
    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1335
    .local v3, "duration":J
    const-wide/16 v5, 0xc8

    cmp-long v5, v3, v5

    if-gtz v5, :cond_79

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 1339
    .local v5, "description":Ljava/lang/String;
    if-nez v5, :cond_61

    .line 1340
    const-string v6, "Shell command"

    move-object v5, v6

    .line 1343
    .end local v5    # "description":Ljava/lang/String;
    .local v11, "description":Ljava/lang/String;
    :cond_61
    move-object v11, v5

    const/4 v5, -0x1

    .line 1344
    invoke-static {v3, v4, v5}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 1345
    .local v8, "effect":Landroid/os/VibrationEffect;
    iget-object v5, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v7, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    :try_end_74
    .catchall {:try_start_4a .. :try_end_74} :catchall_47

    .line 1347
    nop

    .line 1349
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1347
    return v0

    .line 1336
    .end local v8    # "effect":Landroid/os/VibrationEffect;
    .end local v11    # "description":Ljava/lang/String;
    :cond_79
    :try_start_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "maximum duration is 200"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_47

    .line 1349
    .end local v3    # "duration":J
    :goto_82
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1310
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1311
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result v0

    return v0

    .line 1313
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 4

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1356
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "Vibrator commands:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    const-string v2, "  help"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    const-string v2, "    Prints this help text."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    const-string v2, "  vibrate duration [description]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    const-string v2, "    Vibrates for duration milliseconds; ignored when device is on DND "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    const-string v2, "    (Do Not Disturb) mode."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2d} :catch_35
    .catchall {:try_start_5 .. :try_end_2d} :catchall_33

    .line 1364
    if-eqz v0, :cond_32

    invoke-static {v1, v0}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1365
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_32
    return-void

    .line 1364
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catchall_33
    move-exception v2

    goto :goto_37

    .line 1355
    :catch_35
    move-exception v1

    :try_start_36
    throw v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 1364
    :goto_37
    if-eqz v0, :cond_3c

    invoke-static {v1, v0}, Lcom/android/server/VibratorService$VibratorShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3c
    throw v2
.end method
