.class final Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;
.super Landroid/os/Handler;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGestureController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 234
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->this$0:Lcom/android/server/wm/MiuiGestureController;

    .line 235
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_7

    goto :goto_f

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->this$0:Lcom/android/server/wm/MiuiGestureController;

    # getter for: Lcom/android/server/wm/MiuiGestureController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->access$800(Lcom/android/server/wm/MiuiGestureController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 244
    :try_start_e
    monitor-exit v0

    .line 248
    :goto_f
    return-void

    .line 244
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v1
.end method
