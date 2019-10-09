.class Lcom/android/server/wm/WindowState$2;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/wm/WindowState$PowerManagerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/android/server/wm/WindowState$2;->val$service:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInteractive()Z
    .registers 2

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/WindowState$2;->val$service:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public wakeUp(JLjava/lang/String;)V
    .registers 5
    .param p1, "time"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/android/server/wm/WindowState$2;->val$service:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 703
    return-void
.end method
