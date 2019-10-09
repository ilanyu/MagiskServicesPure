.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;,
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = false

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final MIDI_ALSA_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_midi/alsa"

.field private static final MSG_ACCESSORY_MODE_ENTER_TIMEOUT:I = 0x8

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_FUNCTION_SWITCH_TIMEOUT:I = 0x11

.field private static final MSG_GET_CURRENT_USB_FUNCTIONS:I = 0x10

.field private static final MSG_LOCALE_CHANGED:I = 0xb

.field private static final MSG_SET_CHARGING_FUNCTIONS:I = 0xe

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_FUNCTIONS_TIMEOUT:I = 0xf

.field private static final MSG_SET_SCREEN_UNLOCKED_FUNCTIONS:I = 0xc

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_CHARGING_STATE:I = 0x9

.field private static final MSG_UPDATE_HOST_STATE:I = 0xa

.field private static final MSG_UPDATE_PORT_STATE:I = 0x7

.field private static final MSG_UPDATE_SCREEN_LOCK:I = 0xd

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_USER_RESTRICTIONS:I = 0x6

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final NORMAL_BOOT:Ljava/lang/String; = "normal"

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String;

.field static final UNLOCKED_CONFIG_PREF:Ljava/lang/String; = "usb-screen-unlocked-config-%d"

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_PREFS_XML:Ljava/lang/String; = "UsbDeviceManagerPrefs.xml"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static sBlackListedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessoryStrings:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mControlFds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private final mLock:Ljava/lang/Object;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 103
    const-class v0, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    .line 189
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p3, "settingsManager"    # Lcom/android/server/usb/UsbSettingsManager;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 259
    iput-object v9, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 261
    iget-object v0, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 262
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.usb.accessory"

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 263
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 265
    const/4 v11, 0x0

    move v1, v11

    .line 267
    .local v1, "halNotPresent":Z
    const/4 v0, 0x1

    :try_start_2a
    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_39
    .catch Ljava/util/NoSuchElementException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 273
    :goto_2d
    goto :goto_43

    .line 270
    :catch_2e
    move-exception v0

    move-object v2, v0

    .line 271
    .local v0, "e":Ljava/util/NoSuchElementException;
    const/4 v1, 0x1

    .line 272
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "USB GADGET HAL not present in the device"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    goto :goto_43

    .line 268
    :catch_39
    move-exception v0

    move-object v2, v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "USB GADGET HAL present but exception thrown"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2d

    .line 275
    .end local v1    # "halNotPresent":Z
    .local v0, "halNotPresent":Z
    :goto_43
    move v0, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v8, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    .line 276
    const-string/jumbo v1, "mtp"

    invoke-direct {v8, v1}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v12

    .line 277
    .local v12, "mtpFd":Ljava/io/FileDescriptor;
    if-nez v12, :cond_5b

    .line 278
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to open control for mtp"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_5b
    iget-object v1, v8, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v1, "ptp"

    invoke-direct {v8, v1}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v13

    .line 282
    .local v13, "ptpFd":Ljava/io/FileDescriptor;
    if-nez v12, :cond_76

    .line 283
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to open control for mtp"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_76
    iget-object v1, v8, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v1, "ro.adb.secure"

    invoke-static {v1, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 288
    .local v14, "secureAdbEnabled":Z
    const-string v1, "1"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 289
    .local v15, "dataEncrypted":Z
    if-eqz v14, :cond_a0

    if-nez v15, :cond_a0

    .line 290
    new-instance v1, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v1, v9}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v8, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    .line 293
    :cond_a0
    if-eqz v0, :cond_bd

    .line 297
    new-instance v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v5, v8, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    move-object v1, v7

    move-object v4, v8

    move-object/from16 v6, p2

    move-object v11, v7

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v11, v8, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    goto :goto_d6

    .line 303
    :cond_bd
    new-instance v11, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v5, v8, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    move-object v1, v11

    move-object v4, v8

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v11, v8, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 307
    :goto_d6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 312
    :cond_df
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v1, v8}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 321
    .local v1, "portReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v2, v8}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 330
    .local v2, "chargingReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$3;

    invoke-direct {v3, v8}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 343
    .local v3, "hostReceiver":Landroid/content/BroadcastReceiver;
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$4;

    invoke-direct {v4, v8}, Lcom/android/server/usb/UsbDeviceManager$4;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 350
    .local v4, "languageChangedReceiver":Landroid/content/BroadcastReceiver;
    iget-object v5, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    iget-object v5, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 357
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v6, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    iget-object v6, v8, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v7, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 364
    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;

    const/4 v7, 0x0

    invoke-direct {v6, v8, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager$1;)V

    iput-object v6, v8, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 365
    iget-object v6, v8, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v7, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v6, v7}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 366
    iget-object v6, v8, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v7, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v6, v7}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 369
    iget-object v6, v8, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "adb_enabled"

    .line 370
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v11, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    invoke-direct {v11, v8}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 369
    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v1, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    .end local v1    # "portReceiver":Landroid/content/BroadcastReceiver;
    .local v16, "portReceiver":Landroid/content/BroadcastReceiver;
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDeviceManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Set;
    .registers 1

    .line 101
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sBlackListedInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method private static initRndisAddress()V
    .registers 11

    .line 438
    const/4 v0, 0x6

    .line 439
    .local v0, "ETH_ALEN":I
    const/4 v1, 0x6

    new-array v2, v1, [I

    .line 441
    .local v2, "address":[I
    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 443
    const-string/jumbo v5, "ro.serialno"

    const-string v6, "1234567890ABCDEF"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "serial":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 446
    .local v6, "serialLength":I
    move v7, v4

    .line 446
    .local v7, "i":I
    :goto_16
    const/4 v8, 0x1

    if-ge v7, v6, :cond_28

    .line 447
    rem-int/lit8 v9, v7, 0x5

    add-int/2addr v9, v8

    aget v8, v2, v9

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    xor-int/2addr v8, v10

    aput v8, v2, v9

    .line 446
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 449
    .end local v7    # "i":I
    :cond_28
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02X:%02X:%02X:%02X:%02X:%02X"

    new-array v1, v1, [Ljava/lang/Object;

    aget v10, v2, v4

    .line 450
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v4

    aget v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 449
    invoke-static {v7, v9, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "addrString":Ljava/lang/String;
    :try_start_65
    const-string v3, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v3, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_6b

    .line 455
    goto :goto_73

    .line 453
    :catch_6b
    move-exception v3

    .line 454
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v7, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v3    # "e":Ljava/io/IOException;
    :goto_73
    return-void
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private native nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method

.method private startAccessoryMode()V
    .registers 9

    .line 411
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v0, :cond_5

    return-void

    .line 413
    :cond_5
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 416
    .local v0, "enableAudio":Z
    :goto_16
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_28

    move v1, v2

    nop

    .line 420
    .local v1, "enableAccessory":Z
    :cond_28
    const-wide/16 v2, 0x0

    .line 421
    .local v2, "functions":J
    if-eqz v1, :cond_2f

    .line 422
    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    .line 424
    :cond_2f
    if-eqz v0, :cond_34

    .line 425
    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    .line 428
    :cond_34
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4c

    .line 429
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 431
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 433
    :cond_4c
    return-void
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .registers 4
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 2068
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_9

    .line 2069
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 2071
    :cond_9
    return-void
.end method

.method public bootCompleted()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 397
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .registers 3

    .line 2080
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_a

    .line 2081
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    .line 2086
    return-void

    .line 2083
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyUsbDebugging()V
    .registers 2

    .line 2074
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_9

    .line 2075
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    .line 2077
    :cond_9
    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 2092
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2094
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v2, :cond_14

    .line 2095
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-string v3, "handler"

    const-wide v4, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 2097
    :cond_14
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v2, :cond_24

    .line 2098
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    const-string v3, "debugging_manager"

    const-wide v4, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 2102
    :cond_24
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 2103
    return-void
.end method

.method getAccessoryStrings()[Ljava/lang/String;
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 383
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "usbFunction"    # J

    .line 2013
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 2014
    .local v0, "fd":Ljava/io/FileDescriptor;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 2015
    return-object v1

    .line 2018
    :cond_10
    :try_start_10
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v2

    .line 2019
    :catch_15
    move-exception v2

    .line 2020
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not dup fd for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    return-object v1
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 2

    .line 1981
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .registers 3

    .line 2006
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getEnabledFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object v1

    .line 377
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getScreenUnlockedFunctions()J
    .registers 3

    .line 2026
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAwakeStateChanged(Z)V
    .registers 2
    .param p1, "isAwake"    # Z

    .line 250
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 7
    .param p1, "isShowing"    # Z

    .line 236
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 237
    .local v0, "userHandle":I
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 238
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    .line 244
    .local v1, "secure":Z
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p1, :cond_1a

    if-eqz v1, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 245
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager;->onKeyguardStateChanged(Z)V

    .line 255
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "settings"    # Lcom/android/server/usb/UsbUserSettingsManager;

    .line 1991
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 1992
    .local v0, "currentAccessory":Landroid/hardware/usb/UsbAccessory;
    if-eqz v0, :cond_34

    .line 1995
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2001
    invoke-virtual {p2, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 2002
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    .line 1996
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match current accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1999
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1993
    .end local v1    # "error":Ljava/lang/String;
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "no accessory attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCurrentFunctions(J)V
    .registers 6
    .param p1, "functions"    # J

    .line 2038
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 2039
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2040
    :cond_e
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1c

    .line 2041
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2042
    :cond_1c
    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_2a

    .line 2043
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2044
    :cond_2a
    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_38

    .line 2045
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ff

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2046
    :cond_38
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-nez v0, :cond_46

    .line 2047
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fe

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_53

    .line 2048
    :cond_46
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_53

    .line 2049
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x500

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 2051
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 2052
    return-void
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 7
    .param p1, "newCurrentUserId"    # I
    .param p2, "settings"    # Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 400
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_3
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 402
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 403
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6
    .param p1, "functions"    # J

    .line 2064
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 2065
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 389
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerScreenObserver(Landroid/app/ActivityManagerInternal$ScreenObserver;)V

    .line 391
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 392
    return-void
.end method

.method public updateUserRestrictions()V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 408
    return-void
.end method
