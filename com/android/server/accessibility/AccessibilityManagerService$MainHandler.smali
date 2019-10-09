.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2501
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2502
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2503
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2507
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_34

    .line 2508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 2509
    .local v0, "event":Landroid/view/KeyEvent;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2510
    .local v1, "policyFlags":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2511
    :try_start_13
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 2512
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 2514
    :cond_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_31

    .line 2515
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v1    # "policyFlags":I
    goto :goto_34

    .line 2514
    .restart local v0    # "event":Landroid/view/KeyEvent;
    .restart local v1    # "policyFlags":I
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3

    .line 2517
    .end local v0    # "event":Landroid/view/KeyEvent;
    .end local v1    # "policyFlags":I
    :cond_34
    :goto_34
    return-void
.end method
