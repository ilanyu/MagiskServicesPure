.class public Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbPortManager$RawPortInfo;,
        Lcom/android/server/usb/UsbPortManager$PortInfo;,
        Lcom/android/server/usb/UsbPortManager$ServiceNotification;,
        Lcom/android/server/usb/UsbPortManager$DeathRecipient;,
        Lcom/android/server/usb/UsbPortManager$HALCallback;
    }
.end annotation


# static fields
.field private static final COMBO_SINK_DEVICE:I

.field private static final COMBO_SINK_HOST:I

.field private static final COMBO_SOURCE_DEVICE:I

.field private static final COMBO_SOURCE_HOST:I

.field private static final MSG_UPDATE_PORTS:I = 0x1

.field private static final PORT_INFO:Ljava/lang/String; = "port_info"

.field private static final TAG:Ljava/lang/String; = "UsbPortManager"

.field private static final USB_HAL_DEATH_COOKIE:I = 0x3e8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$PortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Landroid/hardware/usb/V1_0/IUsb;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSimulatedPorts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 77
    nop

    .line 78
    const/4 v0, 0x1

    invoke-static {v0, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    sput v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 79
    nop

    .line 80
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v2

    sput v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 81
    nop

    .line 82
    invoke-static {v1, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 83
    nop

    .line 84
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v0

    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 95
    new-instance v1, Lcom/android/server/usb/UsbPortManager$HALCallback;

    invoke-direct {v1, v0, p0}, Lcom/android/server/usb/UsbPortManager$HALCallback;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

    .line 108
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 117
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 719
    new-instance v1, Lcom/android/server/usb/UsbPortManager$1;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 123
    :try_start_33
    new-instance v1, Lcom/android/server/usb/UsbPortManager$ServiceNotification;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbPortManager$ServiceNotification;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    .line 125
    .local v1, "serviceNotification":Lcom/android/server/usb/UsbPortManager$ServiceNotification;
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string v3, "android.hardware.usb@1.0::IUsb"

    const-string v4, ""

    .line 126
    invoke-interface {v2, v3, v4, v1}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v2

    .line 128
    .local v2, "ret":Z
    if-nez v2, :cond_4c

    .line 129
    const/4 v3, 0x6

    const-string v4, "Failed to register service start notification"

    invoke-static {v3, v0, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4c} :catch_51

    .line 136
    .end local v1    # "serviceNotification":Lcom/android/server/usb/UsbPortManager$ServiceNotification;
    .end local v2    # "ret":Z
    :cond_4c
    nop

    .line 137
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbPortManager;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 138
    return-void

    .line 132
    :catch_51
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to register service start notification"

    invoke-static {v0, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbPortManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .line 71
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$100(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Ljava/lang/String;

    .line 71
    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbPortManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .line 71
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;

    .line 71
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbPortManager;Landroid/hardware/usb/V1_0/IUsb;)Landroid/hardware/usb/V1_0/IUsb;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Landroid/hardware/usb/V1_0/IUsb;

    .line 71
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbPortManager;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method private addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 29
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "currentMode"    # I
    .param p4, "canChangeMode"    # Z
    .param p5, "currentPowerRole"    # I
    .param p6, "canChangePowerRole"    # Z
    .param p7, "currentDataRole"    # I
    .param p8, "canChangeDataRole"    # Z
    .param p9, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v11, p5

    move/from16 v12, p7

    .line 603
    move-object/from16 v14, p9

    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eq v4, v6, :cond_42

    .line 604
    const/4 v4, 0x0

    .line 605
    .end local p4    # "canChangeMode":Z
    .local v4, "canChangeMode":Z
    if-eqz v3, :cond_3e

    if-eq v3, v2, :cond_3e

    .line 606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 606
    invoke-static {v5, v14, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 609
    const/4 v3, 0x0

    .line 616
    .end local v4    # "canChangeMode":Z
    .end local p3    # "currentMode":I
    .local v15, "currentMode":I
    .local v16, "canChangeMode":Z
    :cond_3e
    move v15, v3

    move/from16 v16, v4

    goto :goto_45

    .end local v15    # "currentMode":I
    .end local v16    # "canChangeMode":Z
    .restart local p3    # "currentMode":I
    .restart local p4    # "canChangeMode":Z
    :cond_42
    move/from16 v16, p4

    move v15, v3

    .end local p3    # "currentMode":I
    .end local p4    # "canChangeMode":Z
    .restart local v15    # "currentMode":I
    .restart local v16    # "canChangeMode":Z
    :goto_45
    invoke-static {v11, v12}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    .line 618
    .local v3, "supportedRoleCombinations":I
    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eqz v15, :cond_84

    if-eqz v11, :cond_84

    if-eqz v12, :cond_84

    .line 619
    if-eqz p6, :cond_62

    if-eqz p8, :cond_62

    .line 622
    sget v4, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int/2addr v4, v6

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int/2addr v4, v6

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v4, v6

    or-int/2addr v3, v4

    goto :goto_84

    .line 625
    :cond_62
    if-eqz p6, :cond_6f

    .line 628
    invoke-static {v9, v12}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v4

    or-int/2addr v3, v4

    .line 630
    invoke-static {v10, v12}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_84

    .line 632
    :cond_6f
    if-eqz p8, :cond_7c

    .line 635
    invoke-static {v11, v9}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v4

    or-int/2addr v3, v4

    .line 637
    invoke-static {v11, v10}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_84

    .line 639
    :cond_7c
    if-eqz v16, :cond_84

    .line 643
    sget v4, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v6, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    or-int/2addr v4, v6

    or-int/2addr v3, v4

    .line 648
    .end local v3    # "supportedRoleCombinations":I
    .local v17, "supportedRoleCombinations":I
    :cond_84
    :goto_84
    move/from16 v17, v3

    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 649
    .local v8, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v8, :cond_ac

    .line 650
    new-instance v3, Lcom/android/server/usb/UsbPortManager$PortInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Ljava/lang/String;I)V

    move-object v10, v3

    .line 651
    .end local v8    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v10, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v4, v15

    move/from16 v5, v16

    move v6, v11

    move/from16 v7, p6

    move v8, v12

    move/from16 v9, p8

    move-object v13, v10

    move/from16 v10, v17

    .end local v10    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v13, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    .line 655
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f8

    .line 658
    .end local v13    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v8    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :cond_ac
    iget-object v3, v8, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v3

    if-eq v2, v3, :cond_de

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 662
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v4

    .line 661
    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-static {v5, v14, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 666
    :cond_de
    move-object v3, v8

    move v4, v15

    move/from16 v5, v16

    move v6, v11

    move/from16 v7, p6

    move-object v13, v8

    move v8, v12

    .end local v8    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v13    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    move v0, v9

    move/from16 v9, p8

    move/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZI)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 670
    iput v0, v13, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    goto :goto_f8

    .line 672
    :cond_f5
    const/4 v0, 0x2

    iput v0, v13, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 675
    :goto_f8
    return-void
.end method

.method private connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 525
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v1, :cond_9

    .line 527
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_38

    return-void

    .line 531
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/hardware/usb/V1_0/IUsb;->getService()Landroid/hardware/usb/V1_0/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    .line 532
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$DeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/android/server/usb/UsbPortManager$DeathRecipient;-><init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/usb/V1_0/IUsb;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 533
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mHALCallback:Lcom/android/server/usb/UsbPortManager$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/V1_0/IUsb;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 534
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v1}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_27
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_27} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_28
    .catchall {:try_start_9 .. :try_end_27} :catchall_38

    goto :goto_35

    .line 538
    :catch_28
    move-exception v1

    .line 539
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_29
    const-string v2, "connectToProxy: usb hal service not responding"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_36

    .line 535
    :catch_2f
    move-exception v1

    .line 536
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "connectToProxy: usb hal service not found. Did the service fail to start?"

    invoke-static {p1, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 540
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_35
    nop

    .line 541
    :goto_36
    monitor-exit v0

    .line 542
    return-void

    .line 541
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 680
    return-void
.end method

.method private handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 685
    return-void
.end method

.method private handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB port removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbPortManager;->sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 690
    return-void
.end method

.method public static synthetic lambda$sendPortChangedBroadcastLocked$0(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 702
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "priority"    # I
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "msg"    # Ljava/lang/String;

    .line 706
    const-string v0, "UsbPortManager"

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 707
    if-eqz p1, :cond_a

    .line 708
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 710
    :cond_a
    return-void
.end method

.method private static logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 713
    const-string v0, "UsbPortManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    if-eqz p0, :cond_19

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 717
    :cond_19
    return-void
.end method

.method private sendPortChangedBroadcastLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .registers 5
    .param p1, "portInfo"    # Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 697
    const-string/jumbo v1, "port"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 698
    const-string/jumbo v1, "portStatus"

    iget-object v2, p1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/-$$Lambda$UsbPortManager$FUqGOOupcl6RrRkZBk-BnrRQyPI;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    return-void
.end method

.method private updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .registers 19
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
            ">;)V"
        }
    .end annotation

    .local p2, "newPortInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbPortManager$RawPortInfo;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 549
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "i":I
    :goto_a
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    const/4 v12, 0x3

    if-lez v0, :cond_1b

    .line 550
    .end local v0    # "i":I
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iput v12, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 549
    move v0, v1

    goto :goto_a

    .line 554
    .end local v1    # "i":I
    :cond_1b
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 555
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 556
    .local v13, "count":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2a
    move v14, v0

    .end local v0    # "i":I
    .local v14, "i":I
    if-ge v14, v13, :cond_4e

    .line 557
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 558
    .local v15, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    iget-object v1, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v3, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v4, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v5, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v6, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v7, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v8, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    move-object v0, v10

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 556
    .end local v15    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .restart local v0    # "i":I
    goto :goto_2a

    .line 563
    .end local v0    # "i":I
    .end local v13    # "count":I
    :cond_4e
    goto :goto_76

    .line 564
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_53
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 565
    .local v14, "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    iget-object v1, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->portId:Ljava/lang/String;

    iget v2, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    iget v3, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    iget-boolean v4, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    iget v5, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    iget-boolean v6, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    iget v7, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    iget-boolean v8, v14, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    move-object v0, v10

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 569
    .end local v14    # "currentPortInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    goto :goto_53

    .line 574
    :cond_76
    :goto_76
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .restart local v0    # "i":I
    :goto_7c
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    if-lez v0, :cond_ab

    .line 575
    .end local v0    # "i":I
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 576
    .local v0, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    iget v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    if-eq v2, v12, :cond_9d

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_ac

    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    goto :goto_a8

    .line 582
    .restart local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :pswitch_91
    invoke-direct {v10, v0, v11}, Lcom/android/server/usb/UsbPortManager;->handlePortChangedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 583
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 584
    goto :goto_a8

    .line 578
    :pswitch_97
    invoke-direct {v10, v0, v11}, Lcom/android/server/usb/UsbPortManager;->handlePortAddedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 579
    iput v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 580
    goto :goto_a8

    .line 586
    :cond_9d
    iget-object v2, v10, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 587
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 588
    invoke-direct {v10, v0, v11}, Lcom/android/server/usb/UsbPortManager;->handlePortRemovedLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 591
    .end local v0    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :goto_a8
    nop

    .line 574
    move v0, v1

    goto :goto_7c

    .line 592
    .end local v1    # "i":I
    :cond_ab
    return-void

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_97
        :pswitch_91
    .end packed-switch
.end method


# virtual methods
.method public addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 305
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 307
    const-string v1, "Port with same name already exists.  Please remove it first."

    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 308
    monitor-exit v0

    return-void

    .line 311
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding simulated port: portId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportedModes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 316
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .registers 13
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "canChangeMode"    # Z
    .param p4, "powerRole"    # I
    .param p5, "canChangePowerRole"    # Z
    .param p6, "dataRole"    # I
    .param p7, "canChangeDataRole"    # Z
    .param p8, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 322
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 324
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    if-nez v1, :cond_14

    .line 325
    const-string v2, "Cannot connect simulated port which does not exist."

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 326
    monitor-exit v0

    return-void

    .line 329
    :cond_14
    if-eqz p2, :cond_9d

    if-eqz p4, :cond_9d

    if-nez p6, :cond_1c

    goto/16 :goto_9d

    .line 335
    :cond_1c
    iget v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->supportedModes:I

    and-int/2addr v2, p2

    if-nez v2, :cond_3b

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulated port does not support mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 337
    monitor-exit v0

    return-void

    .line 340
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", canChangeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", powerRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", canChangePowerRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dataRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", canChangeDataRole="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iput p2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 348
    iput-boolean p3, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 349
    iput p4, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 350
    iput-boolean p5, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 351
    iput p6, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 352
    iput-boolean p7, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 353
    const/4 v2, 0x0

    invoke-direct {p0, p8, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 354
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    monitor-exit v0

    .line 355
    return-void

    .line 330
    .restart local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :cond_9d
    :goto_9d
    const-string v2, "Cannot connect simulated port in null mode, power role, or data role."

    invoke-virtual {p8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 332
    monitor-exit v0

    return-void

    .line 354
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    :catchall_a4
    move-exception v1

    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_a4

    throw v1
.end method

.method public disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 358
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    .line 360
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    if-nez v1, :cond_14

    .line 361
    const-string v2, "Cannot disconnect simulated port which does not exist."

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 362
    monitor-exit v0

    return-void

    .line 365
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 367
    iput-boolean v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeMode:Z

    .line 368
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 369
    iput-boolean v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangePowerRole:Z

    .line 370
    iput v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 371
    iput-boolean v2, v1, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->canChangeDataRole:Z

    .line 372
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 373
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 13
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 404
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 406
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 407
    :try_start_7
    const-string/jumbo v3, "is_simulation_active"

    const-wide v4, 0x10800000001L

    iget-object v6, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 408
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    .line 407
    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 410
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 411
    .local v4, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    const-string/jumbo v5, "usb_ports"

    const-wide v6, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/usb/UsbPortManager$PortInfo;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 412
    .end local v4    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    goto :goto_24

    .line 413
    :cond_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_41

    .line 415
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 416
    return-void

    .line 413
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v3
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 5
    .param p1, "portId"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 166
    .local v1, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return-object v2

    .line 167
    .end local v1    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .registers 6

    .line 153
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 155
    .local v1, "count":I
    new-array v2, v1, [Landroid/hardware/usb/UsbPort;

    .line 156
    .local v2, "result":[Landroid/hardware/usb/UsbPort;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v1, :cond_1d

    .line 157
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    aput-object v4, v2, v3

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 159
    .end local v3    # "i":I
    :cond_1d
    monitor-exit v0

    return-object v2

    .line 160
    .end local v1    # "count":I
    .end local v2    # "result":[Landroid/hardware/usb/UsbPort;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 377
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 379
    .local v1, "index":I
    if-gez v1, :cond_12

    .line 380
    const-string v2, "Cannot remove simulated port which does not exist."

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    monitor-exit v0

    return-void

    .line 384
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting simulated port: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 386
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 387
    .end local v1    # "index":I
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 391
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    const-string v1, "Removing all simulated ports and ending simulation."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 394
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 395
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 397
    :cond_19
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    .registers 26
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "newPowerRole"    # I
    .param p3, "newDataRole"    # I
    .param p4, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 172
    move-object/from16 v5, p4

    iget-object v6, v1, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 173
    :try_start_d
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    move-object v7, v0

    .line 174
    .local v7, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    if-nez v7, :cond_30

    .line 175
    if-eqz v5, :cond_2e

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such USB port: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 178
    :cond_2e
    monitor-exit v6

    return-void

    .line 182
    :cond_30
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    const/4 v8, 0x6

    if-nez v0, :cond_67

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempted to set USB port into unsupported role combination: portId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newPowerRole="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", newDataRole="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v8, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 187
    monitor-exit v6

    return-void

    .line 191
    :cond_67
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    move v9, v0

    .line 192
    .local v9, "currentDataRole":I
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    move v10, v0

    .line 193
    .local v10, "currentPowerRole":I
    if-ne v9, v4, :cond_82

    if-ne v10, v3, :cond_82

    .line 194
    if-eqz v5, :cond_80

    .line 195
    const-string v0, "No change."

    invoke-virtual {v5, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 197
    :cond_80
    monitor-exit v6

    return-void

    .line 206
    :cond_82
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    move v11, v0

    .line 207
    .local v11, "canChangeMode":Z
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    move v12, v0

    .line 208
    .local v12, "canChangePowerRole":Z
    iget-boolean v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    move v13, v0

    .line 209
    .local v13, "canChangeDataRole":Z
    iget-object v0, v7, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v0

    move v14, v0

    .line 211
    .local v14, "currentMode":I
    const/4 v0, 0x2

    const/4 v15, 0x1

    if-nez v12, :cond_98

    if-ne v10, v3, :cond_9c

    :cond_98
    if-nez v13, :cond_dc

    if-eq v9, v4, :cond_dc

    .line 213
    :cond_9c
    if-eqz v11, :cond_a5

    if-ne v3, v15, :cond_a5

    if-ne v4, v15, :cond_a5

    .line 215
    const/16 v16, 0x2

    .local v16, "newMode":I
    :goto_a4
    goto :goto_de

    .line 216
    .end local v16    # "newMode":I
    :cond_a5
    if-eqz v11, :cond_ae

    if-ne v3, v0, :cond_ae

    if-ne v4, v0, :cond_ae

    .line 218
    const/16 v16, 0x1

    goto :goto_a4

    .line 220
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found mismatch in supported USB role combinations while attempting to change role: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", newPowerRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", newDataRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v8, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 224
    monitor-exit v6

    return-void

    .line 227
    :cond_dc
    move/from16 v16, v14

    .restart local v16    # "newMode":I
    :goto_de
    move/from16 v17, v16

    .line 231
    .end local v16    # "newMode":I
    .local v17, "newMode":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting USB port mode and role: portId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", currentMode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {v14}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", currentPowerRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", currentDataRole="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {v9}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newMode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    move/from16 v8, v17

    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v15

    .end local v17    # "newMode":I
    .local v8, "newMode":I
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", newPowerRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", newDataRole="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    const/4 v15, 0x4

    invoke-static {v15, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 239
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-object v15, v0

    .line 240
    .local v15, "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    if-eqz v15, :cond_156

    .line 242
    iput v8, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentMode:I

    .line 243
    iput v3, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentPowerRole:I

    .line 244
    iput v4, v15, Lcom/android/server/usb/UsbPortManager$RawPortInfo;->currentDataRole:I

    .line 245
    const/4 v0, 0x0

    invoke-direct {v1, v5, v0}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    goto/16 :goto_232

    .line 246
    :cond_156
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v0, :cond_232

    .line 247
    if-eq v14, v8, :cond_1be

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    const-string v7, "Trying to set the USB port mode: portId="

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .local v18, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newMode="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {v8}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    const/4 v7, 0x6

    invoke-static {v7, v5, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    move-object v7, v0

    .line 259
    .local v7, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v0, 0x2

    iput v0, v7, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 260
    iput v8, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_18a
    .catchall {:try_start_d .. :try_end_18a} :catchall_234

    .line 262
    :try_start_18a
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v0, v2, v7}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_18f
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_18f} :catch_195
    .catchall {:try_start_18a .. :try_end_18f} :catchall_234

    .line 267
    nop

    .line 268
    move/from16 v19, v8

    move/from16 v20, v11

    goto :goto_1bc

    .line 263
    :catch_195
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    move/from16 v19, v8

    :try_start_198
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "newMode":I
    .local v19, "newMode":I
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v11

    const-string v11, "Failed to set the USB port mode: portId="

    .end local v11    # "canChangeMode":Z
    .local v20, "canChangeMode":Z
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newMode="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 266
    invoke-static {v11}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-static {v5, v8, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    :goto_1bc
    goto/16 :goto_232

    .line 270
    .end local v18    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v19    # "newMode":I
    .end local v20    # "canChangeMode":Z
    .local v7, "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v8    # "newMode":I
    .restart local v11    # "canChangeMode":Z
    :cond_1be
    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v11

    .end local v7    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v8    # "newMode":I
    .end local v11    # "canChangeMode":Z
    .restart local v18    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .restart local v19    # "newMode":I
    .restart local v20    # "canChangeMode":Z
    if-eq v10, v3, :cond_1fc

    .line 271
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    move-object v7, v0

    .line 272
    .local v7, "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v0, 0x1

    iput v0, v7, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 273
    iput v3, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_1d1
    .catchall {:try_start_198 .. :try_end_1d1} :catchall_234

    .line 275
    :try_start_1d1
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v0, v2, v7}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1d1 .. :try_end_1d6} :catch_1d7
    .catchall {:try_start_1d1 .. :try_end_1d6} :catchall_234

    .line 283
    goto :goto_1fc

    .line 276
    :catch_1d7
    move-exception v0

    .line 277
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_1d8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set the USB port power role: portId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newPowerRole="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 280
    invoke-static {v11}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-static {v5, v8, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 282
    monitor-exit v6

    return-void

    .line 285
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    :cond_1fc
    :goto_1fc
    if-eq v9, v4, :cond_232

    .line 286
    new-instance v0, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v0}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    move-object v7, v0

    .line 287
    .restart local v7    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    const/4 v0, 0x0

    iput v0, v7, Landroid/hardware/usb/V1_0/PortRole;->type:I

    .line 288
    iput v4, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I
    :try_end_209
    .catchall {:try_start_1d8 .. :try_end_209} :catchall_234

    .line 290
    :try_start_209
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v0, v2, v7}, Landroid/hardware/usb/V1_0/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V
    :try_end_20e
    .catch Landroid/os/RemoteException; {:try_start_209 .. :try_end_20e} :catch_20f
    .catchall {:try_start_209 .. :try_end_20e} :catchall_234

    .line 297
    goto :goto_232

    .line 291
    :catch_20f
    move-exception v0

    .line 292
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set the USB port data role: portId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", newDataRole="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/hardware/usb/V1_0/PortRole;->role:I

    .line 294
    invoke-static {v11}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-static {v5, v8, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "newRole":Landroid/hardware/usb/V1_0/PortRole;
    .end local v9    # "currentDataRole":I
    .end local v10    # "currentPowerRole":I
    .end local v12    # "canChangePowerRole":Z
    .end local v13    # "canChangeDataRole":Z
    .end local v14    # "currentMode":I
    .end local v15    # "sim":Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .end local v18    # "portInfo":Lcom/android/server/usb/UsbPortManager$PortInfo;
    .end local v19    # "newMode":I
    .end local v20    # "canChangeMode":Z
    :cond_232
    :goto_232
    monitor-exit v6

    .line 302
    return-void

    .line 301
    :catchall_234
    move-exception v0

    monitor-exit v6
    :try_end_236
    .catchall {:try_start_210 .. :try_end_236} :catchall_234

    throw v0
.end method

.method public systemReady()V
    .registers 4

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbPortManager;->mSystemReady:Z

    .line 142
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    if-eqz v0, :cond_14

    .line 144
    :try_start_7
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    invoke-interface {v0}, Landroid/hardware/usb/V1_0/IUsb;->queryPortStatus()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 148
    goto :goto_14

    .line 145
    :catch_d
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    const-string v2, "ServiceStart: Failed to query port status"

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method
