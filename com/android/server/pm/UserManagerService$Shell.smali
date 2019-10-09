.class Lcom/android/server/pm/UserManagerService$Shell;
.super Landroid/os/ShellCommand;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 4040
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/UserManagerService$1;

    .line 4040
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4043
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$Shell;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/UserManagerService;->onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 3

    .line 4048
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 4049
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "User manager (user) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4050
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4052
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    const-string v1, "  list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4054
    const-string v1, "    Prints all users on the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4055
    return-void
.end method
