.class Lcom/android/server/wm/MiuiGestureController$2;
.super Landroid/database/ContentObserver;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGestureController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/android/server/wm/MiuiGestureController$2;)V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # invokes: Lcom/android/server/wm/MiuiGestureController;->unregisterEventListener()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->access$600(Lcom/android/server/wm/MiuiGestureController;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->access$100(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v0

    if-nez v0, :cond_9

    .line 94
    return-void

    .line 96
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->access$200(Lcom/android/server/wm/MiuiGestureController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 98
    .local v0, "isOpen":Z
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$300(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/PointerEventDispatcher;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 99
    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$400(Lcom/android/server/wm/MiuiGestureController;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 100
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$300(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/PointerEventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;
    invoke-static {v2}, Lcom/android/server/wm/MiuiGestureController;->access$100(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z
    invoke-static {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->access$402(Lcom/android/server/wm/MiuiGestureController;Z)Z

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$500(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 103
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mGestureCallback:Lcom/android/server/wm/MiuiGestureController$GestureCallback;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$500(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGestureController$GestureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;
    invoke-static {v2}, Lcom/android/server/wm/MiuiGestureController;->access$100(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v1, v2}, Lcom/android/server/wm/MiuiGestureController$GestureCallback;->ensureActivitiesVisible(Lcom/android/server/wm/AppWindowToken;)V

    .line 107
    :cond_59
    if-nez v0, :cond_83

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mIsGestureOpen:Z
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$400(Lcom/android/server/wm/MiuiGestureController;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$100(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isGestureRunning()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$100(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$MiuiGestureController$2$YWFxSWYeLS1XesimrCtSL9Yw2lI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGestureController$2$YWFxSWYeLS1XesimrCtSL9Yw2lI;-><init>(Lcom/android/server/wm/MiuiGestureController$2;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setFinishCallback(Ljava/lang/Runnable;)V

    goto :goto_83

    .line 112
    :cond_7e
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureController$2;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # invokes: Lcom/android/server/wm/MiuiGestureController;->unregisterEventListener()V
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureController;->access$600(Lcom/android/server/wm/MiuiGestureController;)V

    .line 116
    :cond_83
    :goto_83
    return-void
.end method
