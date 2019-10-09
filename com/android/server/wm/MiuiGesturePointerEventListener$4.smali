.class Lcom/android/server/wm/MiuiGesturePointerEventListener$4;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->launchHome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

.field final synthetic val$homeIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 1309
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;->val$homeIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1312
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # getter for: Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1100(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;->val$homeIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const-string v1, "homekey"

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->sendCloseSystemWindows(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$1200(Lcom/android/server/wm/MiuiGesturePointerEventListener;Ljava/lang/String;)V

    .line 1314
    return-void
.end method
