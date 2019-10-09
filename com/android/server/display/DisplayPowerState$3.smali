.class Lcom/android/server/display/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    .line 310
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerState;->access$002(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 316
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 315
    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenState:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 316
    # getter for: Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$200(Lcom/android/server/display/DisplayPowerState;)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$300(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    nop

    :cond_21
    move v0, v1

    .line 317
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$400(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mScreenState:I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$100(Lcom/android/server/display/DisplayPowerState;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setState(II)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 318
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 319
    const-string v1, "DisplayPowerState"

    const-string v3, "Screen ready"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_41
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # setter for: Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerState;->access$602(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 322
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$3;->this$0:Lcom/android/server/display/DisplayPowerState;

    # invokes: Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$700(Lcom/android/server/display/DisplayPowerState;)V

    goto :goto_59

    .line 324
    :cond_4c
    # getter for: Lcom/android/server/display/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$500()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 325
    const-string v1, "DisplayPowerState"

    const-string v2, "Screen not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_59
    :goto_59
    return-void
.end method
