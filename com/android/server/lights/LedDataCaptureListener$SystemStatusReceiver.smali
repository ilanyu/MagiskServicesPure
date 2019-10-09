.class final Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LedDataCaptureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LedDataCaptureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LedDataCaptureListener;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LedDataCaptureListener;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;->this$0:Lcom/android/server/lights/LedDataCaptureListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LedDataCaptureListener;Lcom/android/server/lights/LedDataCaptureListener$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/lights/LedDataCaptureListener;
    .param p2, "x1"    # Lcom/android/server/lights/LedDataCaptureListener$1;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;-><init>(Lcom/android/server/lights/LedDataCaptureListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 102
    # getter for: Lcom/android/server/lights/LedDataCaptureListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LedDataCaptureListener;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;->this$0:Lcom/android/server/lights/LedDataCaptureListener;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/lights/LedDataCaptureListener;->mIsScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/lights/LedDataCaptureListener;->access$202(Lcom/android/server/lights/LedDataCaptureListener;Z)Z

    .line 104
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;->this$0:Lcom/android/server/lights/LedDataCaptureListener;

    # setter for: Lcom/android/server/lights/LedDataCaptureListener;->mIsHasShowWhenUnlock:Z
    invoke-static {v1, v2}, Lcom/android/server/lights/LedDataCaptureListener;->access$302(Lcom/android/server/lights/LedDataCaptureListener;Z)Z

    .line 105
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;->this$0:Lcom/android/server/lights/LedDataCaptureListener;

    # getter for: Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;
    invoke-static {v1}, Lcom/android/server/lights/LedDataCaptureListener;->access$400(Lcom/android/server/lights/LedDataCaptureListener;)Lcom/android/server/lights/AnimationController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/AnimationController;->isAnimationRunning(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 106
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;->this$0:Lcom/android/server/lights/LedDataCaptureListener;

    # getter for: Lcom/android/server/lights/LedDataCaptureListener;->mAnimationController:Lcom/android/server/lights/AnimationController;
    invoke-static {v1}, Lcom/android/server/lights/LedDataCaptureListener;->access$400(Lcom/android/server/lights/LedDataCaptureListener;)Lcom/android/server/lights/AnimationController;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/lights/AnimationController;->stopAnimation(I)V

    goto :goto_4f

    .line 108
    :cond_39
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 109
    # getter for: Lcom/android/server/lights/LedDataCaptureListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LedDataCaptureListener;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/server/lights/LedDataCaptureListener$SystemStatusReceiver;->this$0:Lcom/android/server/lights/LedDataCaptureListener;

    # setter for: Lcom/android/server/lights/LedDataCaptureListener;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/server/lights/LedDataCaptureListener;->access$202(Lcom/android/server/lights/LedDataCaptureListener;Z)Z

    .line 112
    :cond_4f
    :goto_4f
    return-void
.end method
