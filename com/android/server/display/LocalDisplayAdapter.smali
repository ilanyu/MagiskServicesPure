.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

.field private static final DEBUG:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .line 74
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    .line 75
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V

    return-void
.end method

.method static getPowerModeForState(I)I
    .registers 3
    .param p0, "state"    # I

    .line 146
    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v1, 0x6

    if-eq p0, v1, :cond_e

    packed-switch p0, :pswitch_data_12

    .line 156
    const/4 v0, 0x2

    return v0

    .line 152
    :pswitch_b
    const/4 v0, 0x3

    return v0

    .line 150
    :pswitch_d
    return v0

    .line 154
    :cond_e
    const/4 v0, 0x4

    return v0

    .line 148
    :cond_10
    const/4 v0, 0x0

    return v0

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private tryConnectDisplayLocked(I)V
    .registers 19
    .param p1, "builtInDisplayId"    # I

    move-object/from16 v8, p0

    .line 89
    move/from16 v9, p1

    invoke-static/range {p1 .. p1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v10

    .line 90
    .local v10, "displayToken":Landroid/os/IBinder;
    if-eqz v10, :cond_94

    .line 91
    nop

    .line 92
    invoke-static {v10}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v11

    .line 93
    .local v11, "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    if-nez v11, :cond_28

    .line 95
    const-string v0, "LocalDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid configs found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_28
    invoke-static {v10}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v12

    .line 100
    .local v12, "activeConfig":I
    if-gez v12, :cond_45

    .line 103
    const-string v0, "LocalDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No active config found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 107
    :cond_45
    invoke-static {v10}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    .line 108
    .local v0, "activeColorMode":I
    if-gez v0, :cond_62

    .line 112
    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get active color mode for display device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, -0x1

    .line 116
    .end local v0    # "activeColorMode":I
    .local v13, "activeColorMode":I
    :cond_62
    move v13, v0

    invoke-static {v10}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v14

    .line 117
    .local v14, "colorModes":[I
    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 118
    .local v15, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v15, :cond_8a

    .line 120
    new-instance v16, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v16

    move-object v1, v8

    move-object v2, v10

    move v3, v9

    move-object v4, v11

    move v5, v12

    move-object v6, v14

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)V

    .line 122
    .end local v15    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v1, v8, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_94

    .line 124
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v15    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_8a
    invoke-virtual {v15, v11, v12, v14, v13}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 127
    const/4 v0, 0x2

    invoke-virtual {v8, v15, v0}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 134
    .end local v11    # "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v12    # "activeConfig":I
    .end local v13    # "activeColorMode":I
    .end local v14    # "colorModes":[I
    .end local v15    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_94
    :goto_94
    return-void
.end method

.method private tryDisconnectDisplayLocked(I)V
    .registers 4
    .param p1, "builtInDisplayId"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 138
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_13

    .line 140
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 143
    :cond_13
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .registers 2

    .line 744
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .registers 5

    .line 79
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 81
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    .line 83
    sget-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_20

    aget v3, v0, v2

    .line 84
    .local v3, "builtInDisplayId":I
    invoke-direct {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    .line 83
    .end local v3    # "builtInDisplayId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 86
    :cond_20
    return-void
.end method
