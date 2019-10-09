.class Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/display/DisplayManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 34
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    .line 36
    return-void
.end method

.method private resetBrightnessConfiguration()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->resetBrightnessConfiguration()V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method private setBrightness()I
    .registers 6

    .line 70
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "brightnessText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 72
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no brightness specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    return v1

    .line 75
    :cond_11
    const/high16 v2, -0x40800000    # -1.0f

    .line 77
    .local v2, "brightness":F
    :try_start_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_19

    move v2, v3

    .line 79
    goto :goto_1a

    .line 78
    :catch_19
    move-exception v3

    .line 80
    :goto_1a
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_31

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_26

    goto :goto_31

    .line 86
    :cond_26
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    float-to-int v3, v2

    sget v4, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    mul-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService$BinderService;->setBrightness(I)V

    .line 87
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 40
    if-nez p1, :cond_7

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 44
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x59bb9cc8

    if-eq v2, v3, :cond_26

    const v3, 0x5fa7aa9c

    if-eq v2, v3, :cond_1b

    goto :goto_30

    :cond_1b
    const-string/jumbo v2, "set-brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x0

    goto :goto_30

    :cond_26
    const-string/jumbo v2, "reset-brightness-configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    :cond_30
    :goto_30
    packed-switch v1, :pswitch_data_42

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 48
    :pswitch_38
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result v1

    return v1

    .line 46
    :pswitch_3d
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result v1

    return v1

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_38
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 57
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Display manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 61
    const-string v1, "  set-brightness BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, "  reset-brightness-configuration"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "    Reset the brightness to its default configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 66
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 67
    return-void
.end method
