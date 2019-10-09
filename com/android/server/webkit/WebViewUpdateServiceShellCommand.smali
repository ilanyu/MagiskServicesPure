.class Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "WebViewUpdateServiceShellCommand.java"


# instance fields
.field final mInterface:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method constructor <init>(Landroid/webkit/IWebViewUpdateService;)V
    .registers 2
    .param p1, "service"    # Landroid/webkit/IWebViewUpdateService;

    .line 27
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    .line 29
    return-void
.end method

.method private enableFallbackLogic(Z)I
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 61
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->enableFallbackLogic(Z)V

    .line 62
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x0

    return v1
.end method

.method private enableMultiProcess(Z)I
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 83
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->enableMultiProcess(Z)V

    .line 84
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    return v1
.end method

.method private setWebViewImplementation()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 68
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "shellChosenPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->mInterface:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v2, v1}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "newPackage":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 71
    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return v4

    .line 74
    :cond_1b
    const-string v3, "Failed to switch to %s, the WebView implementation is now provided by %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    return v4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 33
    if-nez p1, :cond_7

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 37
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 39
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_84

    goto :goto_49

    :sswitch_16
    const-string v2, "enable-redundant-packages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move v2, v4

    goto :goto_4a

    :sswitch_20
    const-string v2, "disable-redundant-packages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    move v2, v3

    goto :goto_4a

    :sswitch_2a
    const-string v2, "disable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x4

    goto :goto_4a

    :sswitch_34
    const-string/jumbo v2, "set-webview-implementation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x2

    goto :goto_4a

    :sswitch_3f
    const-string v2, "enable-multiprocess"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x3

    goto :goto_4a

    :cond_49
    :goto_49
    move v2, v1

    :goto_4a
    packed-switch v2, :pswitch_data_9a

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto :goto_6b

    .line 49
    :pswitch_52
    invoke-direct {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result v2

    return v2

    .line 47
    :pswitch_57
    invoke-direct {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableMultiProcess(Z)I

    move-result v2

    return v2

    .line 45
    :pswitch_5c
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->setWebViewImplementation()I

    move-result v2

    return v2

    .line 43
    :pswitch_61
    invoke-direct {p0, v3}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableFallbackLogic(Z)I

    move-result v2

    return v2

    .line 41
    :pswitch_66
    invoke-direct {p0, v4}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->enableFallbackLogic(Z)I

    move-result v2
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_6a} :catch_6c

    return v2

    .line 51
    :goto_6b
    return v2

    .line 53
    :catch_6c
    move-exception v2

    .line 54
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    nop

    nop

    :sswitch_data_84
    .sparse-switch
        -0x6ebb0ce0 -> :sswitch_3f
        -0x52550e2f -> :sswitch_34
        0x19ffa1db -> :sswitch_2a
        0x311554d2 -> :sswitch_20
        0x7b67de57 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_66
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 90
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 91
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "WebView updater commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    const-string v1, "  enable-redundant-packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    Allow a fallback package to be installed and enabled even when a"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v1, "    more-preferred package is available. This command is useful when testing"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v1, "    fallback packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string v1, "  disable-redundant-packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v1, "    Disallow installing and enabling fallback packages when a more-preferred"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "    package is available."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "  set-webview-implementation PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "    Set the WebView implementation to the specified package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v1, "  enable-multiprocess"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "    Enable multi-process mode for WebView"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "  disable-multiprocess"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "    Disable multi-process mode for WebView"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 109
    return-void
.end method
