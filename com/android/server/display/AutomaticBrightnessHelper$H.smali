.class Lcom/android/server/display/AutomaticBrightnessHelper$H;
.super Landroid/os/Handler;
.source "AutomaticBrightnessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 45
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_d

    .line 52
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/mqsas/sdk/event/BrightnessEvent;

    # invokes: Lcom/android/server/display/AutomaticBrightnessHelper;->report(Lmiui/mqsas/sdk/event/BrightnessEvent;)V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessHelper;->access$000(Lmiui/mqsas/sdk/event/BrightnessEvent;)V

    .line 53
    nop

    .line 58
    :goto_d
    return-void
.end method
