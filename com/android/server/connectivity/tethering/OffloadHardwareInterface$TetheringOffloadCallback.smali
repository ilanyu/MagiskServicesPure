.class Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;
.super Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TetheringOffloadCallback"
.end annotation


# instance fields
.field public final controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field public final handler:Landroid/os/Handler;

.field public final log:Landroid/net/util/SharedLog;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V
    .registers 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "cb"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
    .param p3, "sharedLog"    # Landroid/net/util/SharedLog;

    .line 301
    invoke-direct {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    .line 303
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    .line 304
    iput-object p3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->log:Landroid/net/util/SharedLog;

    .line 305
    return-void
.end method

.method public static synthetic lambda$onEvent$0(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;I)V
    .registers 5
    .param p1, "event"    # I

    .line 310
    packed-switch p1, :pswitch_data_3a

    .line 327
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->log:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported OffloadCallbackEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_38

    .line 324
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedLimitReached()V

    .line 325
    goto :goto_38

    .line 321
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onSupportAvailable()V

    .line 322
    goto :goto_38

    .line 318
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedUnsupported()V

    .line 319
    goto :goto_38

    .line 315
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStoppedError()V

    .line 316
    goto :goto_38

    .line 312
    :pswitch_32
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onStarted()V

    .line 313
    nop

    .line 329
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
    .end packed-switch
.end method

.method public static synthetic lambda$updateTimeout$1(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V
    .registers 8
    .param p1, "params"    # Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    .line 335
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->controlCb:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget v1, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->proto:I

    .line 336
    # invokes: Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->networkProtocolToOsConstant(I)I
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->access$100(I)I

    move-result v1

    iget-object v2, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v2, v2, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->src:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-short v3, v3, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    .line 337
    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v3

    iget-object v4, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-object v4, v4, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->addr:Ljava/lang/String;

    iget-object v5, p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->dst:Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;

    iget-short v5, v5, Landroid/hardware/tetheroffload/control/V1_0/IPv4AddrPortPair;->port:S

    .line 338
    invoke-static {v5}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v5

    .line 335
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;->onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V

    .line 339
    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .registers 4
    .param p1, "event"    # I

    .line 309
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$nv6rlSkSWXyiDHH-quQiDc8IaU0;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public updateTimeout(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V
    .registers 4
    .param p1, "params"    # Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    .line 334
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$TetheringOffloadCallback$iUwkHUaFse6usZpm7pExz3WDNoQ;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method
