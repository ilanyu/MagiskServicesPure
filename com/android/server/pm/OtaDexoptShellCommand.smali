.class Lcom/android/server/pm/OtaDexoptShellCommand;
.super Landroid/os/ShellCommand;
.source "OtaDexoptShellCommand.java"


# instance fields
.field final mInterface:Landroid/content/pm/IOtaDexopt;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OtaDexoptService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/pm/OtaDexoptService;

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    .line 31
    return-void
.end method

.method private runOtaCleanup()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->cleanup()V

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method private runOtaDone()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 76
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->isDone()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 77
    const-string v1, "OTA complete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    .line 79
    :cond_12
    const-string v1, "OTA incomplete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    :goto_17
    const/4 v1, 0x0

    return v1
.end method

.method private runOtaNext()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method private runOtaPrepare()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->prepare()V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method private runOtaProgress()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->getProgress()F

    move-result v0

    .line 96
    .local v0, "progress":F
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 100
    .local v1, "pw":Ljava/io/PrintWriter;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 101
    return v6
.end method

.method private runOtaStep()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->dexoptNextPackage()V

    .line 86
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 35
    if-nez p1, :cond_8

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 39
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 41
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_94

    goto :goto_55

    :sswitch_15
    const-string v2, "cleanup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    goto :goto_56

    :sswitch_1f
    const-string/jumbo v2, "step"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x3

    goto :goto_56

    :sswitch_2a
    const-string/jumbo v2, "next"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x4

    goto :goto_56

    :sswitch_35
    const-string v2, "done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x2

    goto :goto_56

    :sswitch_3f
    const-string/jumbo v2, "prepare"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x0

    goto :goto_56

    :sswitch_4a
    const-string/jumbo v2, "progress"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x5

    goto :goto_56

    :cond_55
    :goto_55
    move v2, v1

    :goto_56
    packed-switch v2, :pswitch_data_ae

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto :goto_7c

    .line 53
    :pswitch_5e
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaProgress()I

    move-result v2

    return v2

    .line 51
    :pswitch_63
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaNext()I

    move-result v2

    return v2

    .line 49
    :pswitch_68
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaStep()I

    move-result v2

    return v2

    .line 47
    :pswitch_6d
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaDone()I

    move-result v2

    return v2

    .line 45
    :pswitch_72
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaCleanup()I

    move-result v2

    return v2

    .line 43
    :pswitch_77
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaPrepare()I

    move-result v2
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_7b} :catch_7d

    return v2

    .line 55
    :goto_7c
    return v2

    .line 57
    :catch_7d
    move-exception v2

    .line 58
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    nop

    :sswitch_data_94
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_4a
        -0x12f9f2f9 -> :sswitch_3f
        0x2f2382 -> :sswitch_35
        0x338af3 -> :sswitch_2a
        0x3606cc -> :sswitch_1f
        0x331156a4 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 106
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 107
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "OTA Dexopt (ota) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "  prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v1, "    Prepare an OTA dexopt pass, collecting all packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v1, "  done"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v1, "    Replies whether the OTA is complete or not."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v1, "  step"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "    OTA dexopt the next package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "  next"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "    Get parameters for OTA dexopt of the next package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "  cleanup"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v1, "    Clean up internal states. Ends an OTA session."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return-void
.end method
