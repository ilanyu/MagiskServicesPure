.class Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;,
        Lcom/android/server/tv/TvInputHardwareManager$Listener;,
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;,
        Lcom/android/server/tv/TvInputHardwareManager$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/TvInputHardwareManager$Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentMaxIndex:I

.field private final mHal:Lcom/android/server/tv/TvInputHal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHardwareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field private final mHdmiDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field private final mHdmiInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field private final mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field private final mInputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingHdmiDeviceEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    const-class v0, Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/server/tv/TvInputHal;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 100
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 102
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 103
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 105
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 112
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 114
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 115
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$1;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    .line 125
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 126
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    .line 127
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/tv/TvInputHardwareManager;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F

    move-result v0

    return v0
.end method

.method static synthetic access$2000([II)Z
    .registers 3
    .param p0, "x0"    # [I
    .param p1, "x1"    # I

    .line 84
    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;

    .line 84
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 84
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildHardwareListLocked()V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 172
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 174
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    .registers 7
    .param p1, "connection"    # Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I

    .line 263
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallingUidLocked()Ljava/lang/Integer;

    move-result-object v0

    .line 264
    .local v0, "connectionCallingUid":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResolvedUserIdLocked()Ljava/lang/Integer;

    move-result-object v1

    .line 265
    .local v1, "connectionResolvedUserId":Ljava/lang/Integer;
    if-eqz v0, :cond_1b

    if-eqz v1, :cond_1b

    .line 266
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v2, 0x1

    .line 265
    :goto_1c
    return v2
.end method

.method private findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "inputId"    # Ljava/lang/String;

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 425
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 426
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 427
    return v0

    .line 424
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 430
    .end local v0    # "i":I
    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method private findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .registers 6
    .param p1, "port"    # I

    .line 414
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;

    .line 415
    .local v1, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_21

    .line 416
    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v2

    if-ne v2, p1, :cond_21

    .line 417
    return-object v1

    .line 419
    .end local v1    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :cond_21
    goto :goto_6

    .line 420
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMediaStreamVolume()F
    .registers 3

    .line 548
    iget v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 510
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x73abbf83

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1f

    const v2, 0x727c71d1    # 5.0001804E30f

    if-eq v1, v2, :cond_15

    goto :goto_29

    :cond_15
    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_1f
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v4

    :goto_2a
    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_8c

    .line 534
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 525
    :pswitch_45
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 526
    .local v1, "streamType":I
    if-eq v1, v2, :cond_65

    .line 527
    return-void

    .line 513
    .end local v1    # "streamType":I
    :pswitch_4e
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 514
    .restart local v1    # "streamType":I
    if-eq v1, v2, :cond_57

    .line 515
    return-void

    .line 517
    :cond_57
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 518
    .local v2, "index":I
    iget v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    if-ne v2, v4, :cond_62

    .line 519
    return-void

    .line 521
    :cond_62
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 522
    nop

    .line 537
    .end local v1    # "streamType":I
    .end local v2    # "index":I
    :cond_65
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    nop

    .local v3, "i":I
    :goto_69
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    :try_start_6a
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_86

    .line 539
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v3

    .line 540
    .local v3, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v3, :cond_83

    .line 541
    invoke-virtual {v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->onMediaStreamVolumeChanged()V

    .line 538
    .end local v3    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_83
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_69

    .line 544
    .end local v3    # "i":I
    :cond_86
    monitor-exit v1

    .line 545
    return-void

    .line 544
    :catchall_88
    move-exception v2

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_6a .. :try_end_8a} :catchall_88

    throw v2

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_45
    .end packed-switch
.end method

.method private static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 312
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 313
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 314
    return v0

    .line 312
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v0    # "i":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private static intArrayContains([II)Z
    .registers 6
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 321
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    .line 322
    .local v3, "element":I
    if-ne v3, p1, :cond_b

    const/4 v0, 0x1

    return v0

    .line 321
    .end local v3    # "element":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 324
    :cond_e
    return v1
.end method

.method private processPendingHdmiDeviceEventsLocked()V
    .registers 5

    .line 492
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 493
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 494
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 495
    .local v2, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    nop

    .line 496
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v3

    .line 497
    .local v3, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-eqz v3, :cond_27

    .line 498
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 499
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 501
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    :cond_27
    goto :goto_6

    .line 502
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_28
    return-void
.end method

.method private updateVolume()V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 506
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 507
    return-void
.end method


# virtual methods
.method public acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    .registers 15
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .line 370
    if-eqz p2, :cond_60

    .line 373
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_5
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 375
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 376
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid deviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-exit v0

    return-object v2

    .line 379
    :cond_28
    invoke-direct {p0, v1, p4, p5}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 380
    new-instance v3, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 381
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_5d

    move-object v8, v3

    .line 383
    .local v8, "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :try_start_38
    invoke-interface {p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_51
    .catchall {:try_start_38 .. :try_end_40} :catchall_5d

    .line 387
    nop

    .line 388
    :try_start_41
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v1

    move-object v3, v8

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .end local v8    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    goto :goto_57

    .line 384
    .restart local v8    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :catch_51
    move-exception v3

    .line 385
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    .line 386
    monitor-exit v0

    return-object v2

    .line 390
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "hardware":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    :cond_57
    :goto_57
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 391
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_5d

    throw v1

    .line 371
    :cond_60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 12
    .param p1, "deviceId"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .line 270
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "oldInputId":Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 273
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to override previous registration: old = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 274
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_41
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_55
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_9d

    .line 284
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 285
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v4

    .line 286
    .local v4, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    if-nez v4, :cond_6b

    .line 287
    goto :goto_9a

    .line 289
    :cond_6b
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 290
    .local v6, "inputId":Ljava/lang/String;
    if-eqz v6, :cond_9a

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 294
    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 295
    nop

    .line 296
    move v7, v2

    goto :goto_8f

    :cond_8e
    move v7, v5

    .line 297
    .local v7, "state":I
    :goto_8f
    iget-object v8, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, v7, v2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 299
    monitor-exit v0

    return-void

    .line 283
    .end local v4    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v6    # "inputId":Ljava/lang/String;
    .end local v7    # "state":I
    :cond_9a
    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 303
    .end local v3    # "i":I
    :cond_9d
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 304
    .local v3, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-eqz v3, :cond_b8

    .line 305
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 306
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInputStateLocked()I
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->access$600(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v6

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 305
    invoke-virtual {v4, v5, v6, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 308
    .end local v1    # "oldInputId":Ljava/lang/String;
    .end local v3    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_b8
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_ba
    move-exception v1

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_3 .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method public addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/media/tv/TvInputInfo;

    .line 328
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v0

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_88

    .line 331
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_b
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "parentId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, v1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v2

    .line 334
    .local v2, "parentIndex":I
    if-ltz v2, :cond_69

    .line 337
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 338
    .local v3, "oldInputId":Ljava/lang/String;
    if-eqz v3, :cond_55

    .line 339
    sget-object v4, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to override previous registration: old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 340
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_55
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "parentIndex":I
    .end local v3    # "oldInputId":Ljava/lang/String;
    monitor-exit v0

    .line 346
    return-void

    .line 335
    .restart local v1    # "parentId":Ljava/lang/String;
    .restart local v2    # "parentIndex":I
    :cond_69
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") has invalid parentId."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    .end local v1    # "parentId":Ljava/lang/String;
    .end local v2    # "parentIndex":I
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_b .. :try_end_87} :catchall_85

    throw v1

    .line 329
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") has non-HDMI type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    .registers 13
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "callingUid"    # I
    .param p5, "resolvedUserId"    # I

    .line 460
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v1

    .line 462
    .local v1, "deviceId":I
    const/4 v2, 0x0

    if-gez v1, :cond_22

    .line 463
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid inputId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    monitor-exit v0

    return v2

    .line 466
    :cond_22
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 467
    .local v3, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object v4

    .line 468
    .local v4, "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    if-eqz v4, :cond_4d

    .line 470
    invoke-virtual {v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v2

    .line 471
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_3d

    .line 472
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 473
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 476
    :cond_3d
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    invoke-static {v4, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$700(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v5

    .line 477
    .local v5, "result":Z
    if-eqz v5, :cond_4b

    .line 478
    new-instance v6, Lcom/android/server/tv/TvInputHardwareManager$2;

    invoke-direct {v6, p0, v4, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    invoke-virtual {v3, v6}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 485
    :cond_4b
    monitor-exit v0

    return v5

    .line 487
    .end local v1    # "deviceId":I
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v4    # "hardwareImpl":Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .end local v5    # "result":Z
    :cond_4d
    monitor-exit v0

    .line 488
    return v2

    .line 487
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 552
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 553
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 555
    :cond_12
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_15
    const-string v2, "TvInputHardwareManager Info:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 558
    const-string/jumbo v2, "mConnections: deviceId -> Connection"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 560
    const/4 v2, 0x0

    move v3, v2

    .line 560
    .local v3, "i":I
    :goto_28
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 561
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 562
    .local v4, "deviceId":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 563
    .local v5, "mConnection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    .end local v4    # "deviceId":I
    .end local v5    # "mConnection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 566
    .end local v3    # "i":I
    :cond_58
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 568
    const-string/jumbo v3, "mHardwareList:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 570
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/tv/TvInputHardwareInfo;

    .line 571
    .local v4, "tvInputHardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 572
    .end local v4    # "tvInputHardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    goto :goto_6a

    .line 573
    :cond_7a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 575
    const-string/jumbo v3, "mHdmiDeviceList:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 577
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 578
    .local v4, "hdmiDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 579
    .end local v4    # "hdmiDeviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_8c

    .line 580
    :cond_9c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 582
    const-string/jumbo v3, "mHardwareInputIdMap: deviceId -> inputId"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 584
    move v3, v2

    .line 584
    .restart local v3    # "i":I
    :goto_a9
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_d9

    .line 585
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 586
    .local v4, "deviceId":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 587
    .local v5, "inputId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 584
    .end local v4    # "deviceId":I
    .end local v5    # "inputId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    .line 589
    .end local v3    # "i":I
    :cond_d9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 591
    const-string/jumbo v3, "mHdmiInputIdMap: id -> inputId"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 593
    nop

    .line 593
    .local v2, "i":I
    :goto_e6
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_116

    .line 594
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 595
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 596
    .local v4, "inputId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 593
    .end local v3    # "id":I
    .end local v4    # "inputId":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e6

    .line 598
    .end local v2    # "i":I
    :cond_116
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 600
    const-string/jumbo v2, "mInputMap: inputId -> inputInfo"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 602
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 603
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/tv/TvInputInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 604
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/media/tv/TvInputInfo;>;"
    goto :goto_12c

    .line 605
    :cond_15a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 606
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 607
    monitor-exit v1

    .line 608
    return-void

    .line 607
    :catchall_162
    move-exception v2

    monitor-exit v1
    :try_end_164
    .catchall {:try_start_15 .. :try_end_164} :catchall_162

    throw v2
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    .registers 14
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "resolvedUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "configsList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvStreamConfig;>;"
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v2

    .line 441
    .local v2, "deviceId":I
    if-gez v2, :cond_26

    .line 442
    sget-object v3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid inputId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    monitor-exit v1

    return-object v0

    .line 445
    :cond_26
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 446
    .local v3, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_34
    if-ge v6, v5, :cond_45

    aget-object v7, v4, v6

    .line 447
    .local v7, "config":Landroid/media/tv/TvStreamConfig;
    invoke-virtual {v7}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_42

    .line 448
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v7    # "config":Landroid/media/tv/TvStreamConfig;
    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 451
    .end local v2    # "deviceId":I
    .end local v3    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_45
    monitor-exit v1

    .line 452
    return-object v0

    .line 451
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 252
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getHdmiDeviceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 258
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 130
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_52

    .line 131
    const-string v0, "hdmi_control"

    .line 132
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object v0

    .line 133
    .local v0, "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    if-eqz v0, :cond_32

    .line 135
    :try_start_10
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    invoke-interface {v0, v1}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v0}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_28} :catch_29

    goto :goto_31

    .line 140
    :catch_29
    move-exception v1

    .line 141
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v3, "Error registering listeners to HdmiControlService:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    goto :goto_39

    .line 144
    :cond_32
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v2, "HdmiControlService is not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_39
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    .line 152
    .end local v0    # "hdmiControlService":Landroid/hardware/hdmi/IHdmiControlService;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_52
    return-void
.end method

.method public onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .registers 8
    .param p1, "info"    # Landroid/media/tv/TvInputHardwareInfo;
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .line 156
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-direct {v1, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    .line 158
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 159
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 161
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 163
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2d

    .line 164
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingHdmiDeviceEventsLocked()V

    .line 166
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_2d
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onDeviceUnavailable(I)V
    .registers 10
    .param p1, "deviceId"    # I

    .line 178
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 180
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_26

    .line 181
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceUnavailable: Cannot find a connection with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    monitor-exit v0

    return-void

    .line 184
    :cond_26
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 185
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 186
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 187
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v2

    .line 188
    .local v2, "info":Landroid/media/tv/TvInputHardwareInfo;
    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x0

    if-ne v3, v4, :cond_6e

    .line 190
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 190
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 192
    .local v4, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v6

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v7

    if-ne v6, v7, :cond_6d

    .line 193
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v5, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 194
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 195
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 197
    .end local v4    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_6d
    goto :goto_4a

    .line 199
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_6e
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 201
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "info":Landroid/media/tv/TvInputHardwareInfo;
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public onFirstFrameCaptured(II)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "streamId"    # I

    .line 234
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 236
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_25

    .line 237
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirstFrameCaptured: Cannot find a connection with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    monitor-exit v0

    return-void

    .line 241
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v2

    .line 242
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_32

    .line 243
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 244
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 246
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_32
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .line 206
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 208
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_25

    .line 209
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StreamConfigurationChanged: Cannot find a connection with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v0

    return-void

    .line 213
    :cond_25
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->access$500(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    .line 214
    .local v2, "previousConfigsLength":I
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 215
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 216
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_56

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_3c

    .line 217
    move v6, v5

    goto :goto_3e

    .line 216
    :cond_3c
    nop

    .line 217
    move v6, v4

    :goto_3e
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->access$500(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v7

    if-nez v7, :cond_46

    move v7, v5

    goto :goto_47

    :cond_46
    move v7, v4

    :goto_47
    if-eq v6, v7, :cond_56

    .line 218
    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 219
    # invokes: Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInputStateLocked()I
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->access$600(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v7

    .line 218
    invoke-virtual {v6, v5, v7, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 221
    :cond_56
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object v4
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_6a

    .line 222
    .local v4, "callback":Landroid/media/tv/ITvInputHardwareCallback;
    if-eqz v4, :cond_68

    .line 224
    :try_start_5c
    invoke-interface {v4, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6a

    .line 227
    goto :goto_68

    .line 225
    :catch_60
    move-exception v5

    .line 226
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_61
    sget-object v6, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v7, "error in onStreamConfigurationChanged"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    .end local v2    # "previousConfigsLength":I
    .end local v3    # "inputId":Ljava/lang/String;
    .end local v4    # "callback":Landroid/media/tv/ITvInputHardwareCallback;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_68
    :goto_68
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "callingUid"    # I
    .param p4, "resolvedUserId"    # I

    .line 399
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 401
    .local v1, "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    if-nez v1, :cond_25

    .line 402
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid deviceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    monitor-exit v0

    return-void

    .line 405
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v2

    if-ne v2, p2, :cond_3d

    .line 406
    invoke-direct {p0, v1, p3, p4}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_3d

    .line 409
    :cond_32
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 410
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    monitor-exit v0

    .line 411
    return-void

    .line 407
    .restart local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :cond_3d
    :goto_3d
    monitor-exit v0

    return-void

    .line 410
    .end local v1    # "connection":Lcom/android/server/tv/TvInputHardwareManager$Connection;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public removeHardwareInput(Ljava/lang/String;)V
    .registers 6
    .param p1, "inputId"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    .line 352
    .local v1, "hardwareIndex":I
    if-ltz v1, :cond_15

    .line 353
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 355
    :cond_15
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v2

    .line 356
    .local v2, "deviceIndex":I
    if-ltz v2, :cond_22

    .line 357
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 359
    .end local v1    # "hardwareIndex":I
    .end local v2    # "deviceIndex":I
    :cond_22
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method
