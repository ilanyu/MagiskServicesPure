.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlsaDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbAlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mHasMidiFeature:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

.field private mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 70
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 72
    return-void
.end method

.method private declared-synchronized deselectAlsaDevice()V
    .registers 2

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_d

    .line 111
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->stop()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 114
    :cond_d
    monitor-exit p0

    return-void

    .line 109
    :catchall_f
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    throw v0
.end method

.method private getAlsaDeviceListIndexFor(Ljava/lang/String;)I
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 118
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 119
    return v0

    .line 117
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "index":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getAlsaDeviceListIndexFor(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_10

    .line 128
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    return-object v1

    .line 130
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 5
    .param p1, "alsaDevice"    # Lcom/android/server/usb/UsbAlsaDevice;

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_8

    .line 91
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 99
    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "usb_audio_automatic_routing_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_21

    .line 101
    .local v0, "isDisabled":I
    if-eqz v0, :cond_1a

    .line 102
    monitor-exit p0

    return-void

    .line 105
    :cond_1a
    :try_start_1a
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 106
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->start()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    .line 107
    monitor-exit p0

    return-void

    .line 89
    .end local v0    # "isDisabled":I
    .end local p1    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_21
    move-exception p1

    monitor-exit p0

    .line 89
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    throw p1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 15
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 300
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 302
    .local v0, "token":J
    const-string v2, "cards_parser"

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v3}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 304
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbAlsaDevice;

    .line 305
    .local v3, "usbAlsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    const-string v4, "alsa_devices"

    const-wide v5, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/usb/UsbAlsaDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 306
    .end local v3    # "usbAlsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    goto :goto_1a

    .line 308
    :cond_31
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    .local v3, "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbMidiDevice;

    const-string/jumbo v7, "midi_devices"

    const-wide v8, 0x20b00000003L

    move-object v5, v3

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usb/UsbMidiDevice;->dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 312
    .end local v3    # "deviceAddr":Ljava/lang/String;
    goto :goto_3b

    .line 314
    :cond_5d
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 315
    return-void
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 140
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 144
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    if-eqz v0, :cond_16

    .line 145
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 147
    :cond_16
    return-object v0

    .line 149
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method setPeripheralMidiState(ZII)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .line 260
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v0, :cond_5

    .line 261
    return-void

    .line 264
    :cond_5
    if-eqz p1, :cond_50

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v0, :cond_50

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, "properties":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 267
    .local v1, "r":Landroid/content/res/Resources;
    const-string/jumbo v2, "name"

    const v3, 0x10406cc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v2, "manufacturer"

    const v3, 0x10406cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v2, "product"

    const v3, 0x10406cd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "alsa_card"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v2, "alsa_device"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 276
    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v1    # "r":Landroid/content/res/Resources;
    goto :goto_5e

    :cond_50
    if-nez p1, :cond_5e

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz v0, :cond_5e

    .line 277
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 280
    :cond_5e
    :goto_5e
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 75
    const-string v0, "audio"

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 77
    return-void
.end method

.method usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 22
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 161
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    .line 164
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 165
    invoke-virtual {v1, v10}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v11

    .line 166
    .local v11, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    if-nez v11, :cond_12

    .line 167
    return-void

    .line 171
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasInput()Z

    move-result v12

    .line 172
    .local v12, "hasInput":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasOutput()Z

    move-result v13

    .line 176
    .local v13, "hasOutput":Z
    const/4 v14, 0x0

    if-nez v12, :cond_1f

    if-eqz v13, :cond_5d

    .line 177
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v15

    .line 178
    .local v15, "isInputHeadset":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v16

    .line 180
    .local v16, "isOutputHeadset":Z
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v1, :cond_34

    .line 181
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no AudioService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 185
    :cond_34
    new-instance v17, Lcom/android/server/usb/UsbAlsaDevice;

    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 186
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v1, v17

    move-object v5, v10

    move v6, v13

    move v7, v12

    move v8, v15

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZ)V

    .line 189
    .local v1, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    nop

    .line 190
    nop

    .line 191
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 198
    .end local v1    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    .end local v15    # "isInputHeadset":Z
    .end local v16    # "isOutputHeadset":Z
    :cond_5d
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v1

    .line 202
    .local v1, "hasMidi":Z
    if-eqz v1, :cond_ee

    iget-boolean v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-eqz v2, :cond_ee

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "device":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v3, "properties":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "manufacturer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "product":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "version":Ljava/lang/String;
    if-eqz v4, :cond_a2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_82

    goto :goto_a2

    .line 211
    :cond_82
    if-eqz v5, :cond_a0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8b

    goto :goto_a0

    .line 214
    :cond_8b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a3

    .line 212
    :cond_a0
    :goto_a0
    move-object v7, v4

    goto :goto_a3

    .line 210
    :cond_a2
    :goto_a2
    move-object v7, v5

    .line 214
    .local v7, "name":Ljava/lang/String;
    :goto_a3
    nop

    .line 216
    const-string/jumbo v8, "name"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string/jumbo v8, "manufacturer"

    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v8, "product"

    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v8, "version"

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v8, "serial_number"

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v9

    .line 220
    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v8, "alsa_card"

    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v8, "alsa_device"

    invoke-virtual {v3, v8, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string/jumbo v8, "usb_device"

    move-object/from16 v9, p2

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    iget-object v8, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v15

    .line 226
    invoke-static {v8, v3, v15, v14}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v8

    .line 228
    .local v8, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v8, :cond_f0

    .line 229
    iget-object v14, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v14, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v2    # "device":I
    .end local v3    # "properties":Landroid/os/Bundle;
    .end local v4    # "manufacturer":Ljava/lang/String;
    .end local v5    # "product":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    goto :goto_f0

    .line 236
    :cond_ee
    move-object/from16 v9, p2

    :cond_f0
    :goto_f0
    return-void
.end method

.method declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceAddress"    # Ljava/lang/String;

    monitor-enter p0

    .line 244
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    move-result-object v0

    .line 245
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB Audio Device Removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-ne v0, v1, :cond_27

    .line 247
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 248
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;

    .line 252
    :cond_27
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbMidiDevice;

    .line 253
    .local v1, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v1, :cond_4a

    .line 254
    sget-object v2, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB MIDI Device Removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    .line 257
    :cond_4a
    monitor-exit p0

    return-void

    .line 243
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    .end local v1    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    throw p1
.end method
