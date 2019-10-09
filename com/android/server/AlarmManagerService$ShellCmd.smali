.class Lcom/android/server/AlarmManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4409
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "x1"    # Lcom/android/server/AlarmManagerService$1;

    .line 4409
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method getBinderService()Landroid/app/IAlarmManager;
    .registers 2

    .line 4412
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ShellCmd;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4417
    if-nez p1, :cond_7

    .line 4418
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4421
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4423
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x519f2558

    const/4 v4, 0x0

    if-eq v2, v3, :cond_27

    const v3, 0x7895dd04

    if-eq v2, v3, :cond_1c

    goto :goto_32

    :cond_1c
    const-string/jumbo v2, "set-timezone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_27
    const-string/jumbo v2, "set-time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    move v2, v4

    goto :goto_33

    :cond_32
    :goto_32
    move v2, v1

    :goto_33
    packed-switch v2, :pswitch_data_62

    .line 4432
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto :goto_5c

    .line 4428
    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 4429
    .local v2, "tz":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 4430
    return v4

    .line 4425
    .end local v2    # "tz":Ljava/lang/String;
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4426
    .local v2, "millis":J
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getBinderService()Landroid/app/IAlarmManager;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result v5
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_57} :catch_5d

    if-eqz v5, :cond_5b

    move v1, v4

    nop

    :cond_5b
    return v1

    .line 4432
    .end local v2    # "millis":J
    :goto_5c
    return v2

    .line 4434
    :catch_5d
    move-exception v2

    .line 4435
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4437
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3b
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 4442
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4443
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Alarm manager service (alarm) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4444
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4445
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4446
    const-string v1, "  set-time TIME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4447
    const-string v1, "    Set the system clock time to TIME where TIME is milliseconds"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4448
    const-string v1, "    since the Epoch."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4449
    const-string v1, "  set-timezone TZ"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4450
    const-string v1, "    Set the system timezone to TZ where TZ is an Olson id."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4451
    return-void
.end method
