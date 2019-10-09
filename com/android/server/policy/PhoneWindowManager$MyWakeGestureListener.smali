.class Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;
.super Lcom/android/server/policy/WakeGestureListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWakeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1102
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 1103
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/WakeGestureListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1104
    return-void
.end method


# virtual methods
.method public onWakeUp()V
    .registers 7

    .line 1108
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2400(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1110
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1111
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$2500(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v4

    const-string v5, "android.policy:GESTURE"

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z

    .line 1114
    :cond_26
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v1
.end method
