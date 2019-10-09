.class Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final ARG_DONT_SEND_BROADCAST:I = 0x0

.field private static final ARG_SEND_BROADCAST:I = 0x1

.field private static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 214
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 215
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2a

    goto :goto_29

    .line 237
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # getter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$400(Lcom/android/server/power/batterysaver/BatterySaverController;)[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    move-result-object v0

    array-length v2, v0

    :goto_e
    if-ge v1, v2, :cond_29

    aget-object v3, v0, v1

    .line 238
    .local v3, "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-interface {v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;->onSystemReady(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 237
    .end local v3    # "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 231
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    move v1, v3

    nop

    :cond_23
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->handleBatterySaverStateChanged(ZI)V

    .line 234
    nop

    .line 242
    :cond_29
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_7
    .end packed-switch
.end method

.method public postStateChanged(ZI)V
    .registers 5
    .param p1, "sendBroadcast"    # Z
    .param p2, "reason"    # I

    .line 219
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 220
    nop

    .line 219
    move v1, v0

    goto :goto_7

    .line 220
    :cond_6
    const/4 v1, 0x0

    .line 219
    :goto_7
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    return-void
.end method

.method public postSystemReady()V
    .registers 3

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    return-void
.end method
