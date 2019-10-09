.class Lcom/android/server/pm/PackageManagerServiceInjector$2;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 869
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_50

    .line 872
    :cond_5
    :try_start_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    .line 873
    .local v0, "param":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "goon the pending installation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    # invokes: Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->getHandler()Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->access$200(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Handler;

    move-result-object v1

    .line 875
    .local v1, "h":Landroid/os/Handler;
    if-eqz v1, :cond_24

    .line 876
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->msg:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;->access$300(Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2d

    .line 878
    :cond_24
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handler dismissed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2d} :catch_2e

    .line 883
    .end local v0    # "param":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    .end local v1    # "h":Landroid/os/Handler;
    :goto_2d
    goto :goto_50

    .line 880
    :catch_2e
    move-exception v0

    .line 881
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed goon the pending installation due to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 881
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .end local v0    # "t":Ljava/lang/Throwable;
    nop

    .line 888
    :goto_50
    const/4 v0, 0x1

    return v0
.end method
