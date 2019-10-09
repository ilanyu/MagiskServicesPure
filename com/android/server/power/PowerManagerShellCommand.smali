.class Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PowerManagerShellCommand.java"


# static fields
.field private static final LOW_POWER_MODE_ON:I = 0x1


# instance fields
.field final mInterface:Landroid/os/IPowerManager;


# direct methods
.method constructor <init>(Landroid/os/IPowerManager;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IPowerManager;

    .line 31
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    .line 33
    return-void
.end method

.method private runSetMode()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 57
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    move v2, v1

    .line 59
    .local v2, "mode":I
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_1c

    move v1, v3

    .line 63
    .end local v2    # "mode":I
    .local v1, "mode":I
    nop

    .line 64
    iget-object v2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mInterface:Landroid/os/IPowerManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_17

    goto :goto_18

    :cond_17
    move v4, v3

    :goto_18
    invoke-interface {v2, v4}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z

    .line 65
    return v3

    .line 60
    .end local v1    # "mode":I
    .restart local v2    # "mode":I
    :catch_1c
    move-exception v3

    .line 61
    .local v3, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 37
    if-nez p1, :cond_7

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 41
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 43
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x519c0c2e

    if-eq v2, v3, :cond_16

    goto :goto_21

    :cond_16
    const-string/jumbo v2, "set-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_29

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 45
    :cond_29
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetMode()I

    move-result v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2d} :catch_2e

    return v2

    .line 49
    :catch_2e
    move-exception v2

    .line 50
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public onHelp()V
    .registers 3

    .line 70
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 71
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Power manager (power) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const-string v1, "  set-mode MODE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string v1, "    sets the power mode of the device to MODE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v1, "    1 turns low power mode on and 0 turns low power mode off."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 79
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 80
    return-void
.end method
