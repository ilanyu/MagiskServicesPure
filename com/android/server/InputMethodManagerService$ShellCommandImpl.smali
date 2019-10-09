.class final Lcom/android/server/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShellCommandImpl"
.end annotation


# instance fields
.field final mService:Lcom/android/server/InputMethodManagerService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 4876
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

.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/InputMethodManagerService;

    .line 4807
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4808
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    .line 4809
    return-void
.end method

.method private onImeCommandHelp()V
    .registers 5

    .line 4880
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 4881
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "  "

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4880
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    nop

    .line 4882
    const/4 v1, 0x0

    :try_start_f
    const-string v2, "ime <command>:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4883
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4885
    const-string/jumbo v2, "list [-a] [-s]"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4887
    const-string/jumbo v2, "prints all enabled input methods."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4889
    const-string v2, "-a: see all input methods"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    const-string v2, "-s: only a single summary line of each"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4891
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4892
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4894
    const-string v2, "enable <ID>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4895
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4896
    const-string v2, "allows the given input method ID to be used."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4897
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4899
    const-string v2, "disable <ID>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4900
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4901
    const-string v2, "disallows the given input method ID to be used."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4902
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4904
    const-string/jumbo v2, "set <ID>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4905
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4906
    const-string/jumbo v2, "switches to the given input method ID."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4907
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4909
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4910
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4911
    const-string/jumbo v2, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4913
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4915
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_80} :catch_86
    .catchall {:try_start_f .. :try_end_80} :catchall_84

    .line 4916
    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 4917
    .end local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    return-void

    .line 4916
    .restart local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_84
    move-exception v2

    goto :goto_88

    .line 4880
    :catch_86
    move-exception v1

    :try_start_87
    throw v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_84

    .line 4916
    :goto_88
    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private refreshDebugProperties()I
    .registers 2

    .line 4858
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$DebugFlag;->refresh()V

    .line 4859
    const/4 v0, 0x0

    return v0
.end method

.method private setBindInstantServiceAllowed()I
    .registers 2

    .line 4852
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleSetBindInstantServiceAllowed(Landroid/os/ShellCommand;)I
    invoke-static {v0, p0}, Lcom/android/server/InputMethodManagerService;->access$2000(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4815
    const-string/jumbo v0, "refresh_debug_properties"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4816
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->refreshDebugProperties()I

    move-result v0

    return v0

    .line 4818
    :cond_e
    const-string/jumbo v0, "set-bind-instant-service-allowed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4819
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->setBindInstantServiceAllowed()I

    move-result v0

    return v0

    .line 4823
    :cond_1c
    const-string v0, "ime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 4824
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4825
    .local v0, "imeCommand":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_bc

    const-string v2, "help"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    const-string v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto/16 :goto_bc

    .line 4829
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_c6

    goto :goto_7c

    :sswitch_47
    const-string v2, "disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const/4 v2, 0x2

    goto :goto_7d

    :sswitch_51
    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const/4 v2, 0x4

    goto :goto_7d

    :sswitch_5c
    const-string/jumbo v2, "list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    move v2, v1

    goto :goto_7d

    :sswitch_67
    const-string/jumbo v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const/4 v2, 0x3

    goto :goto_7d

    :sswitch_72
    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    move v2, v3

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v2, v4

    :goto_7d
    packed-switch v2, :pswitch_data_dc

    .line 4841
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4842
    return v4

    .line 4839
    :pswitch_99
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    invoke-static {v1, p0}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4837
    :pswitch_a0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    invoke-static {v1, p0}, Lcom/android/server/InputMethodManagerService;->access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4835
    :pswitch_a7
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    invoke-static {v2, p0, v1}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 4833
    :pswitch_ae
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    invoke-static {v1, p0, v3}, Lcom/android/server/InputMethodManagerService;->access$1700(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;Z)I

    move-result v1

    return v1

    .line 4831
    :pswitch_b5
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    invoke-static {v1, p0}, Lcom/android/server/InputMethodManagerService;->access$1600(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I

    move-result v1

    return v1

    .line 4826
    :cond_bc
    :goto_bc
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->onImeCommandHelp()V

    .line 4827
    return v1

    .line 4846
    .end local v0    # "imeCommand":Ljava/lang/String;
    :cond_c0
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x4d6ada7d -> :sswitch_72
        0x1bc62 -> :sswitch_67
        0x32b09e -> :sswitch_5c
        0x6761d4f -> :sswitch_51
        0x639e22e8 -> :sswitch_47
    .end sparse-switch

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_ae
        :pswitch_a7
        :pswitch_a0
        :pswitch_99
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 4865
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4866
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "InputMethodManagerService commands:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4867
    const-string v2, "  help"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4868
    const-string v2, "    Prints this help text."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4869
    const-string v2, "  dump [options]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4870
    const-string v2, "    Synonym of dumpsys."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4871
    const-string v2, "  ime <command> [options]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4872
    const-string v2, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4873
    const-string v2, "  set-bind-instant-service-allowed true|false "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4874
    const-string v2, "    Set whether binding to services provided by instant apps is allowed."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_32} :catch_3a
    .catchall {:try_start_5 .. :try_end_32} :catchall_38

    .line 4876
    if-eqz v0, :cond_37

    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 4877
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :cond_37
    return-void

    .line 4876
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :catchall_38
    move-exception v2

    goto :goto_3c

    .line 4865
    :catch_3a
    move-exception v1

    :try_start_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    .line 4876
    :goto_3c
    if-eqz v0, :cond_41

    invoke-static {v1, v0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_41
    throw v2
.end method
