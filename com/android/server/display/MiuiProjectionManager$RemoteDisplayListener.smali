.class Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;
.super Ljava/lang/Object;
.source "MiuiProjectionManager.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MiuiProjectionManager;


# direct methods
.method private constructor <init>(Lcom/android/server/display/MiuiProjectionManager;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/MiuiProjectionManager;
    .param p2, "x1"    # Lcom/android/server/display/MiuiProjectionManager$1;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;-><init>(Lcom/android/server/display/MiuiProjectionManager;)V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .registers 18
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    move-object v0, p0

    .line 131
    if-eqz p1, :cond_76

    .line 132
    const-string v1, "MIUI_PROJECTION"

    const-string/jumbo v2, "remote display connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, v0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    sget-object v2, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_CONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    # setter for: Lcom/android/server/display/MiuiProjectionManager;->mState:Lcom/android/server/display/MiuiProjectionManager$State;
    invoke-static {v1, v2}, Lcom/android/server/display/MiuiProjectionManager;->access$302(Lcom/android/server/display/MiuiProjectionManager;Lcom/android/server/display/MiuiProjectionManager$State;)Lcom/android/server/display/MiuiProjectionManager$State;

    .line 135
    iget-object v1, v0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    # getter for: Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v1}, Lcom/android/server/display/MiuiProjectionManager;->access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v1

    const-string/jumbo v2, "mRemoteDisplayConnected"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v1, Landroid/hardware/display/WifiDisplay;

    const-string v6, "02:0e:55:53:62:34"

    const-string/jumbo v7, "miui-projection"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 139
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v2, v0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    # getter for: Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v2}, Lcom/android/server/display/MiuiProjectionManager;->access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v2

    const-string v4, "advertiseDisplay"

    const-class v5, Ljava/lang/Void;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object p1, v6, v3

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v8, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    const/4 v8, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    .line 139
    invoke-static {v2, v4, v5, v6}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 141
    const-string v2, "MIUI_PROJECTION"

    const-string/jumbo v4, "virtual display metrics:  wxh = %d x %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_76
    return-void
.end method

.method public onDisplayDisconnected()V
    .registers 4

    .line 147
    const-string v0, "MIUI_PROJECTION"

    const-string/jumbo v1, "remote display disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    # getter for: Lcom/android/server/display/MiuiProjectionManager;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/MiuiProjectionManager;->access$400(Lcom/android/server/display/MiuiProjectionManager;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    const-string/jumbo v1, "mRemoteDisplayConnected"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V

    .line 150
    return-void
.end method

.method public onDisplayError(I)V
    .registers 3
    .param p1, "error"    # I

    .line 154
    iget-object v0, p0, Lcom/android/server/display/MiuiProjectionManager$RemoteDisplayListener;->this$0:Lcom/android/server/display/MiuiProjectionManager;

    invoke-virtual {v0}, Lcom/android/server/display/MiuiProjectionManager;->stopProjection()V

    .line 155
    return-void
.end method

.method public onDisplayGenericMsgEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .line 158
    const-string v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayGenericMsgEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onDisplayKeyEvent(II)V
    .registers 6
    .param p1, "uniCode"    # I
    .param p2, "flags"    # I

    .line 162
    const-string v0, "MIUI_PROJECTION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
