.class final Lcom/android/server/display/MiuiProjectionManager;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;,
        Lcom/android/server/display/MiuiProjectionManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUI_PROJECTION"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mHandler:Landroid/os/Handler;

.field private mIface:Ljava/lang/String;

.field private mState:Lcom/android/server/display/MiuiProjectionManager$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "controller"    # Lcom/android/server/display/WifiDisplayController;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p3, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    .line 35
    sget-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/MiuiProjectionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;

    .line 15
    invoke-direct {p0}, Lcom/android/server/display/MiuiProjectionManager;->startProjectionInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/MiuiProjectionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;

    .line 15
    invoke-direct {p0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjectionInternal()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$State;)Lcom/android/server/display/MiuiProjectionManager$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;
    .param p1, "x1"    # Lcom/android/server/display/MiuiProjectionManager$State;

    .line 15
    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MiuiProjectionManager;

    .line 15
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object v0
.end method

.method private startProjectionInternal()V
    .registers 11

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "extDisplayHelperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "displayControllerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v3, "mRemoteDisplayConnected"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v2

    .line 53
    .local v2, "connected":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 54
    return-void

    .line 57
    :cond_1c
    iget-object v3, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 58
    const-string v3, "com.android.server.display.ExtendedRemoteDisplayHelper"

    invoke-direct {p0, v3}, Lcom/android/server/display/MiuiProjectionManager;->tryFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    const/4 v3, 0x0

    if-eqz v0, :cond_79

    .line 61
    const-string v4, "isAvailable"

    const-class v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v7}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v4

    .line 62
    .local v4, "isAvailable":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_79

    invoke-virtual {v4}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 64
    const-string/jumbo v5, "listen"

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v6, 0x1

    new-instance v9, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;

    invoke-direct {v9, p0, v3}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$1;)V

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget-object v9, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, p0, Lcom/android/server/display/MiuiProjectionManager;->mContext:Landroid/content/Context;

    aput-object v9, v8, v6

    invoke-static {v0, v5, v7, v8}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v5

    .line 66
    .local v5, "remoteDisplay":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Object;>;"
    if-eqz v5, :cond_79

    .line 67
    iget-object v3, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v6, "mExtRemoteDisplay"

    invoke-virtual {v5}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    sget-object v3, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v3, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 69
    return-void

    .line 74
    .end local v4    # "isAvailable":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    .end local v5    # "remoteDisplay":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Object;>;"
    :cond_79
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    new-instance v5, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;

    invoke-direct {v5, p0, v3}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$1;)V

    iget-object v6, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v5, v6, v3}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v3

    .line 75
    .local v3, "remoteDisplay":Landroid/media/RemoteDisplay;
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "mRemoteDisplay"

    invoke-static {v4, v5, v3}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    sget-object v4, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 77
    return-void
.end method

.method private stopProjectionInternal()V
    .registers 9

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "extRemoteDisplay":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v2, "mExtRemoteDisplay"

    const-class v3, Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v1

    .line 83
    .local v1, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 84
    invoke-virtual {v1}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "extDisplayHelperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "com.android.server.display.ExtendedRemoteDisplayHelper"

    invoke-direct {p0, v4}, Lcom/android/server/display/MiuiProjectionManager;->tryFindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_31

    .line 88
    const-string v4, "dispose"

    const-class v5, Ljava/lang/Void;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryCallStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 89
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "mExtRemoteDisplay"

    invoke-static {v4, v5, v2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    .end local v3    # "extDisplayHelperClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_31
    goto :goto_4e

    .line 92
    :cond_32
    iget-object v3, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v4, "mRemoteDisplay"

    const-class v5, Landroid/media/RemoteDisplay;

    invoke-static {v3, v4, v5}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v3

    .line 93
    .local v3, "remoteDisplay":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/media/RemoteDisplay;>;"
    invoke-virtual {v3}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RemoteDisplay;

    invoke-virtual {v4}, Landroid/media/RemoteDisplay;->dispose()V

    .line 94
    iget-object v4, p0, Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v5, "mRemoteDisplay"

    invoke-static {v4, v5, v2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .end local v3    # "remoteDisplay":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Landroid/media/RemoteDisplay;>;"
    :goto_4e
    sget-object v2, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    iput-object v2, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 97
    return-void
.end method

.method private tryFindClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "found":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 44
    goto :goto_1e

    .line 42
    :catch_7
    move-exception v1

    .line 43
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "MIUI_PROJECTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1e
    return-object v0
.end method


# virtual methods
.method public startProjection(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    if-ne v0, v1, :cond_2e

    .line 101
    const-string v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start projection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mIface:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/MiuiProjectionManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiProjectionManager$1;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_2e
    return-void
.end method

.method public stopProjection()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    if-eq v0, v1, :cond_18

    .line 116
    const-string v0, "MIUI_PROJECTION"

    const-string/jumbo v1, "stop projection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/MiuiProjectionManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/MiuiProjectionManager$2;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_18
    return-void
.end method
