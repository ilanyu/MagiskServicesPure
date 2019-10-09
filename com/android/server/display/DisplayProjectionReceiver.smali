.class final Lcom/android/server/display/DisplayProjectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayProjectionReceiver.java"


# static fields
.field public static final ACTION_START_PROJECTION:Ljava/lang/String; = "miui.action.START_PROJECTION"

.field public static final ACTION_STOP_PROJECTION:Ljava/lang/String; = "miui.action.STOP_PROJECTION"

.field private static final TAG:Ljava/lang/String; = "DisplayProjectionReceiver"


# instance fields
.field private mProjectionManager:Lcom/android/server/display/MiuiProjectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "controller"    # Lcom/android/server/display/WifiDisplayController;

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    new-instance v0, Lcom/android/server/display/MiuiProjectionManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/MiuiProjectionManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayProjectionReceiver;->mProjectionManager:Lcom/android/server/display/MiuiProjectionManager;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayProjectionReceiver;)Lcom/android/server/display/MiuiProjectionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayProjectionReceiver;

    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayProjectionReceiver;->mProjectionManager:Lcom/android/server/display/MiuiProjectionManager;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "miui.action.START_PROJECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 26
    const-string v1, "iface"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "iface":Ljava/lang/String;
    const-string v2, "DisplayProjectionReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start projection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-nez v1, :cond_2d

    .line 29
    return-void

    .line 31
    :cond_2d
    new-instance v2, Lcom/android/server/display/DisplayProjectionReceiver$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/DisplayProjectionReceiver$1;-><init>(Lcom/android/server/display/DisplayProjectionReceiver;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Lcom/android/server/display/DisplayProjectionReceiver$1;->start()V

    .line 38
    .end local v1    # "iface":Ljava/lang/String;
    goto :goto_4f

    :cond_36
    const-string/jumbo v1, "miui.action.STOP_PROJECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 39
    const-string v1, "DisplayProjectionReceiver"

    const-string/jumbo v2, "stop active projection "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Lcom/android/server/display/DisplayProjectionReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayProjectionReceiver$2;-><init>(Lcom/android/server/display/DisplayProjectionReceiver;)V

    .line 45
    invoke-virtual {v1}, Lcom/android/server/display/DisplayProjectionReceiver$2;->start()V

    .line 47
    :cond_4f
    :goto_4f
    return-void
.end method
