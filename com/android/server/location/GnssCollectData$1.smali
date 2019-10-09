.class Lcom/android/server/location/GnssCollectData$1;
.super Landroid/os/Handler;
.source "GnssCollectData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssCollectData;->startHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Looper;

    .line 208
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    .line 211
    .local v0, "message":I
    packed-switch v0, :pswitch_data_32

    goto :goto_31

    .line 230
    :pswitch_6
    # invokes: Lcom/android/server/location/GnssCollectData;->saveLog()V
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->access$600()V

    .line 231
    const/4 v1, 0x5

    # invokes: Lcom/android/server/location/GnssCollectData;->setCurrentState(I)V
    invoke-static {v1}, Lcom/android/server/location/GnssCollectData;->access$100(I)V

    .line 232
    goto :goto_31

    .line 226
    :pswitch_e
    # invokes: Lcom/android/server/location/GnssCollectData;->saveLoseStatus()V
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->access$500()V

    .line 227
    const/4 v1, 0x4

    # invokes: Lcom/android/server/location/GnssCollectData;->setCurrentState(I)V
    invoke-static {v1}, Lcom/android/server/location/GnssCollectData;->access$100(I)V

    .line 228
    goto :goto_31

    .line 221
    :pswitch_16
    # invokes: Lcom/android/server/location/GnssCollectData;->saveStopStatus()V
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->access$300()V

    .line 222
    const/4 v1, 0x3

    # invokes: Lcom/android/server/location/GnssCollectData;->setCurrentState(I)V
    invoke-static {v1}, Lcom/android/server/location/GnssCollectData;->access$100(I)V

    .line 223
    # invokes: Lcom/android/server/location/GnssCollectData;->saveState()V
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->access$400()V

    .line 224
    goto :goto_31

    .line 217
    :pswitch_21
    # invokes: Lcom/android/server/location/GnssCollectData;->saveFixStatus()V
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->access$200()V

    .line 218
    const/4 v1, 0x2

    # invokes: Lcom/android/server/location/GnssCollectData;->setCurrentState(I)V
    invoke-static {v1}, Lcom/android/server/location/GnssCollectData;->access$100(I)V

    .line 219
    goto :goto_31

    .line 213
    :pswitch_29
    # invokes: Lcom/android/server/location/GnssCollectData;->saveStartStatus()V
    invoke-static {}, Lcom/android/server/location/GnssCollectData;->access$000()V

    .line 214
    const/4 v1, 0x1

    # invokes: Lcom/android/server/location/GnssCollectData;->setCurrentState(I)V
    invoke-static {v1}, Lcom/android/server/location/GnssCollectData;->access$100(I)V

    .line 215
    nop

    .line 237
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_29
        :pswitch_21
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
