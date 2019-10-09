.class final Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnUnblocker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 1945
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "x1"    # Lcom/android/server/display/DisplayPowerController$1;

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onScreenOn(J)V
    .registers 11
    .param p1, "delayMillis"    # J

    .line 1953
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1954
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1955
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1956
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$2100(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget-wide v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeTime:J

    sub-long v3, v1, v3

    .line 1957
    .local v3, "duration":J
    cmp-long v5, v3, p1

    if-lez v5, :cond_29

    const-wide/16 v5, 0x0

    goto :goto_2b

    :cond_29
    sub-long v5, p1, v3

    .line 1958
    .local v5, "delayTime":J
    :goto_2b
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->access$2000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v7

    invoke-virtual {v7, v0, v5, v6}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1960
    return-void
.end method
