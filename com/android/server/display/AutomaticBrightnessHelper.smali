.class public Lcom/android/server/display/AutomaticBrightnessHelper;
.super Ljava/lang/Object;
.source "AutomaticBrightnessHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;,
        Lcom/android/server/display/AutomaticBrightnessHelper$H;
    }
.end annotation


# static fields
.field private static final MSG_REPORT_BRIGHTNESS_EVENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessHelper"

.field private static sBrightnessCallback:Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmiui/mqsas/sdk/event/BrightnessEvent;)V
    .registers 1
    .param p0, "x0"    # Lmiui/mqsas/sdk/event/BrightnessEvent;

    .line 13
    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessHelper;->report(Lmiui/mqsas/sdk/event/BrightnessEvent;)V

    return-void
.end method

.method public static init(Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;)V
    .registers 3
    .param p0, "callBack"    # Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;

    .line 20
    sput-object p0, Lcom/android/server/display/AutomaticBrightnessHelper;->sBrightnessCallback:Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;

    .line 21
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessHelper$H;

    invoke-static {}, Lcom/android/server/MiuiBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessHelper$H;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessHelper;->sHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public static onBrightnessModeChanged(IFF)V
    .registers 4
    .param p0, "eventType"    # I
    .param p1, "oldValue"    # F
    .param p2, "newValue"    # F

    .line 32
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessHelper;->sBrightnessCallback:Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;

    if-eqz v0, :cond_9

    .line 33
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessHelper;->sBrightnessCallback:Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;->onBrightnessEvent(IFF)V

    .line 35
    :cond_9
    return-void
.end method

.method public static onBrightnessOverrideFromWindow(IFF)V
    .registers 4
    .param p0, "eventType"    # I
    .param p1, "oldValue"    # F
    .param p2, "newValue"    # F

    .line 38
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessHelper;->sBrightnessCallback:Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;

    if-eqz v0, :cond_9

    .line 39
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessHelper;->sBrightnessCallback:Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessHelper$BrightnessEventCallBack;->onBrightnessEvent(IFF)V

    .line 41
    :cond_9
    return-void
.end method

.method public static recordBrightnessEvent(Lmiui/mqsas/sdk/event/BrightnessEvent;)V
    .registers 3
    .param p0, "event"    # Lmiui/mqsas/sdk/event/BrightnessEvent;

    .line 26
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessHelper;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 27
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessHelper;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    :cond_e
    return-void
.end method

.method private static report(Lmiui/mqsas/sdk/event/BrightnessEvent;)V
    .registers 3
    .param p0, "event"    # Lmiui/mqsas/sdk/event/BrightnessEvent;

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
