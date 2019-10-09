.class Lcom/android/server/ConnectivityService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 6060
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/ConnectivityService$1;

    .line 6060
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 9
    .param p1, "cmd"    # Ljava/lang/String;

    .line 6064
    if-nez p1, :cond_7

    .line 6065
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 6067
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 6069
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x8a07f3e

    const/4 v4, 0x0

    if-eq v2, v3, :cond_17

    goto :goto_21

    :cond_17
    const-string v2, "airplane-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v4

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_29

    .line 6089
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 6071
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 6072
    .local v2, "action":Ljava/lang/String;
    const-string v3, "enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 6073
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 6074
    return v4

    .line 6075
    :cond_3c
    const-string v3, "disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 6076
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 6077
    return v4

    .line 6078
    :cond_4a
    if-nez v2, :cond_67

    .line 6079
    iget-object v3, p0, Lcom/android/server/ConnectivityService$ShellCmd;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 6080
    .local v3, "cr":Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    .line 6082
    .local v5, "enabled":I
    if-nez v5, :cond_61

    const-string v6, "disabled"

    goto :goto_63

    :cond_61
    const-string v6, "enabled"

    :goto_63
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6083
    return v4

    .line 6085
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "enabled":I
    :cond_67
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->onHelp()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6a} :catch_6b

    .line 6086
    return v1

    .line 6091
    .end local v2    # "action":Ljava/lang/String;
    :catch_6b
    move-exception v2

    .line 6092
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6094
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public onHelp()V
    .registers 3

    .line 6099
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 6100
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Connectivity service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6101
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6102
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6103
    const-string v1, "  airplane-mode [enable|disable]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6104
    const-string v1, "    Turn airplane mode on or off."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6105
    const-string v1, "  airplane-mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6106
    const-string v1, "    Get airplane mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6107
    return-void
.end method
