.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AsdProxy;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$Lifecycle;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final BT_HEARING_AID_GAIN_MIN:I = -0x80

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field protected static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field private static final DEVICE_MEDIA_UNMUTED_ON_PLUG:I = 0x402678c

.field private static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG:I = 0x402600c

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field protected static MAX_STREAM_VOLUME:[I = null

.field protected static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_A2DP_DEVICE_CONFIG_CHANGE:I = 0x67

.field private static final MSG_ACCESSORY_PLUG_MEDIA_UNMUTE:I = 0x1b

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6a

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DISABLE_AUDIO_FOR_UID:I = 0x68

.field private static final MSG_DISPATCH_AUDIO_SERVER_STATE:I = 0x1d

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_ENABLE_SURROUND_FORMATS:I = 0x1e

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x1c

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_HEARING_AID_CONNECTION_STATE:I = 0x69

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATING:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field protected static mStreamVolumeAlias:[I

.field private static sIndependentA11yVolume:Z

.field private static sSoundEffectVolumeDb:I

.field private static sStreamOverrideDelayMs:I


# instance fields
.field final LOG_NB_EVENTS_DYN_POLICY:I

.field final LOG_NB_EVENTS_FORCE_USE:I

.field final LOG_NB_EVENTS_PHONE_STATE:I

.field final LOG_NB_EVENTS_VOLUME:I

.field final LOG_NB_EVENTS_WIRED_DEV_CONNECTION:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mAccessibilityServiceUids:[I

.field private final mAccessibilityServiceUidsLock:Ljava/lang/Object;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private final mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioPolicies"
    .end annotation
.end field

.field private final mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

.field private mAudioServerStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AsdProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCameraSoundForced:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mEnabledSurroundFormats:Ljava/lang/String;

.field private mEncodedSurroundMode:I

.field private mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mExtVolumeControllerLock:Ljava/lang/Object;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private final mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mForcedUseForComm:I

.field private mForcedUseForCommExt:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private final mHearingAidLock:Ljava/lang/Object;

.field private final mIsSingleVolume:Z

.field private mLockVoiseAssistStream:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNm:Landroid/app/NotificationManager;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private final mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mRingerAndZenModeMutedStreams:I

.field private mRingerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mSafeUsbMediaVolumeDbfs:F

.field private mSafeUsbMediaVolumeIndex:I

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private mScoClientDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUseFixedVolume:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSelectedVolumeControlStream:Z

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeBoostEnabled:Z

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private final mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mZenMode:I

.field private mZenModeAffectedStreams:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 198
    const-string v0, "AudioService.MOD"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    .line 201
    const-string v0, "AudioService.AP"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    .line 204
    const-string v0, "AudioService.VOL"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    .line 207
    const-string v0, "AudioService.DEVICES"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 327
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_6e

    sput-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 343
    new-array v1, v0, [I

    fill-array-data v1, :array_8a

    sput-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 415
    new-array v0, v0, [I

    fill-array-data v0, :array_a6

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 487
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 488
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 489
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 659
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 7560
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 7627
    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    :array_6e
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0xf
    .end array-data

    :array_8a
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_a6
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
        0x40
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    .line 745
    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 242
    new-instance v1, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 309
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 311
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 314
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 324
    const/16 v1, 0xa

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 367
    const/16 v2, 0xc

    new-array v3, v2, [I

    fill-array-data v3, :array_3c6

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 381
    new-array v3, v2, [I

    fill-array-data v3, :array_3e2

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 395
    new-array v2, v2, [I

    fill-array-data v2, :array_3fe

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 439
    new-instance v2, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 461
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 465
    iput v8, v0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 467
    iput v8, v0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 493
    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 499
    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 527
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 536
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 539
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 591
    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 595
    iput v8, v0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 598
    iput v2, v0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 602
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 603
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 607
    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 613
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 616
    new-instance v3, Landroid/media/AudioRoutesInfo;

    invoke-direct {v3}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 617
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 621
    const v3, 0x2c1c00

    iput v3, v0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 627
    iput v8, v0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 631
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 633
    iput v8, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 651
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    .line 655
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 657
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 663
    sget-object v5, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 668
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    .line 672
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->mLockVoiseAssistStream:Z

    .line 714
    new-instance v5, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    .line 2399
    iput v8, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2400
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 4038
    new-instance v5, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v5, v0}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 6492
    const v5, 0xc027f8c

    iput v5, v0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    .line 6754
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    .line 7334
    iput v8, v0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 7349
    const v5, 0x400000c

    iput v5, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 7471
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 7482
    new-instance v5, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-direct {v5, v0, v4}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 7603
    const/16 v4, 0x14

    iput v4, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_PHONE_STATE:I

    .line 7604
    const/16 v5, 0x1e

    iput v5, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_WIRED_DEV_CONNECTION:I

    .line 7605
    iput v4, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_FORCE_USE:I

    .line 7606
    const/16 v6, 0x28

    iput v6, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_VOLUME:I

    .line 7607
    iput v1, v0, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_DYN_POLICY:I

    .line 7609
    new-instance v9, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v10, "phone state (logged after successfull call to AudioSystem.setPhoneState(int))"

    invoke-direct {v9, v4, v10}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v9, v0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7612
    new-instance v9, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v10, "wired device connection (logged before onSetWiredDeviceConnectionState() is executed)"

    invoke-direct {v9, v5, v10}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v9, v0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7617
    new-instance v5, Lcom/android/server/audio/AudioEventLogger;

    const-string v9, "force use (logged before setForceUse() is executed)"

    invoke-direct {v5, v4, v9}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7621
    new-instance v4, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v5, "volume changes (logged when command received by AudioService)"

    invoke-direct {v4, v6, v5}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 7624
    new-instance v4, Lcom/android/server/audio/AudioEventLogger;

    const-string v5, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v4, v1, v5}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8163
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 8192
    new-instance v4, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v4, v0}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 8469
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 8522
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 8524
    iput v8, v0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 747
    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    invoke-static {v4}, Landroid/media/AudioServiceInjector;->adjustMaxStreamVolume([I)V

    .line 748
    sget-object v4, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    invoke-static {v4}, Landroid/media/AudioServiceInjector;->adjustMinStreamVolume([I)V

    .line 751
    iput-object v7, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 753
    const-string v4, "appops"

    invoke-virtual {v7, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 755
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v4

    iput v4, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 757
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 759
    const-class v4, Landroid/os/UserManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManagerInternal;

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 760
    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 762
    const-string/jumbo v4, "power"

    invoke-virtual {v7, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/os/PowerManager;

    .line 763
    .local v9, "pm":Landroid/os/PowerManager;
    const-string v4, "handleAudioEvent"

    invoke-virtual {v9, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 765
    const-string/jumbo v4, "vibrator"

    invoke-virtual {v7, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 766
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_1b8

    move v4, v8

    goto :goto_1be

    :cond_1b8
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    :goto_1be
    iput-boolean v4, v0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 769
    const-string/jumbo v4, "ro.config.vc_call_vol_steps"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 770
    .local v10, "maxCallVolume":I
    const/4 v4, 0x4

    if-eq v10, v2, :cond_1d5

    .line 771
    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v10, v5, v8

    .line 772
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v6, v10, 0x3

    div-int/2addr v6, v4

    aput v6, v5, v8

    .line 776
    :cond_1d5
    const-string/jumbo v5, "ro.config.media_vol_steps"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 777
    .local v11, "maxMusicVolume":I
    const/4 v5, 0x3

    if-eq v11, v2, :cond_1e3

    .line 778
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v11, v6, v5

    .line 781
    :cond_1e3
    const-string/jumbo v6, "ro.config.media_vol_default"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 782
    .local v12, "defaultMusicVolume":I
    if-eq v12, v2, :cond_1f7

    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v6, v6, v5

    if-gt v12, v6, :cond_1f7

    .line 784
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v12, v6, v5

    goto :goto_210

    .line 786
    :cond_1f7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v6

    if-eqz v6, :cond_207

    .line 787
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v13, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v13, v13, v5

    div-int/2addr v13, v4

    aput v13, v6, v5

    goto :goto_210

    .line 790
    :cond_207
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v13, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v13, v13, v5

    div-int/2addr v13, v5

    aput v13, v6, v5

    .line 795
    :goto_210
    const-string/jumbo v5, "ro.config.alarm_vol_steps"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 796
    .local v13, "maxAlarmVolume":I
    if-eq v13, v2, :cond_21d

    .line 797
    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v13, v5, v4

    .line 800
    :cond_21d
    const-string/jumbo v5, "ro.config.alarm_vol_default"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 801
    .local v14, "defaultAlarmVolume":I
    if-eq v14, v2, :cond_231

    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, v4

    if-gt v14, v5, :cond_231

    .line 803
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v14, v5, v4

    goto :goto_23d

    .line 806
    :cond_231
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x6

    sget-object v15, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v15, v15, v4

    mul-int/2addr v6, v15

    div-int/lit8 v6, v6, 0x7

    aput v6, v5, v4

    .line 810
    :goto_23d
    const-string/jumbo v5, "ro.config.system_vol_steps"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 811
    .local v15, "maxSystemVolume":I
    if-eq v15, v2, :cond_24a

    .line 812
    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v15, v5, v3

    .line 815
    :cond_24a
    const-string/jumbo v5, "ro.config.system_vol_default"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 816
    .local v6, "defaultSystemVolume":I
    if-eq v6, v2, :cond_25e

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v3

    if-gt v6, v2, :cond_25e

    .line 818
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v6, v2, v3

    goto :goto_266

    .line 821
    :cond_25e
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v5, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, v3

    aput v5, v2, v3

    .line 825
    :goto_266
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 828
    iput v8, v0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 832
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v2}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v5

    .line 835
    .local v5, "cameraSoundForced":Z
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 836
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x8

    const/16 v18, 0x2

    const/16 v19, 0x4

    .line 840
    if-eqz v5, :cond_29b

    .line 841
    const/16 v3, 0xb

    move/from16 v20, v3

    goto :goto_29d

    :cond_29b
    move/from16 v20, v8

    :goto_29d
    new-instance v3, Ljava/lang/String;

    const-string v4, "AudioService ctor"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    .line 836
    move-object/from16 v16, v2

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 845
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_safe_volume_state"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 850
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 853
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 858
    const-string v1, "AudioService"

    invoke-direct {v0, v8, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 861
    new-instance v1, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v1, v0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v1

    iput v1, v0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 868
    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v1, v7, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 871
    new-instance v1, Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 874
    new-instance v1, Lcom/miui/server/AudioQueryWeatherService;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/server/AudioQueryWeatherService;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

    .line 875
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

    invoke-virtual {v1}, Lcom/miui/server/AudioQueryWeatherService;->onCreate()V

    .line 878
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 880
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 884
    iput v8, v0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {v0, v1, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 888
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    .line 890
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 895
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 896
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 898
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    const-string/jumbo v1, "ro.audio.monitorRotation"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 902
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_37e

    .line 903
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v1, v2}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 906
    :cond_37e
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v7

    move-object/from16 v18, v4

    .line 909
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .local v18, "intentFilter":Landroid/content/IntentFilter;
    move/from16 v19, v5

    move-object/from16 v5, v16

    .line 909
    .end local v5    # "cameraSoundForced":Z
    .local v19, "cameraSoundForced":Z
    move/from16 v16, v6

    move-object/from16 v6, v17

    .line 909
    .end local v6    # "defaultSystemVolume":I
    .local v16, "defaultSystemVolume":I
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 911
    const-class v1, Landroid/media/AudioManagerInternal;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v2, v0}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 913
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 915
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    .line 918
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/server/audio/AudioService;->mZenMode:I

    .line 919
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioServiceInjector;->updateNotificationMode(Landroid/content/Context;)V

    .line 920
    iput-boolean v8, v0, Lcom/android/server/audio/AudioService;->mVolumeBoostEnabled:Z

    .line 922
    return-void

    nop

    nop

    :array_3c6
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
        0xb
    .end array-data

    :array_3e2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_3fe
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
        0xb
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 177
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$10002(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/Integer;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic access$10602(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/audio/AudioService;ZII)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$11402(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$11500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11600(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$11900(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 177
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 177
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/server/audio/AudioService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object v0
.end method

.method static synthetic access$12202(Lcom/android/server/audio/AudioService;[I)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # [I

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$12308(Lcom/android/server/audio/AudioService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$12400(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$12800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 177
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 177
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioService;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 177
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;III)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;III)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;)[[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5800()Ljava/util/List;
    .registers 1

    .line 177
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$6200()I
    .registers 1

    .line 177
    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "x2"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 177
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return v0
.end method

.method static synthetic access$8502(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$8602(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return v0
.end method

.method static synthetic access$9102(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Z

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$9302(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 177
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mLockVoiseAssistStream:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget v0, p0, Lcom/android/server/audio/AudioService;->mZenMode:I

    return v0
.end method

.method static synthetic access$9502(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 177
    iput p1, p0, Lcom/android/server/audio/AudioService;->mZenMode:I

    return p1
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 177
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 24
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v7, p3

    move-object/from16 v10, p5

    .line 1553
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v11, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    .line 1555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, v11

    move v3, v9

    move/from16 v4, p1

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 1553
    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1557
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1558
    :try_start_38
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_76

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", volControlStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userSelect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_76
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_7f

    .line 1564
    iget v0, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1577
    .local v0, "streamType":I
    move v4, v0

    goto :goto_a0

    .line 1566
    .end local v0    # "streamType":I
    :cond_7f
    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 1568
    .local v0, "maybeActiveStreamType":I
    const/4 v3, 0x0

    if-eq v0, v2, :cond_8f

    const/4 v4, 0x5

    if-ne v0, v4, :cond_8a

    goto :goto_8f

    .line 1572
    :cond_8a
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    goto :goto_93

    .line 1570
    :cond_8f
    :goto_8f
    invoke-direct {v8, v0, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    .line 1572
    .local v3, "activeForReal":Z
    :goto_93
    nop

    .line 1574
    if-nez v3, :cond_9f

    iget v4, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9c

    goto :goto_9f

    .line 1577
    :cond_9c
    iget v4, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .end local v0    # "maybeActiveStreamType":I
    .end local v3    # "activeForReal":Z
    goto :goto_a0

    .line 1575
    .restart local v0    # "maybeActiveStreamType":I
    .restart local v3    # "activeForReal":Z
    :cond_9f
    :goto_9f
    move v4, v0

    .line 1577
    .end local v0    # "maybeActiveStreamType":I
    .end local v3    # "activeForReal":Z
    .local v4, "streamType":I
    :goto_a0
    move v0, v4

    .line 1580
    .end local v4    # "streamType":I
    .local v0, "streamType":I
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_38 .. :try_end_a2} :catchall_e2

    .line 1582
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v11

    .line 1584
    .local v11, "isMute":Z
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1585
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v1, v0

    .line 1588
    .local v14, "resolvedStream":I
    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_b6

    if-eq v14, v2, :cond_b6

    .line 1590
    and-int/lit8 v1, v7, -0x5

    .line 1595
    .end local p3    # "flags":I
    .local v1, "flags":I
    move v7, v1

    .end local v1    # "flags":I
    .local v7, "flags":I
    :cond_b6
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v14, v7, v11}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 1596
    const/4 v1, 0x0

    .line 1597
    .end local p1    # "direction":I
    .local v1, "direction":I
    and-int/lit8 v2, v7, -0x5

    .line 1598
    .end local v7    # "flags":I
    .local v2, "flags":I
    and-int/lit8 v2, v2, -0x11

    .line 1599
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_ce

    const-string v3, "AudioService"

    const-string v4, "Volume controller suppressed adjustment"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_ce
    move v15, v1

    move/from16 v16, v2

    goto :goto_d6

    .end local v1    # "direction":I
    .end local v2    # "flags":I
    .restart local v7    # "flags":I
    .restart local p1    # "direction":I
    :cond_d2
    move/from16 v15, p1

    move/from16 v16, v7

    .end local v7    # "flags":I
    .end local p1    # "direction":I
    .local v15, "direction":I
    .local v16, "flags":I
    :goto_d6
    move-object v1, v8

    move v2, v0

    move v3, v15

    move/from16 v4, v16

    move-object v5, v12

    move-object v6, v10

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1603
    return-void

    .line 1580
    .end local v0    # "streamType":I
    .end local v11    # "isMute":Z
    .end local v14    # "resolvedStream":I
    .end local v15    # "direction":I
    .end local v16    # "flags":I
    .restart local p1    # "direction":I
    .restart local p3    # "flags":I
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .line 2279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2281
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2283
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2284
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .line 4751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4752
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4753
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4755
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4756
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .registers 9
    .param p1, "state"    # I

    .line 3949
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3951
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .param p1, "vibrateType"    # I

    .line 4760
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4762
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4763
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4764
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4766
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private canChangeAccessibilityVolume()Z
    .registers 7

    .line 2011
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 2014
    monitor-exit v0

    return v2

    .line 2016
    :cond_10
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    .line 2017
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2018
    .local v1, "callingUid":I
    move v4, v3

    .local v4, "i":I
    :goto_1a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2a

    .line 2019
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_27

    .line 2020
    monitor-exit v0

    return v2

    .line 2018
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2024
    .end local v1    # "callingUid":I
    .end local v4    # "i":I
    :cond_2a
    monitor-exit v0

    return v3

    .line 2025
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .line 6264
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6265
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 8

    .line 1155
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1156
    :try_start_3
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    .line 1157
    :try_start_6
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1158
    .local v2, "numStreamTypes":I
    const/4 v3, 0x0

    .local v3, "streamType":I
    :goto_b
    if-ge v3, v2, :cond_32

    .line 1159
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, "AudioService"

    .line 1160
    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1162
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1163
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1158
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1166
    .end local v2    # "numStreamTypes":I
    .end local v3    # "streamType":I
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_35

    .line 1167
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_38

    .line 1168
    return-void

    .line 1166
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v2

    .line 1167
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .registers 4

    .line 1172
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1173
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1174
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1173
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1176
    .end local v1    # "streamType":I
    :cond_11
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .registers 3
    .param p1, "streamType"    # I

    .line 1179
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1180
    return-void
.end method

.method private checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 6786
    const/4 v0, 0x1

    .line 6787
    .local v0, "ret":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 6788
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6790
    if-nez v1, :cond_29

    .line 6791
    const-string v2, "AudioService"

    const-string v3, "checkAndUpdatTwsPlusScoState: device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    return v0

    .line 6797
    :cond_29
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 6798
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_49

    .line 6801
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 6802
    const-string v2, "AudioService"

    const-string v3, "No need to bringup audio-path"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6803
    const/4 v0, 0x0

    .line 6806
    :cond_45
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/AudioService;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    goto :goto_5b

    .line 6809
    :cond_49
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/AudioService;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 6812
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 6813
    const-string v2, "AudioService"

    const-string/jumbo v3, "not good to tear down audio-path"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6814
    const/4 v0, 0x0

    .line 6818
    :cond_5b
    :goto_5b
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdatTwsPlusScoState returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6819
    return v0
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .registers 15
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 4387
    const/4 v0, 0x1

    .line 4388
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-nez v1, :cond_10b

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_d

    goto/16 :goto_10b

    .line 4393
    :cond_d
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v1

    if-nez v1, :cond_14

    .line 4394
    return v0

    .line 4398
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 4400
    .local v1, "ringerMode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    const/16 v4, 0x65

    const/4 v5, 0x2

    const/4 v6, -0x1

    packed-switch v1, :pswitch_data_10c

    .line 4482
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e1

    .line 4402
    :pswitch_3a
    if-ne p2, v6, :cond_59

    .line 4403
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_4e

    .line 4409
    if-gt p3, p1, :cond_e1

    mul-int/2addr v5, p3

    if-ge p1, v5, :cond_e1

    .line 4410
    const/4 v1, 0x1

    .line 4411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto/16 :goto_e1

    .line 4414
    :cond_4e
    if-ne p1, p3, :cond_e1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_e1

    .line 4415
    const/4 v1, 0x0

    goto/16 :goto_e1

    .line 4418
    :cond_59
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_e1

    if-eq p2, v4, :cond_63

    const/16 v2, -0x64

    if-ne p2, v2, :cond_e1

    .line 4420
    :cond_63
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_69

    .line 4421
    const/4 v1, 0x1

    goto :goto_6a

    .line 4423
    :cond_69
    const/4 v1, 0x0

    .line 4426
    :goto_6a
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_e1

    .line 4430
    :pswitch_6e
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_7b

    .line 4431
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    goto/16 :goto_e1

    .line 4435
    :cond_7b
    if-ne p2, v6, :cond_af

    .line 4437
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_88

    mul-int/2addr v5, p3

    if-lt p1, v5, :cond_88

    if-eqz p4, :cond_88

    .line 4438
    const/4 v1, 0x2

    goto :goto_b6

    .line 4439
    :cond_88
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v2, v6, :cond_b6

    .line 4440
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_ac

    .line 4441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr v2, v4

    .line 4443
    .local v2, "diff":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v4, v4, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_ab

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 4444
    invoke-interface {v4}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 4445
    const/4 v1, 0x0

    .line 4447
    .end local v2    # "diff":J
    :cond_ab
    goto :goto_b6

    .line 4448
    :cond_ac
    or-int/lit16 v0, v0, 0x800

    goto :goto_b6

    .line 4451
    :cond_af
    if-eq p2, v3, :cond_b5

    if-eq p2, v4, :cond_b5

    if-ne p2, v2, :cond_b6

    .line 4454
    :cond_b5
    const/4 v1, 0x2

    .line 4456
    :cond_b6
    :goto_b6
    and-int/lit8 v0, v0, -0x2

    .line 4457
    goto :goto_e1

    .line 4459
    :pswitch_b9
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v7, :cond_c6

    if-ne p2, v6, :cond_c6

    mul-int/2addr v5, p3

    if-lt p1, v5, :cond_c6

    if-eqz p4, :cond_c6

    .line 4461
    const/4 v1, 0x2

    goto :goto_de

    .line 4462
    :cond_c6
    if-eq p2, v3, :cond_cc

    if-eq p2, v4, :cond_cc

    if-ne p2, v2, :cond_de

    .line 4465
    :cond_cc
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v2, :cond_d5

    .line 4466
    or-int/lit16 v0, v0, 0x80

    goto :goto_de

    .line 4468
    :cond_d5
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_dd

    if-ne p2, v3, :cond_dd

    .line 4471
    const/4 v1, 0x2

    goto :goto_de

    .line 4475
    :cond_dd
    const/4 v1, 0x2

    .line 4479
    :cond_de
    :goto_de
    and-int/lit8 v0, v0, -0x2

    .line 4480
    nop

    .line 4486
    :cond_e1
    :goto_e1
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_102

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_102

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4487
    invoke-virtual {v2, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_102

    and-int/lit16 v2, p6, 0x1000

    if-eqz v2, :cond_fa

    goto :goto_102

    .line 4489
    :cond_fa
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4492
    :cond_102
    :goto_102
    const-string v2, "AudioService.checkForRingerModeChange"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 4494
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 4496
    return v0

    .line 4389
    .end local v1    # "ringerMode":I
    :cond_10b
    :goto_10b
    return v0

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_6e
        :pswitch_3a
    .end packed-switch
.end method

.method private checkMonitorAudioServerStatePermission()V
    .registers 3

    .line 8473
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8476
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 8479
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8481
    :cond_1d
    :goto_1d
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .registers 6

    .line 1185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 1186
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    .line 1187
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_23

    .line 1188
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_23

    .line 1189
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1185
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1192
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 7422
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 7423
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_21

    const v1, 0x400000c

    and-int/2addr v1, p3

    if-eqz v1, :cond_21

    .line 7426
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_21

    .line 7427
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 7429
    :cond_21
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 7430
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private checkScoAudioState()V
    .registers 4

    .line 3816
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3817
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3819
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1e

    .line 3821
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 3823
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_38

    .line 3824
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In checkScoAudioState(), mScoAudioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    return-void

    .line 3823
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private checkSendBecomingNoisyIntent(III)I
    .registers 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I

    .line 6504
    const/4 v0, 0x0

    .line 6505
    .local v0, "delay":I
    if-nez p2, :cond_5d

    iget v1, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_5d

    .line 6506
    const/4 v1, 0x0

    .line 6507
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 6507
    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 6508
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v3, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    .line 6509
    .local v3, "dev":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v3

    if-nez v4, :cond_27

    iget v4, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_27

    .line 6511
    or-int/2addr v1, v3

    .line 6507
    .end local v3    # "dev":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6514
    .end local v2    # "i":I
    :cond_2a
    if-nez p3, :cond_31

    .line 6515
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p3

    .line 6520
    :cond_31
    if-eq p1, p3, :cond_39

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_5d

    :cond_39
    if-ne p1, v1, :cond_5d

    .line 6521
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 6522
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6523
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6530
    const-string/jumbo v2, "vendor.audio.noisy.broadcast.delay"

    const/16 v3, 0x2bc

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6534
    .end local v1    # "devices":I
    :cond_5d
    return v0
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .registers 9
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioPolicies"
    .end annotation

    .line 8086
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8087
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8089
    .local v0, "hasPermissionForPolicy":Z
    :goto_d
    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 8090
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8091
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8090
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8093
    return-object v1

    .line 8096
    :cond_3f
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8097
    .local v2, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v2, :cond_7c

    .line 8098
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8099
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", unregistered policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8098
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8101
    return-object v1

    .line 8103
    :cond_7c
    return-object v2
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    move-object/from16 v0, p1

    .line 6710
    move/from16 v1, p2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6711
    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6712
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a0

    .line 6713
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6714
    .local v3, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-array v4, v2, [I

    .line 6715
    .local v4, "portGeneration":[I
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v5

    .line 6716
    .local v5, "status":I
    if-nez v5, :cond_a0

    .line 6717
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioPort;

    .line 6718
    .local v7, "port":Landroid/media/AudioPort;
    instance-of v8, v7, Landroid/media/AudioDevicePort;

    if-eqz v8, :cond_9f

    .line 6719
    move-object v8, v7

    check-cast v8, Landroid/media/AudioDevicePort;

    .line 6720
    .local v8, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/16 v10, 0x400

    if-eq v9, v10, :cond_45

    .line 6721
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/high16 v10, 0x40000

    if-ne v9, v10, :cond_9f

    .line 6723
    :cond_45
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 6724
    .local v9, "formats":[I
    array-length v10, v9

    const/4 v11, 0x0

    if-lez v10, :cond_86

    .line 6725
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6726
    .local v10, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v12, v9

    move v13, v11

    :goto_58
    if-ge v13, v12, :cond_68

    aget v14, v9, v13

    .line 6728
    .local v14, "format":I
    if-eqz v14, :cond_65

    .line 6729
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6726
    .end local v14    # "format":I
    :cond_65
    add-int/lit8 v13, v13, 0x1

    goto :goto_58

    .line 6732
    :cond_68
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [I

    .line 6733
    .local v12, "encodingArray":[I
    move v13, v11

    .local v13, "i":I
    :goto_6f
    array-length v14, v12

    if-ge v13, v14, :cond_81

    .line 6734
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 6733
    add-int/lit8 v13, v13, 0x1

    goto :goto_6f

    .line 6736
    .end local v13    # "i":I
    :cond_81
    const-string v13, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 6739
    .end local v10    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "encodingArray":[I
    :cond_86
    const/4 v10, 0x0

    .line 6740
    .local v10, "maxChannels":I
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    :goto_8c
    if-ge v11, v13, :cond_9a

    aget v14, v12, v11

    .line 6741
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v15

    .line 6742
    .local v15, "channelCount":I
    if-le v15, v10, :cond_97

    .line 6743
    move v10, v15

    .line 6740
    .end local v14    # "mask":I
    .end local v15    # "channelCount":I
    :cond_97
    add-int/lit8 v11, v11, 0x1

    goto :goto_8c

    .line 6746
    :cond_9a
    const-string v11, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6749
    .end local v7    # "port":Landroid/media/AudioPort;
    .end local v8    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v10    # "maxChannels":I
    :cond_9f
    goto :goto_22

    .line 6752
    .end local v3    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v4    # "portGeneration":[I
    .end local v5    # "status":I
    :cond_a0
    return-void
.end method

.method private static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 3917
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In connectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    packed-switch p2, :pswitch_data_50

    .line 3932
    const/4 v0, 0x0

    return v0

    .line 3928
    :pswitch_2b
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling startVoiceRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 3921
    :pswitch_37
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling connectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    return v0

    .line 3924
    :pswitch_43
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling startScoUsingVirtualVoiceCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3926
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_43
        :pswitch_37
        :pswitch_2b
    .end packed-switch
.end method

.method private createAudioSystemThread()V
    .registers 2

    .line 1135
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1136
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1137
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1138
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .line 1195
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1196
    .local v0, "numStreamTypes":I
    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1198
    .local v1, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1e

    .line 1199
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    .line 1198
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1203
    .end local v2    # "i":I
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1204
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1205
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1206
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1207
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 2376
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2377
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2379
    .local v1, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2380
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2381
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2382
    const/4 v2, 0x1

    return v2

    .line 2384
    .end local v1    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :cond_22
    goto :goto_6

    .line 2385
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method private disconnectBluetoothSco(I)V
    .registers 5
    .param p1, "exceptPid"    # I

    .line 3884
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In disconnectBluetoothSco(), exceptPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3886
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    .line 3887
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 3888
    monitor-exit v0

    return-void

    .line 3890
    :cond_23
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 3891
    monitor-exit v0

    .line 3892
    return-void

    .line 3891
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 3896
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In disconnectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    packed-switch p2, :pswitch_data_50

    .line 3911
    const/4 v0, 0x0

    return v0

    .line 3907
    :pswitch_2b
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling stopVoiceRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 3900
    :pswitch_37
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling disconnectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3901
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    return v0

    .line 3903
    :pswitch_43
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling stopScoUsingVirtualVoiceCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_43
        :pswitch_37
        :pswitch_2b
    .end packed-switch
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 8181
    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8182
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8183
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8184
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8185
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_12

    .line 8186
    :cond_26
    monitor-exit v0

    .line 8187
    return-void

    .line 8186
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 7634
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7637
    const-string v0, "affected"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 7638
    const-string/jumbo v0, "muted"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 7639
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7640
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .line 7643
    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7644
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7645
    if-eqz p3, :cond_4b

    .line 7646
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7647
    const/4 v0, 0x1

    .line 7648
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_3c

    .line 7649
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 7650
    .local v2, "stream":I
    and-int v4, p3, v2

    if-eqz v4, :cond_39

    .line 7651
    if-nez v0, :cond_2f

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 7652
    :cond_2f
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7653
    not-int v3, v2

    and-int/2addr p3, v3

    .line 7654
    const/4 v0, 0x0

    .line 7648
    .end local v2    # "stream":I
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 7657
    .end local v1    # "i":I
    :cond_3c
    if-eqz p3, :cond_46

    .line 7658
    if-nez v0, :cond_43

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 7659
    :cond_43
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 7661
    :cond_46
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 7663
    .end local v0    # "first":Z
    :cond_4b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7664
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1222
    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1223
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1224
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_38

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # invokes: Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1227
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1229
    .end local v1    # "i":I
    :cond_38
    const-string v1, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .registers 15
    .param p1, "caller"    # Ljava/lang/String;

    .line 7394
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 7395
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const v1, 0x400000c

    .line 7396
    .local v1, "devices":I
    const/4 v9, 0x0

    move v10, v1

    move v1, v9

    .line 7398
    .local v1, "i":I
    .local v10, "devices":I
    :goto_b
    if-eqz v10, :cond_38

    .line 7399
    add-int/lit8 v11, v1, 0x1

    .local v11, "i":I
    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 7400
    .local v1, "device":I
    and-int v2, v1, v10

    if-nez v2, :cond_19

    .line 7401
    nop

    .line 7396
    .end local v11    # "i":I
    .local v1, "i":I
    :goto_17
    move v1, v11

    goto :goto_b

    .line 7403
    .local v1, "device":I
    .restart local v11    # "i":I
    :cond_19
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 7404
    .local v12, "index":I
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    if-le v12, v2, :cond_35

    .line 7405
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 7406
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v1

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7414
    :cond_35
    not-int v2, v1

    and-int/2addr v10, v2

    .line 7415
    .end local v1    # "device":I
    .end local v12    # "index":I
    goto :goto_17

    .line 7417
    .end local v11    # "i":I
    .local v1, "i":I
    :cond_38
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 7419
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .line 7751
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7753
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .line 4607
    const/16 v0, -0x64

    if-eq p1, v0, :cond_21

    packed-switch p1, :pswitch_data_24

    packed-switch p1, :pswitch_data_2e

    .line 4616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4614
    :cond_21
    :pswitch_21
    nop

    .line 4618
    return-void

    nop

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x64
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private ensureValidRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"    # I

    .line 2603
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2606
    return-void

    .line 2604
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .param p1, "streamType"    # I

    .line 4621
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_8

    .line 4624
    return-void

    .line 4622
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .registers 11
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "request"    # I
    .param p3, "uid"    # I

    .line 7126
    const/4 v0, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_44

    const/4 v1, 0x3

    if-eq p2, v1, :cond_f

    goto :goto_44

    .line 7130
    :cond_f
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 7131
    .local v1, "extraInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_43

    const-string v2, "a11y_force_ducking"

    .line 7132
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_43

    .line 7135
    :cond_1e
    const/4 v2, 0x1

    if-nez p3, :cond_22

    .line 7136
    return v2

    .line 7138
    :cond_22
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7139
    :try_start_25
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v4, :cond_3e

    .line 7140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 7141
    .local v4, "callingUid":I
    move v5, v0

    .local v5, "i":I
    :goto_2e
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_3e

    .line 7142
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_3b

    .line 7143
    monitor-exit v3

    return v2

    .line 7141
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 7147
    .end local v4    # "callingUid":I
    .end local v5    # "i":I
    :cond_3e
    monitor-exit v3

    .line 7148
    return v0

    .line 7147
    :catchall_40
    move-exception v0

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_40

    throw v0

    .line 7133
    :cond_43
    :goto_43
    return v0

    .line 7128
    .end local v1    # "extraInfo":Landroid/os/Bundle;
    :cond_44
    :goto_44
    return v0
.end method

.method private getActiveStreamType(I)I
    .registers 11
    .param p1, "suggestedStreamType"    # I

    .line 4657
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_a

    if-ne p1, v1, :cond_a

    .line 4659
    return v2

    .line 4663
    :cond_a
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_22

    .line 4664
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v3

    iget v4, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    sget v6, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    sget-boolean v7, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mLockVoiseAssistStream:Z

    move v5, p1

    invoke-static/range {v3 .. v8}, Landroid/media/AudioServiceInjector;->getActiveStreamType(ZIIIZZ)I

    move-result v0

    return v0

    .line 4669
    :cond_22
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eq v0, v3, :cond_2c

    goto :goto_98

    .line 4671
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4672
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_39

    .line 4675
    return v4

    .line 4678
    :cond_39
    return v5

    .line 4680
    :cond_3a
    if-ne p1, v1, :cond_70

    .line 4681
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4682
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_4f

    .line 4683
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    :cond_4f
    return v7

    .line 4685
    :cond_50
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 4687
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_63

    .line 4688
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    :cond_63
    return v6

    .line 4691
    :cond_64
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_6f

    .line 4692
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4695
    :cond_6f
    return v2

    .line 4697
    :cond_70
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 4698
    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 4699
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_83

    .line 4700
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    :cond_83
    return v6

    .line 4702
    :cond_84
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 4703
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_97

    .line 4704
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    :cond_97
    return v7

    .line 4708
    :cond_98
    :goto_98
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 4709
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_b0

    .line 4711
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_af

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    :cond_af
    return v4

    .line 4714
    :cond_b0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_bb

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    :cond_bb
    return v5

    .line 4717
    :cond_bc
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 4719
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_cf

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    :cond_cf
    return v6

    .line 4721
    :cond_d0
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 4723
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_e3

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4724
    :cond_e3
    return v7

    .line 4725
    :cond_e4
    if-ne p1, v1, :cond_11a

    .line 4726
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 4728
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_f9

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    :cond_f9
    return v6

    .line 4730
    :cond_fa
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 4732
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_10d

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    :cond_10d
    return v7

    .line 4735
    :cond_10e
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_119

    .line 4736
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    :cond_119
    return v2

    .line 4744
    :cond_11a
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_134

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    :cond_134
    return p1
.end method

.method private getBluetoothHeadset()Z
    .registers 10

    .line 3862
    const/4 v0, 0x0

    .line 3863
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 3864
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_10

    .line 3865
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    .line 3872
    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3873
    if-eqz v0, :cond_1d

    const/16 v8, 0xbb8

    goto :goto_1e

    :cond_1d
    const/4 v8, 0x0

    .line 3872
    :goto_1e
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3874
    return v0
.end method

.method private getCurrentUserId()I
    .registers 5

    .line 2236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2238
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2239
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2239
    return v3

    .line 2243
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2240
    :catch_17
    move-exception v2

    .line 2243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2244
    nop

    .line 2245
    const/4 v2, 0x0

    return v2
.end method

.method private getDeviceForStream(I)I
    .registers 4
    .param p1, "stream"    # I

    .line 4824
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 4825
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_29

    .line 4832
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 4833
    const/4 v0, 0x2

    goto :goto_29

    .line 4834
    :cond_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 4835
    const/high16 v0, 0x40000

    goto :goto_29

    .line 4836
    :cond_17
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    .line 4837
    const/high16 v0, 0x80000

    goto :goto_29

    .line 4838
    :cond_1f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_27

    .line 4839
    const/high16 v0, 0x200000

    goto :goto_29

    .line 4841
    :cond_27
    and-int/lit16 v0, v0, 0x380

    .line 4844
    :cond_29
    :goto_29
    return v0
.end method

.method private getDevicesForStream(I)I
    .registers 3
    .param p1, "stream"    # I

    .line 4848
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .registers 5
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .line 4852
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 4853
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 4854
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 4855
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private getNewRingerMode(III)I
    .registers 6
    .param p1, "stream"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 1911
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_9

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 1916
    :cond_9
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_19

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne p1, v0, :cond_14

    goto :goto_19

    .line 1928
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 1919
    :cond_19
    :goto_19
    const/4 v0, 0x2

    if-nez p2, :cond_2c

    .line 1920
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_2b

    .line 1921
    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v1, :cond_2a

    const/4 v0, 0x0

    goto :goto_2b

    .line 1922
    :cond_2a
    nop

    .local v0, "newRingerMode":I
    :goto_2b
    goto :goto_2d

    .line 1924
    .end local v0    # "newRingerMode":I
    :cond_2c
    nop

    .line 1926
    .restart local v0    # "newRingerMode":I
    :goto_2d
    return v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .registers 7

    .line 4306
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 4307
    .local v0, "min":I
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 4309
    .local v2, "max":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    .line 4312
    :goto_1c
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_48

    .line 4313
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    .line 4314
    .local v3, "index":I
    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 4316
    .local v4, "gainDB":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 4318
    goto :goto_48

    .line 4319
    :cond_36
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_3e

    .line 4320
    move v0, v3

    .line 4321
    goto :goto_48

    .line 4322
    :cond_3e
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_46

    .line 4323
    move v0, v3

    goto :goto_47

    .line 4325
    :cond_46
    move v2, v3

    .line 4327
    .end local v3    # "index":I
    .end local v4    # "gainDB":F
    :goto_47
    goto :goto_1c

    .line 4328
    :cond_48
    :goto_48
    mul-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .line 3829
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3830
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$ScoClient;

    .line 3831
    .local v2, "existingClient":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_1d

    .line 3832
    monitor-exit v0

    return-object v2

    .line 3834
    .end local v2    # "existingClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1d
    goto :goto_9

    .line 3835
    :cond_1e
    if-eqz p2, :cond_2c

    .line 3836
    new-instance v1, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    .line 3837
    .local v1, "newClient":Lcom/android/server/audio/AudioService$ScoClient;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3838
    monitor-exit v0

    return-object v1

    .line 3840
    .end local v1    # "newClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2c
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 3841
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7039
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 7040
    .local v0, "target":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 7041
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect broadcast already targeted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7042
    return-void

    .line 7044
    :cond_1d
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7046
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 7048
    .local v1, "ril":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_52

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_52

    .line 7049
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 7050
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_52

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_52

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_52

    .line 7051
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7052
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7053
    return-void

    .line 7056
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_52
    const-string v2, "AudioService"

    const-string v3, "couldn\'t find receiver package for effect intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7057
    return-void
.end method

.method private handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 15
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isActive"    # Z

    .line 3965
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 3966
    return v0

    .line 3969
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 3970
    .local v1, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 3971
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    const v3, -0x7ffffff8

    .line 3972
    .local v3, "inDevice":I
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_8a

    .line 3977
    .local v4, "outDeviceTypes":[I
    const/4 v5, 0x0

    if-eqz v2, :cond_39

    .line 3978
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    const/16 v7, 0x404

    if-eq v6, v7, :cond_31

    const/16 v7, 0x408

    if-eq v6, v7, :cond_31

    const/16 v7, 0x420

    if-eq v6, v7, :cond_29

    goto :goto_39

    .line 3984
    :cond_29
    new-array v6, v0, [I

    const/16 v7, 0x40

    aput v7, v6, v5

    move-object v4, v6

    goto :goto_39

    .line 3981
    :cond_31
    new-array v6, v0, [I

    const/16 v7, 0x20

    aput v7, v6, v5

    move-object v4, v6

    .line 3982
    nop

    .line 3988
    :cond_39
    :goto_39
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 3989
    const-string v1, ""

    .line 3991
    :cond_41
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3992
    .local v6, "btDeviceName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3993
    .local v7, "result":Z
    if-eqz p2, :cond_50

    .line 3994
    aget v8, v4, v5

    invoke-direct {p0, p2, v8, v1, v6}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v7, v8

    goto :goto_60

    .line 3996
    :cond_50
    array-length v8, v4

    move v9, v7

    move v7, v5

    .end local v7    # "result":Z
    .local v9, "result":Z
    :goto_53
    if-ge v7, v8, :cond_5f

    aget v10, v4, v7

    .line 3997
    .local v10, "outDeviceType":I
    invoke-direct {p0, p2, v10, v1, v6}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v9, v11

    .line 3996
    .end local v10    # "outDeviceType":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 4002
    :cond_5f
    move v7, v9

    .end local v9    # "result":Z
    .restart local v7    # "result":Z
    :goto_60
    invoke-direct {p0, p2, v3, v1, v6}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    if-eqz v7, :cond_69

    goto :goto_6a

    :cond_69
    move v0, v5

    .line 4003
    .end local v7    # "result":Z
    .local v0, "result":Z
    :goto_6a
    const-string v5, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "for inDevice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    return v0

    nop

    :array_8a
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 7214
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v2, v0

    .line 7215
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "AudioService"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    move v3, v0

    .line 7224
    .local v3, "cameraSoundForced":Z
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_9d

    .line 7225
    :try_start_20
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_28

    move v0, v5

    goto :goto_29

    :cond_28
    move v0, v6

    :goto_29
    move v7, v0

    .line 7226
    .local v7, "cameraSoundForcedChanged":Z
    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 7227
    if-eqz v7, :cond_8f

    .line 7228
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x7

    if-nez v0, :cond_61

    .line 7229
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_9a

    .line 7230
    :try_start_36
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    .line 7231
    .local v0, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v3, :cond_46

    .line 7232
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 7233
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_55

    .line 7236
    :cond_46
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v10, v5

    const-string v10, "AudioService"

    invoke-virtual {v0, v5, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 7237
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 7240
    .end local v0    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_55
    monitor-exit v9
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_5e

    .line 7242
    :try_start_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_9a

    goto :goto_61

    .line 7240
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0

    .line 7245
    :cond_61
    :goto_61
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x4

    .line 7249
    if-eqz v3, :cond_6d

    .line 7250
    const/16 v6, 0xb

    :goto_6b
    move v14, v6

    goto :goto_6e

    :cond_6d
    goto :goto_6b

    :goto_6e
    new-instance v15, Ljava/lang/String;

    const-string v0, "handleConfigurationChanged"

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    .line 7245
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7254
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v18, 0xa

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v22, v5, v8

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7261
    .end local v7    # "cameraSoundForcedChanged":Z
    :cond_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_60 .. :try_end_90} :catchall_9a

    .line 7262
    :try_start_90
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_9d

    .line 7265
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    goto :goto_a5

    .line 7261
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "cameraSoundForced":Z
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v4
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw v0
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9d} :catch_9d

    .line 7263
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    :catch_9d
    move-exception v0

    .line 7264
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AudioService"

    const-string v3, "Error handling configuration change: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7266
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a5
    return-void
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 6446
    move-object/from16 v12, p4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_45

    .line 6447
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDeviceConnection("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    :cond_45
    iget-object v13, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v13

    .line 6451
    :try_start_48
    invoke-direct {v1, v10, v11}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6452
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_66

    .line 6453
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6455
    :cond_66
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object v14, v3

    .line 6456
    .local v14, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    const/4 v3, 0x0

    const/4 v15, 0x1

    if-eqz v14, :cond_75

    move v4, v15

    goto :goto_76

    :cond_75
    move v4, v3

    :goto_76
    move v9, v4

    .line 6457
    .local v9, "isConnected":Z
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v4, :cond_99

    .line 6458
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceSpec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is(already)Connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6460
    :cond_99
    if-eqz v2, :cond_eb

    if-nez v9, :cond_eb

    .line 6461
    invoke-static {v10, v15, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v8, v4

    .line 6463
    .local v8, "res":I
    if-eqz v8, :cond_c9

    .line 6464
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not connecting device 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to command error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6466
    monitor-exit v13

    return v3

    .line 6468
    :cond_c9
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v4, v1, v10, v12, v11}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6469
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x1b

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v6, v10

    move/from16 v18, v8

    move-object/from16 v8, v16

    .line 6469
    .end local v8    # "res":I
    .local v18, "res":I
    move/from16 v16, v9

    move/from16 v9, v17

    .line 6469
    .end local v9    # "isConnected":Z
    .local v16, "isConnected":Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6471
    monitor-exit v13

    return v15

    .line 6472
    .end local v16    # "isConnected":Z
    .end local v18    # "res":I
    .restart local v9    # "isConnected":Z
    :cond_eb
    move/from16 v16, v9

    .line 6472
    .end local v9    # "isConnected":Z
    .restart local v16    # "isConnected":Z
    if-nez v2, :cond_fb

    if-eqz v16, :cond_fb

    .line 6473
    invoke-static {v10, v3, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6476
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6477
    monitor-exit v13

    return v15

    .line 6479
    :cond_fb
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", deviceSpec="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", connect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6481
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v14    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v16    # "isConnected":Z
    monitor-exit v13
    :try_end_122
    .catchall {:try_start_48 .. :try_end_122} :catchall_12a

    .line 6483
    const-string v0, "AudioService"

    const-string v4, "handleDeviceConnection: returning false"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6484
    return v3

    .line 6481
    :catchall_12a
    move-exception v0

    :try_start_12b
    monitor-exit v13
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    throw v0
.end method

.method private hasMediaDynamicPolicy()Z
    .registers 8

    .line 6541
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 6542
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 6543
    monitor-exit v0

    return v2

    .line 6545
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 6546
    .local v1, "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 6547
    .local v4, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 6548
    monitor-exit v0

    return v5

    .line 6550
    .end local v4    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_2d
    goto :goto_18

    .line 6551
    :cond_2e
    monitor-exit v0

    return v2

    .line 6552
    .end local v1    # "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 2390
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2391
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2393
    const/4 v1, 0x1

    return v1

    .line 2396
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .line 6269
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initA11yMonitoring()V
    .registers 3

    .line 7519
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 7520
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 7521
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 7522
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 7523
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 7524
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    .line 7525
    return-void
.end method

.method private isAlarm(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 2798
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .registers 7
    .param p1, "caller"    # Ljava/lang/String;

    .line 1933
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1934
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1935
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1934
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1936
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_1c

    const/16 v4, 0x18

    if-lt v2, v4, :cond_1b

    .line 1937
    return v0

    .line 1939
    :cond_1b
    return v3

    .line 1940
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1c
    move-exception v1

    .line 1941
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isAudioPathUp()Z
    .registers 7

    .line 6771
    const/4 v0, 0x0

    .line 6772
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6773
    .local v1, "it":Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 6774
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2b

    .line 6775
    const/4 v0, 0x1

    .line 6776
    goto :goto_2c

    .line 6778
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_2b
    goto :goto_15

    .line 6779
    :cond_2c
    :goto_2c
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAudioPathUp returns"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    return v0
.end method

.method private isBluetoothAudioNotConnectedToEarbud()Z
    .registers 8

    .line 3426
    const/4 v0, 0x1

    .line 3427
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3428
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3431
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 3432
    .local v1, "pDevAddr":Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 3433
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 3434
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3435
    .local v3, "peerDev":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "peer device audio State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4e

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3438
    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_56

    .line 3440
    :cond_4e
    const-string v4, "AudioService"

    const-string v5, "TwsPLus Case: one of eb SCO is connected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    const/4 v0, 0x0

    .line 3445
    .end local v1    # "pDevAddr":Ljava/lang/String;
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "peerDev":Landroid/bluetooth/BluetoothDevice;
    :cond_56
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothAudioConnectedToEarbud returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    return v0
.end method

.method private isInCommunication()Z
    .registers 7

    .line 4632
    const/4 v0, 0x0

    .line 4634
    .local v0, "IsInCall":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    .line 4635
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 4637
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4638
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 4639
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4641
    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2a

    .line 4642
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v4, 0x1

    .line 4641
    :goto_2b
    return v4
.end method

.method private isMedia(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 2807
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isMuteAdjust(I)Z
    .registers 3
    .param p1, "adjust"    # I

    .line 4627
    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x65

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isNotificationOrRinger(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 2802
    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private isPlatformAutomotive()Z
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPlatformTelevision()Z
    .registers 3

    .line 234
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isPlatformVoice()Z
    .registers 3

    .line 230
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .line 4525
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private isSystem(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 2812
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .registers 13
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .line 7060
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7063
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 7064
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_15

    .line 7065
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 7067
    :cond_15
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 7070
    .local v2, "permissions":[Ljava/lang/String;
    :try_start_1b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 7071
    invoke-interface {v3, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_95

    .line 7074
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 7073
    nop

    .line 7075
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 7075
    .local v4, "j":I
    :goto_32
    if-ltz v4, :cond_94

    .line 7076
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 7078
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_47

    .line 7079
    goto :goto_91

    .line 7082
    :cond_47
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_52

    .line 7084
    goto :goto_91

    .line 7088
    :cond_52
    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v5}, Landroid/media/AudioServiceInjector;->isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 7089
    goto :goto_91

    .line 7093
    :cond_5b
    if-eqz v1, :cond_72

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7094
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7095
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 7096
    goto :goto_91

    .line 7099
    :cond_72
    :try_start_72
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7100
    .local v6, "uid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 7101
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string/jumbo v10, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 7100
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_88} :catch_89

    .line 7105
    .end local v6    # "uid":I
    goto :goto_91

    .line 7103
    :catch_89
    move-exception v6

    .line 7104
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AudioService"

    const-string v8, "Error calling killUid"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7075
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_91
    add-int/lit8 v4, v4, -0x1

    goto :goto_32

    .line 7107
    .end local v4    # "j":I
    :cond_94
    return-void

    .line 7072
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_95
    move-exception v3

    .line 7073
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 6

    .line 3101
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "Effect_Tick.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3102
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_9
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1e

    .line 3103
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v1

    aput v0, v2, v0

    .line 3104
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 3102
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3106
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 12

    .line 3109
    const/4 v0, 0x0

    .line 3112
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3113
    return-void

    .line 3116
    :cond_a
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 3119
    :try_start_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 3121
    const-string v1, "audio_assets"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3122
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3123
    .local v1, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3125
    .local v3, "inTouchSoundsGroup":Z
    const-string v4, "1.0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 3127
    :goto_31
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3128
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3129
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_3b

    .line 3130
    goto :goto_55

    .line 3132
    :cond_3b
    const-string v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 3133
    const-string/jumbo v5, "name"

    invoke-interface {v0, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3134
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "touch_sounds"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 3135
    const/4 v3, 0x1

    .line 3136
    nop

    .line 3140
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :goto_55
    if-eqz v3, :cond_b9

    .line 3141
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3142
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3143
    .restart local v4    # "element":Ljava/lang/String;
    if-nez v4, :cond_61

    .line 3144
    goto :goto_b9

    .line 3146
    :cond_61
    const-string v5, "asset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 3147
    const-string v5, "id"

    invoke-interface {v0, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3148
    .local v5, "id":Ljava/lang/String;
    const-string v6, "file"

    invoke-interface {v0, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_75
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_75} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_75} :catch_cc
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_75} :catch_c1
    .catchall {:try_start_d .. :try_end_75} :catchall_bf

    .line 3152
    .local v6, "file":Ljava/lang/String;
    :try_start_75
    const-class v7, Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3153
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7f} :catch_9f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_75 .. :try_end_7f} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_7f} :catch_cc
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7f} :catch_c1
    .catchall {:try_start_75 .. :try_end_7f} :catchall_bf

    .line 3153
    .end local v7    # "field":Ljava/lang/reflect/Field;
    move v7, v8

    .line 3157
    .local v7, "fx":I
    nop

    .line 3156
    nop

    .line 3159
    :try_start_82
    sget-object v8, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 3160
    .local v8, "i":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_97

    .line 3161
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v8, v9

    .line 3162
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3164
    :cond_97
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v7

    const/4 v10, 0x0

    aput v8, v9, v10

    .line 3168
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "fx":I
    .end local v8    # "i":I
    goto :goto_55

    .line 3154
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "file":Ljava/lang/String;
    :catch_9f
    move-exception v7

    .line 3155
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid touch sound ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_82 .. :try_end_b6} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_b6} :catch_cc
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_b6} :catch_c1
    .catchall {:try_start_82 .. :try_end_b6} :catchall_bf

    .line 3156
    goto :goto_55

    .line 3139
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b7
    goto/16 :goto_31

    .line 3177
    .end local v1    # "version":Ljava/lang/String;
    .end local v3    # "inTouchSoundsGroup":Z
    :cond_b9
    :goto_b9
    if-eqz v0, :cond_e2

    .line 3178
    :goto_bb
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_e2

    .line 3177
    :catchall_bf
    move-exception v1

    goto :goto_e3

    .line 3174
    :catch_c1
    move-exception v1

    .line 3175
    .local v1, "e":Ljava/io/IOException;
    :try_start_c2
    const-string v2, "AudioService"

    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3177
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_e2

    goto :goto_bb

    .line 3172
    :catch_cc
    move-exception v1

    .line 3173
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "AudioService"

    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3177
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v0, :cond_e2

    goto :goto_bb

    .line 3170
    :catch_d7
    move-exception v1

    .line 3171
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "AudioService"

    const-string v3, "audio assets file not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_df
    .catchall {:try_start_c2 .. :try_end_df} :catchall_bf

    .line 3177
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v0, :cond_e2

    goto :goto_bb

    .line 3181
    :cond_e2
    :goto_e2
    return-void

    .line 3177
    :goto_e3
    if-eqz v0, :cond_e8

    .line 3178
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e8
    throw v1
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 6152
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 6153
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 6154
    const/16 v2, 0x80

    invoke-static {v2, v1, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6157
    const-string v1, "A2dpSuspended=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6158
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6159
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v4, p0, v2, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6158
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6162
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x1b

    const/4 v7, 0x2

    const/16 v8, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6164
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .line 6193
    const-string v0, "A2dpSuspended=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6195
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6196
    const/16 v1, 0x80

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6195
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6198
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 6204
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 6172
    if-nez p1, :cond_3

    .line 6173
    return-void

    .line 6175
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6176
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 6177
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_25

    .line 6178
    const-string v0, ""

    const/16 v2, 0x80

    invoke-static {v2, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6180
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6181
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6180
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6183
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6184
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    if-ne v1, p1, :cond_24

    .line 6185
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    .line 6187
    :cond_24
    return-void

    .line 6177
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .line 6208
    const-string v0, ""

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6210
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6211
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string v4, ""

    invoke-direct {v3, p0, v1, v4, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6210
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6214
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 6218
    const-string v0, ""

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6220
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6221
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6220
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6222
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .registers 4
    .param p0, "card"    # I
    .param p1, "device"    # I

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 6239
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 6240
    .local v0, "index":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 6242
    const/4 v1, 0x1

    invoke-static {v2, v1, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6244
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6245
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v4, p0, v2, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6244
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6248
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x1b

    const/4 v7, 0x2

    const/high16 v8, 0x8000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6250
    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 6254
    const-string v0, ""

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6256
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6257
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6256
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6260
    return-void
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;)Z
    .registers 8
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 2658
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2659
    return v1

    .line 2661
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 2663
    .local v0, "hapticsDisabled":Z
    :goto_19
    if-eqz v0, :cond_1c

    .line 2664
    return v1

    .line 2667
    :cond_1c
    if-nez p1, :cond_1f

    .line 2668
    return v1

    .line 2670
    :cond_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 2671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 2670
    invoke-virtual {v1, v3, v4, p1, v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 2672
    return v2
.end method

.method private muteRingerModeStreams()V
    .registers 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation

    .line 2734
    move-object/from16 v1, p0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 2736
    .local v2, "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_17

    .line 2737
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2740
    :cond_17
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 2741
    .local v3, "ringerMode":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_25

    if-eqz v3, :cond_25

    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-nez v5, :cond_23

    goto :goto_25

    :cond_23
    const/4 v5, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    move v5, v4

    .line 2745
    .local v5, "ringerModeMute":Z
    :goto_26
    if-ne v3, v4, :cond_30

    .line 2746
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_30

    move v6, v4

    goto :goto_31

    :cond_30
    const/4 v6, 0x0

    .line 2748
    .local v6, "shouldRingSco":Z
    :goto_31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2750
    .local v7, "eventSource":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    .line 2751
    if-eqz v6, :cond_5e

    const/4 v8, 0x3

    move v13, v8

    goto :goto_5f

    :cond_5e
    const/4 v13, 0x0

    :goto_5f
    const/4 v15, 0x0

    .line 2750
    move-object v14, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2753
    add-int/lit8 v8, v2, -0x1

    .line 2753
    .local v8, "streamType":I
    :goto_66
    if-ltz v8, :cond_123

    .line 2754
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v9

    .line 2755
    .local v9, "isMuted":Z
    const/4 v10, 0x2

    if-eqz v6, :cond_74

    if-eq v8, v10, :cond_72

    goto :goto_74

    :cond_72
    const/4 v11, 0x0

    goto :goto_75

    :cond_74
    :goto_74
    move v11, v4

    .line 2757
    .local v11, "muteAllowedBySco":Z
    :goto_75
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v12

    .line 2758
    .local v12, "shouldZenMute":Z
    if-nez v12, :cond_88

    if-eqz v5, :cond_86

    .line 2759
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_86

    if-eqz v11, :cond_86

    goto :goto_88

    :cond_86
    const/4 v13, 0x0

    goto :goto_89

    :cond_88
    :goto_88
    move v13, v4

    .line 2760
    .local v13, "shouldMute":Z
    :goto_89
    if-ne v9, v13, :cond_90

    .line 2753
    .end local v9    # "isMuted":Z
    .end local v11    # "muteAllowedBySco":Z
    .end local v12    # "shouldZenMute":Z
    .end local v13    # "shouldMute":Z
    move/from16 v17, v2

    const/4 v2, 0x0

    goto/16 :goto_11d

    .line 2761
    .restart local v9    # "isMuted":Z
    .restart local v11    # "muteAllowedBySco":Z
    .restart local v12    # "shouldZenMute":Z
    .restart local v13    # "shouldMute":Z
    :cond_90
    if-nez v13, :cond_10c

    .line 2764
    sget-object v14, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v8

    if-ne v14, v10, :cond_f8

    .line 2766
    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v10

    if-eqz v10, :cond_f8

    .line 2767
    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10

    .line 2768
    :try_start_a1
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v14, v8

    .line 2769
    .local v14, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v15, 0x0

    .line 2769
    .local v15, "i":I
    :goto_a6
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1600(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_d6

    .line 2770
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1600(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2771
    .local v4, "device":I
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1600(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 2772
    .local v0, "value":I
    if-nez v0, :cond_ce

    .line 2773
    move/from16 v16, v0

    .line 2773
    .end local v0    # "value":I
    .local v16, "value":I
    const-string v0, "AudioService"
    :try_end_c6
    .catchall {:try_start_a1 .. :try_end_c6} :catchall_f1

    move/from16 v17, v2

    const/16 v2, 0xa

    :try_start_ca
    invoke-virtual {v14, v2, v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 2773
    .end local v2    # "numStreamTypes":I
    .end local v4    # "device":I
    .end local v16    # "value":I
    .local v17, "numStreamTypes":I
    goto :goto_d0

    .line 2769
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_ce
    move/from16 v17, v2

    .line 2769
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_d0
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    const/4 v4, 0x1

    goto :goto_a6

    .line 2777
    .end local v15    # "i":I
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_d6
    move/from16 v17, v2

    .line 2777
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v21

    .line 2778
    .local v21, "device":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v19, 0x1

    const/16 v20, 0x2

    const/16 v22, 0x0

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v23, v2, v8

    const/16 v24, 0x1f4

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v24}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2785
    .end local v14    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v21    # "device":I
    monitor-exit v10

    goto :goto_fa

    .line 2785
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :catchall_f1
    move-exception v0

    move/from16 v17, v2

    .line 2785
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_f4
    monitor-exit v10
    :try_end_f5
    .catchall {:try_start_ca .. :try_end_f5} :catchall_f6

    throw v0

    :catchall_f6
    move-exception v0

    goto :goto_f4

    .line 2787
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_f8
    move/from16 v17, v2

    .line 2787
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_fa
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2788
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v4, 0x1

    shl-int v10, v4, v8

    not-int v10, v10

    and-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_11d

    .line 2791
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_10c
    move/from16 v17, v2

    const/4 v2, 0x0

    .line 2791
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2792
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v10, v4, v8

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 2753
    .end local v9    # "isMuted":Z
    .end local v11    # "muteAllowedBySco":Z
    .end local v12    # "shouldZenMute":Z
    .end local v13    # "shouldMute":Z
    :goto_11d
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v17

    goto/16 :goto_66

    .line 2795
    .end local v8    # "streamType":I
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_123
    move/from16 v17, v2

    .line 2795
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .registers 6
    .param p1, "skipStream"    # I

    .line 4859
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 4860
    const/4 v1, 0x0

    move v2, v1

    .local v2, "stream":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_16

    .line 4861
    if-eq v2, p1, :cond_13

    .line 4862
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 4860
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4865
    .end local v2    # "stream":I
    :cond_16
    monitor-exit v0

    .line 4866
    return-void

    .line 4865
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .registers 10
    .param p1, "newDevice"    # I

    .line 5007
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_21

    .line 5008
    const-string v0, "AudioService"

    const-string/jumbo v4, "onAccessoryPlugMediaUnmute newDevice=%d [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    .line 5009
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 5008
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5011
    :cond_21
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5012
    :try_start_24
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v4

    if-eq v4, v3, :cond_72

    const v4, 0x402678c

    and-int/2addr v4, p1

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    .line 5014
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v5

    .line 5015
    invoke-virtual {v4, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    if-eqz v4, :cond_72

    .line 5016
    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_72

    .line 5018
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v4, :cond_6b

    .line 5019
    const-string v4, "AudioService"

    const-string v6, " onAccessoryPlugMediaUnmute unmuting device=%d [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    .line 5020
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 5019
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    :cond_6b
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v5

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5024
    :cond_72
    monitor-exit v0

    .line 5025
    return-void

    .line 5024
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_24 .. :try_end_76} :catchall_74

    throw v1
.end method

.method private onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 15
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 6401
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_1b

    .line 6402
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothA2dpDeviceConfigChange btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6404
    :cond_1b
    if-nez p1, :cond_1e

    .line 6405
    return-void

    .line 6407
    :cond_1e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6408
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 6409
    const-string v0, ""

    .line 6412
    :cond_2a
    const/16 v1, 0x80

    .line 6413
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 6414
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 6415
    monitor-exit v2

    return-void

    .line 6417
    :cond_3b
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6418
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6419
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v4, :cond_62

    .line 6421
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v11

    .line 6422
    .local v11, "musicDevice":I
    nop

    .line 6423
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 6422
    invoke-static {v1, v0, v5}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_62

    .line 6426
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v12, -0x1

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I

    .line 6431
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v11    # "musicDevice":I
    :cond_62
    monitor-exit v2

    .line 6432
    return-void

    .line 6431
    :catchall_64
    move-exception v3

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_2f .. :try_end_66} :catchall_64

    throw v3
.end method

.method private onBroadcastScoConnectionState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 3954
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    if-eq p1, v0, :cond_1c

    .line 3955
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3956
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3957
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3959
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3960
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 3962
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .registers 13
    .param p1, "caller"    # Ljava/lang/String;

    .line 4272
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 4273
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4f

    .line 4274
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 4276
    .local v2, "device":I
    const v3, 0x400000c

    and-int/2addr v3, v2

    if-eqz v3, :cond_4f

    .line 4277
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4284
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 4285
    .local v3, "index":I
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 4286
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le v3, v1, :cond_4f

    .line 4288
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0xea60

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4289
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0x44aa200

    if-le v1, v5, :cond_4f

    .line 4290
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 4291
    iput v4, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4296
    .end local v2    # "device":I
    .end local v3    # "index":I
    :cond_4f
    monitor-exit v0

    .line 4297
    return-void

    .line 4296
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .registers 16
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 4332
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 4333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 4334
    .local v1, "mcc":I
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_19

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v2, :cond_82

    if-eqz p1, :cond_82

    .line 4335
    :cond_19
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 4338
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 4340
    const-string v2, "audio.safemedia.force"

    .line 4341
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4342
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x112009a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4c

    :cond_4a
    move v2, v3

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v2, v4

    .line 4345
    .local v2, "safeMediaVolumeEnabled":Z
    :goto_4d
    const-string v5, "audio.safemedia.bypass"

    .line 4346
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4351
    .local v3, "safeMediaVolumeBypass":Z
    if-eqz v2, :cond_6c

    if-nez v3, :cond_6c

    .line 4352
    const/4 v4, 0x3

    .line 4356
    .local v4, "persistedState":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_74

    .line 4357
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4358
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_74

    .line 4361
    .end local v4    # "persistedState":I
    :cond_6c
    const/4 v5, 0x1

    .line 4362
    .local v5, "persistedState":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4364
    move v4, v5

    .end local v5    # "persistedState":I
    .restart local v4    # "persistedState":I
    :cond_74
    :goto_74
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 4365
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0x12

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4373
    .end local v1    # "mcc":I
    .end local v2    # "safeMediaVolumeEnabled":Z
    .end local v3    # "safeMediaVolumeBypass":Z
    .end local v4    # "persistedState":I
    :cond_82
    monitor-exit v0

    .line 4374
    return-void

    .line 4373
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw v1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .registers 8
    .param p1, "state"    # Z

    .line 1123
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AsdProxy;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2c

    .line 1126
    .local v2, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2c

    .line 1129
    goto :goto_29

    .line 1127
    :catch_21
    move-exception v3

    .line 1128
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v4, "AudioService"

    const-string v5, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    .end local v2    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_29
    goto :goto_d

    .line 1131
    :cond_2a
    monitor-exit v0

    .line 1132
    return-void

    .line 1131
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .registers 10
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 8203
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_28

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8204
    :cond_28
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8205
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8206
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 8207
    .local v4, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5d
    .catchall {:try_start_2b .. :try_end_5d} :catchall_88

    if-eqz v5, :cond_84

    .line 8209
    :try_start_5f
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_65
    .catchall {:try_start_5f .. :try_end_64} :catchall_88

    .line 8213
    goto :goto_82

    .line 8210
    :catch_65
    move-exception v1

    .line 8211
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_66
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8212
    invoke-interface {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8211
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8214
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_82
    monitor-exit v0

    return-void

    .line 8216
    .end local v4    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_84
    goto :goto_49

    .line 8217
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_85
    goto :goto_35

    .line 8218
    :cond_86
    monitor-exit v0

    .line 8219
    return-void

    .line 8218
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_66 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private onEnableSurroundFormats(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1419
    .local p1, "enabledSurroundFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_3d

    aget v3, v0, v2

    .line 1420
    .local v3, "surroundFormat":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1421
    .local v4, "enabled":Z
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    .line 1422
    .local v5, "ret":I
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enable surround format:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    .end local v3    # "surroundFormat":I
    .end local v4    # "enabled":Z
    .end local v5    # "ret":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1424
    :cond_3d
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .registers 3

    .line 6167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6168
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "a2dpVolume"    # I

    .line 6274
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_2f

    .line 6275
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetA2dpSinkConnectionState btDevice= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is dock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6276
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6275
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6278
    :cond_2f
    if-nez p1, :cond_32

    .line 6279
    return-void

    .line 6281
    :cond_32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6282
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 6283
    const-string v0, ""

    .line 6286
    :cond_3e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6287
    nop

    .line 6288
    :try_start_42
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 6287
    const/16 v3, 0x80

    invoke-direct {p0, v3, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6289
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6290
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v4, :cond_58

    const/4 v5, 0x1

    goto :goto_59

    :cond_58
    const/4 v5, 0x0

    .line 6292
    .local v5, "isConnected":Z
    :goto_59
    const/4 v6, 0x2

    if-eqz v5, :cond_74

    if-eq p2, v6, :cond_74

    .line 6293
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 6294
    if-nez p2, :cond_6f

    .line 6298
    const/16 v3, 0x1f40

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    goto :goto_6f

    .line 6302
    :cond_6c
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 6304
    :cond_6f
    :goto_6f
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    goto :goto_ba

    .line 6305
    :cond_74
    if-nez v5, :cond_ba

    if-ne p2, v6, :cond_ba

    .line 6306
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 6308
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 6309
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    goto :goto_96

    .line 6313
    :cond_84
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v6

    if-eqz v6, :cond_96

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    if-eqz v6, :cond_96

    .line 6314
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 6315
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 6318
    :cond_96
    :goto_96
    const/4 v6, -0x1

    if-eq p3, v6, :cond_a9

    .line 6319
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    .line 6321
    .local v6, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    mul-int/lit8 p3, p3, 0xa

    .line 6322
    const-string/jumbo v7, "onSetA2dpSinkConnectionState"

    invoke-virtual {v6, p3, v3, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 6324
    invoke-direct {p0, v6, v3}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6326
    .end local v6    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_a9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "onSetA2dpSinkConnectionState"

    invoke-direct {p0, v0, v3, v6}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6328
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6330
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v5    # "isConnected":Z
    :cond_ba
    :goto_ba
    monitor-exit v1

    .line 6331
    return-void

    .line 6330
    :catchall_bc
    move-exception v2

    monitor-exit v1
    :try_end_be
    .catchall {:try_start_42 .. :try_end_be} :catchall_bc

    throw v2
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 6335
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_23

    .line 6336
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    :cond_23
    if-nez p1, :cond_26

    .line 6339
    return-void

    .line 6341
    :cond_26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6342
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 6343
    const-string v0, ""

    .line 6346
    :cond_32
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6347
    const/high16 v2, -0x7ffe0000

    :try_start_37
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6348
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6349
    .local v3, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v3, :cond_47

    const/4 v4, 0x1

    goto :goto_48

    :cond_47
    const/4 v4, 0x0

    .line 6351
    .local v4, "isConnected":Z
    :goto_48
    const/4 v5, 0x2

    if-eqz v4, :cond_51

    if-eq p2, v5, :cond_51

    .line 6352
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_58

    .line 6353
    :cond_51
    if-nez v4, :cond_58

    if-ne p2, v5, :cond_58

    .line 6354
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 6356
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v4    # "isConnected":Z
    :cond_58
    :goto_58
    monitor-exit v1

    .line 6357
    return-void

    .line 6356
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_37 .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method private onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 10
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 6361
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_23

    .line 6362
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetHearingAidConnectionState btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6364
    :cond_23
    if-nez p1, :cond_26

    .line 6365
    return-void

    .line 6367
    :cond_26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6368
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 6369
    const-string v0, ""

    .line 6372
    :cond_32
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6373
    const/high16 v2, 0x8000000

    .line 6374
    :try_start_37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 6373
    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6375
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6376
    .local v3, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v3, :cond_4b

    const/4 v4, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v4, 0x0

    .line 6378
    .local v4, "isConnected":Z
    :goto_4c
    const/4 v5, 0x2

    if-eqz v4, :cond_59

    if-eq p2, v5, :cond_59

    .line 6379
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    .line 6380
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    goto :goto_6e

    .line 6381
    :cond_59
    if-nez v4, :cond_6e

    if-ne p2, v5, :cond_6e

    .line 6382
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6384
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6386
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v4    # "isConnected":Z
    :cond_6e
    :goto_6e
    monitor-exit v1

    .line 6387
    return-void

    .line 6386
    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_37 .. :try_end_72} :catchall_70

    throw v2
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    .line 1958
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    .line 1961
    .local v0, "stream":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v6

    sget-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p4

    invoke-static/range {v2 .. v8}, Landroid/media/AudioServiceInjector;->setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V

    .line 1965
    iget v1, p0, Lcom/android/server/audio/AudioService;->mZenMode:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioServiceInjector;->isOnlyAdjustVolume(III)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1966
    return-void

    .line 1970
    :cond_20
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    .line 1971
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 1973
    :cond_2b
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v1

    .line 1974
    .local v1, "newRingerMode":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v1

    .line 1976
    const-string v3, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1982
    .end local v1    # "newRingerMode":I
    :cond_3a
    if-lez p2, :cond_43

    .line 1983
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1986
    :cond_43
    return-void
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 6649
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_55

    .line 6650
    const-string v0, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6651
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " deviceName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " caller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ");"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6650
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 6657
    :cond_55
    move-object/from16 v7, p5

    :goto_57
    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 6658
    const v0, 0x402600c

    const/4 v15, 0x1

    if-nez v3, :cond_6e

    and-int v8, v2, v0

    if-eqz v8, :cond_6e

    .line 6659
    :try_start_64
    const-string/jumbo v8, "onSetWiredDeviceConnectionState state 0"

    invoke-virtual {v1, v15, v8}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    goto :goto_6e

    .line 6706
    :catchall_6b
    move-exception v0

    goto/16 :goto_f7

    .line 6662
    :cond_6e
    :goto_6e
    const/4 v14, 0x0

    if-ne v3, v15, :cond_73

    move v8, v15

    goto :goto_74

    :cond_73
    move v8, v14

    :goto_74
    invoke-direct {v1, v8, v2, v4, v5}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7c

    .line 6664
    monitor-exit v6

    return-void

    .line 6666
    :cond_7c
    if-eqz v3, :cond_d6

    .line 6667
    and-int/2addr v0, v2

    if-eqz v0, :cond_87

    .line 6668
    const-string/jumbo v0, "onSetWiredDeviceConnectionState state not 0"

    invoke-virtual {v1, v14, v0}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 6670
    :cond_87
    const v0, 0x400000c

    and-int/2addr v0, v2

    if-eqz v0, :cond_9e

    .line 6671
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v0, 0xea60

    move-object v13, v7

    move v15, v14

    move v14, v0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_9f

    .line 6680
    :cond_9e
    move v15, v14

    :goto_9f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_cb

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_cb

    .line 6681
    iget v0, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 6682
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 6683
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_cb

    .line 6684
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v8
    :try_end_b9
    .catchall {:try_start_64 .. :try_end_b9} :catchall_6b

    .line 6685
    :try_start_b9
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_c6

    .line 6686
    iput-boolean v15, v1, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 6687
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 6689
    :cond_c6
    monitor-exit v8

    goto :goto_cb

    :catchall_c8
    move-exception v0

    monitor-exit v8
    :try_end_ca
    .catchall {:try_start_b9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v0

    .line 6692
    :cond_cb
    :goto_cb
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_ef

    .line 6693
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x1

    invoke-direct {v1, v0, v8}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_ef

    .line 6696
    :cond_d6
    move v15, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_ef

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_ef

    .line 6697
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_ef

    .line 6698
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v8
    :try_end_e8
    .catchall {:try_start_ca .. :try_end_e8} :catchall_6b

    .line 6699
    :try_start_e8
    iput-boolean v15, v1, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 6700
    monitor-exit v8

    goto :goto_ef

    :catchall_ec
    move-exception v0

    monitor-exit v8
    :try_end_ee
    .catchall {:try_start_e8 .. :try_end_ee} :catchall_ec

    :try_start_ee
    throw v0

    .line 6704
    :cond_ef
    :goto_ef
    invoke-direct/range {p0 .. p4}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 6705
    invoke-direct/range {p0 .. p2}, Lcom/android/server/audio/AudioService;->updateAudioRoutes(II)V

    .line 6706
    monitor-exit v6

    .line 6707
    return-void

    .line 6706
    :goto_f7
    monitor-exit v6
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_6b

    throw v0
.end method

.method private onUnmuteStream(II)V
    .registers 6
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .line 1857
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 1858
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1860
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 1861
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1862
    .local v2, "index":I
    invoke-virtual {p0, p1, v2, v2, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 1863
    return-void
.end method

.method private persistVolumeIfNeeded(ILcom/android/server/audio/AudioService$VolumeStreamState;Z)V
    .registers 11
    .param p1, "device"    # I
    .param p2, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p3, "persist"    # Z

    .line 184
    if-eqz p3, :cond_d

    .line 185
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 193
    :cond_d
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 18
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 4775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4778
    .local v0, "ident":J
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4779
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4780
    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4781
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .registers 7

    .line 7732
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 7733
    .local v0, "isLowRamDevice":Z
    const-wide/32 v1, 0x40000000

    .line 7736
    .local v1, "totalMemory":J
    :try_start_7
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 7737
    .local v3, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 7738
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    move-wide v1, v4

    .line 7742
    .end local v3    # "info":Landroid/app/ActivityManager$MemoryInfo;
    goto :goto_20

    .line 7739
    :catch_17
    move-exception v3

    .line 7740
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7741
    const/4 v0, 0x1

    .line 7744
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_20
    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v3

    .line 7745
    .local v3, "status":I
    if-eqz v3, :cond_3c

    .line 7746
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7748
    :cond_3c
    return-void
.end method

.method private readAudioSettings(Z)V
    .registers 8
    .param p1, "userSwitch"    # Z

    .line 3315
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 3316
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 3319
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3320
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "streamType":I
    :goto_c
    const/4 v3, 0x3

    if-ge v2, v0, :cond_42

    .line 3321
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    .line 3323
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_1c

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_1c

    .line 3324
    goto :goto_3c

    .line 3327
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3328
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 3330
    :try_start_22
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_34

    .line 3331
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_34
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3b

    .line 3332
    :cond_38
    # setter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$702(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 3334
    :cond_3b
    monitor-exit v5

    .line 3320
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3334
    .restart local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_3f
    move-exception v1

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v1

    .line 3339
    .end local v2    # "streamType":I
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3341
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 3342
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 3343
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 3345
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 3346
    :try_start_55
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_62

    .line 3347
    const-string v2, "AudioService"

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 3349
    :cond_62
    monitor-exit v1

    .line 3350
    return-void

    .line 3349
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private readCameraSoundForced()Z
    .registers 4

    .line 7197
    const-string v0, "audio.camerasound.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 7198
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    .line 7197
    :goto_1b
    return v1
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .registers 12
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1306
    const-string v0, "dock_audio_media_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1309
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 1313
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1c

    .line 1314
    const/16 v1, 0x8

    :goto_1a
    move v7, v1

    goto :goto_1d

    :cond_1c
    goto :goto_1a

    :goto_1d
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v0, "readDockAudioSettings"

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 1309
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1317
    return-void
.end method

.method private readPersistedSettings()V
    .registers 10

    .line 1427
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1429
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    .line 1430
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1432
    .local v1, "ringerModeFromSettings":I
    move v3, v1

    .line 1435
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1436
    const/4 v3, 0x2

    .line 1438
    :cond_12
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_1a

    .line 1439
    const/4 v3, 0x0

    .line 1441
    :cond_1a
    if-eq v3, v1, :cond_22

    .line 1442
    const-string/jumbo v5, "mode_ringer"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1444
    :cond_22
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v5, :cond_2a

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v5, :cond_2b

    .line 1445
    :cond_2a
    const/4 v3, 0x2

    .line 1447
    :cond_2b
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1448
    :try_start_2e
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1449
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_39

    .line 1450
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1456
    :cond_39
    nop

    .line 1458
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_41

    .line 1456
    move v6, v2

    goto :goto_43

    .line 1459
    :cond_41
    nop

    .line 1456
    move v6, v7

    :goto_43
    invoke-static {v7, v4, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1460
    iget v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1462
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_50

    goto :goto_52

    .line 1463
    :cond_50
    nop

    .line 1460
    move v2, v7

    :goto_52
    invoke-static {v6, v7, v2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1465
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 1466
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1467
    const-string/jumbo v2, "readPersistedSettings"

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1468
    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1469
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_2e .. :try_end_68} :catchall_91

    .line 1471
    const-string/jumbo v2, "mute_streams_affected"

    const/16 v5, 0x82f

    const/4 v6, -0x2

    invoke-static {v0, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1475
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1480
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1481
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1484
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1485
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1488
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1489
    return-void

    .line 1469
    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v5
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v2
.end method

.method private readUserRestrictions()V
    .registers 10

    .line 1492
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    .line 1495
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string v2, "disallow_unmute_device"

    .line 1496
    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v4, "no_adjust_volume"

    .line 1498
    invoke-virtual {v1, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v1, v3

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v1, v2

    .line 1500
    .local v1, "masterMute":Z
    :goto_1f
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_29

    .line 1501
    const/4 v1, 0x0

    .line 1502
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1504
    :cond_29
    sget-boolean v4, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_47

    .line 1505
    const-string v4, "AudioService"

    const-string v6, "Master mute %s, user=%d"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_47
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1508
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1509
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1511
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v6, "no_unmute_microphone"

    invoke-virtual {v4, v0, v6}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v4

    .line 1513
    .local v4, "microphoneMute":Z
    sget-boolean v6, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v6, :cond_76

    .line 1514
    const-string v6, "AudioService"

    const-string v7, "Mic mute %s, user=%d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_76
    invoke-static {v4}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1517
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .line 1520
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    .line 1521
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    .line 1522
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    .line 1523
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    .line 1524
    .local v0, "rescaled":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1525
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    return v1

    .line 1527
    :cond_30
    return v0
.end method

.method private resetBluetoothSco()V
    .registers 4

    .line 3937
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3938
    :try_start_3
    const-string v1, "AudioService"

    const-string v2, "In resetBluetoothSco(), calling clearAllScoClients()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 3940
    iput v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 3941
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    .line 3942
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_25

    .line 3943
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3944
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3945
    const-string/jumbo v0, "resetBluetoothSco"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(ZLjava/lang/String;)V

    .line 3946
    return-void

    .line 3942
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private safeMediaVolumeIndex(I)I
    .registers 4
    .param p1, "device"    # I

    .line 7361
    const v0, 0x400000c

    and-int/2addr v0, p1

    if-nez v0, :cond_c

    .line 7362
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 7364
    :cond_c
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_13

    .line 7365
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return v0

    .line 7367
    :cond_13
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # Ljava/lang/Integer;

    .line 7720
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 7726
    const/4 v0, 0x0

    return-object v0

    .line 7724
    :pswitch_9
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    .line 7723
    :pswitch_c
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    .line 7722
    :pswitch_f
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    .line 7721
    :pswitch_12
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .registers 5

    .line 4300
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4301
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2215
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2216
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2219
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    .line 2221
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2222
    nop

    .line 2223
    return-void

    .line 2221
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 6591
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_40

    .line 6592
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6593
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6592
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6596
    :cond_40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6598
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p1, v1, :cond_55

    .line 6599
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6600
    const-string/jumbo v1, "microphone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a9

    .line 6601
    :cond_55
    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eq p1, v1, :cond_9e

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_5f

    goto :goto_9e

    .line 6605
    :cond_5f
    const/high16 v1, -0x7e000000

    const/high16 v4, 0x4000000

    if-ne p1, v4, :cond_7b

    .line 6606
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6607
    const-string/jumbo v4, "microphone"

    .line 6609
    const-string v5, ""

    .line 6608
    invoke-static {v1, v5}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_76

    .line 6609
    goto :goto_77

    .line 6607
    :cond_76
    move v2, v3

    :goto_77
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a9

    .line 6610
    :cond_7b
    if-ne p1, v1, :cond_92

    .line 6611
    const-string v1, ""

    invoke-static {v4, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_91

    .line 6613
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6614
    const-string/jumbo v1, "microphone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_a9

    .line 6617
    :cond_91
    return-void

    .line 6619
    :cond_92
    const/16 v1, 0x400

    if-eq p1, v1, :cond_9a

    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_a9

    .line 6621
    :cond_9a
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_a9

    .line 6603
    :cond_9e
    :goto_9e
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6604
    const-string/jumbo v1, "microphone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6624
    :cond_a9
    :goto_a9
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b0

    .line 6625
    return-void

    .line 6628
    :cond_b0
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6629
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6630
    const-string/jumbo v1, "portName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6632
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6636
    .local v1, "ident":J
    const/4 v3, -0x1

    :try_start_cb
    invoke-static {v0, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_d3

    .line 6638
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6639
    nop

    .line 6640
    return-void

    .line 6638
    :catchall_d3
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .registers 16
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "forceUpdate"    # Z

    .line 1372
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 1374
    return-void

    .line 1376
    :cond_6
    const-string v0, "encoded_surround_output_enabled_formats"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1378
    .local v0, "enabledSurroundFormats":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 1381
    const-string v0, ""

    .line 1383
    :cond_10
    if-nez p2, :cond_1b

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1386
    return-void

    .line 1389
    :cond_1b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 1390
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1391
    .local v1, "surroundFormats":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v2, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_2b
    if-ge v5, v3, :cond_75

    aget-object v6, v1, v5

    .line 1394
    .local v6, "format":Ljava/lang/String;
    :try_start_2f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1395
    .local v7, "audioFormat":I
    const/4 v8, 0x0

    .line 1396
    .local v8, "isSurroundFormat":Z
    sget-object v9, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v10, v9

    move v11, v4

    :goto_3c
    if-ge v11, v10, :cond_47

    aget v12, v9, v11

    .line 1397
    .local v12, "sf":I
    if-ne v12, v7, :cond_44

    .line 1398
    const/4 v8, 0x1

    .line 1399
    goto :goto_47

    .line 1396
    .end local v12    # "sf":I
    :cond_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    .line 1402
    :cond_47
    :goto_47
    if-eqz v8, :cond_5a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 1403
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5a} :catch_5b

    .line 1407
    .end local v7    # "audioFormat":I
    .end local v8    # "isSurroundFormat":Z
    :cond_5a
    goto :goto_72

    .line 1405
    :catch_5b
    move-exception v7

    .line 1406
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid enabled surround format:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1411
    :cond_75
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "encoded_surround_output_enabled_formats"

    const-string v5, ","

    .line 1413
    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1411
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1414
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x1e

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1415
    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .registers 13
    .param p1, "encodedSurroundMode"    # I
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1341
    const/16 v0, 0x11

    .line 1342
    .local v0, "forceSetting":I
    packed-switch p1, :pswitch_data_3a

    .line 1356
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1353
    :pswitch_1d
    const/16 v0, 0xf

    .line 1354
    goto :goto_28

    .line 1350
    :pswitch_20
    const/16 v0, 0xe

    .line 1351
    goto :goto_28

    .line 1347
    :pswitch_23
    const/16 v0, 0xd

    .line 1348
    goto :goto_28

    .line 1344
    :pswitch_26
    const/4 v0, 0x0

    .line 1345
    nop

    .line 1360
    :goto_28
    const/16 v1, 0x11

    if-eq v0, v1, :cond_38

    .line 1361
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v9, 0x0

    move v7, v0

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1369
    :cond_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1332
    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1335
    .local v0, "encodedSurroundMode":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 1336
    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 5
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 2274
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 2275
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 2276
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 14
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 4786
    if-nez p2, :cond_6

    .line 4787
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    .line 4788
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4789
    return-void

    .line 4791
    :cond_10
    :goto_10
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v0

    .line 4792
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 4794
    .local v1, "time":J
    const/16 v3, 0x65

    if-eq p1, v3, :cond_31

    const/16 v3, 0x66

    if-eq p1, v3, :cond_31

    const/16 v3, 0x69

    if-eq p1, v3, :cond_31

    const/16 v3, 0x64

    if-eq p1, v3, :cond_31

    const/16 v3, 0x67

    if-eq p1, v3, :cond_31

    const/16 v3, 0x6a

    if-ne p1, v3, :cond_4b

    .line 4800
    :cond_31
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_45

    .line 4802
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1e

    add-long v1, v3, v5

    .line 4804
    :cond_45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 4807
    :cond_4b
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4808
    .end local v1    # "time":J
    monitor-exit v0

    .line 4809
    return-void

    .line 4808
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2226
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2229
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 2231
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2232
    nop

    .line 2233
    return-void

    .line 2231
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 4008
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4009
    :try_start_3
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBtScoActiveDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4011
    .local v1, "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_4e

    if-eqz p1, :cond_4e

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4013
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4014
    const-string v2, "AudioService"

    const-string/jumbo v3, "setBtScoActiveDevice: Active device switch between twsplus devices"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    monitor-exit v0

    return-void

    .line 4019
    :cond_4e
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 4020
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    if-nez v2, :cond_72

    .line 4021
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    :cond_72
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/audio/AudioService;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    if-nez v2, :cond_91

    .line 4025
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    const/4 p1, 0x0

    .line 4029
    :cond_91
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4030
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_a1

    .line 4031
    const-string v2, "AudioService"

    const-string v3, "In setBtScoActiveDevice(), calling resetBluetoothSco()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 4035
    .end local v1    # "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_a1
    monitor-exit v0

    .line 4036
    return-void

    .line 4035
    :catchall_a3
    move-exception v1

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_3 .. :try_end_a5} :catchall_a3

    throw v1
.end method

.method private setCurrentAudioRouteName(Ljava/lang/String;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 6390
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 6391
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 6392
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 6393
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6396
    :cond_1d
    monitor-exit v0

    .line 6397
    return-void

    .line 6396
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 12
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 5518
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5520
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 5523
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 5524
    .local v1, "numStreamTypes":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "streamType":I
    :goto_c
    if-ltz v2, :cond_3d

    .line 5525
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-eq v2, v3, :cond_3a

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    .line 5526
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    if-ne v3, v4, :cond_3a

    .line 5529
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 5530
    .local v3, "streamDevice":I
    if-eq p2, v3, :cond_33

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_33

    and-int/lit16 v4, p2, 0x380

    if-eqz v4, :cond_33

    .line 5532
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 5534
    :cond_33
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 5524
    .end local v3    # "streamDevice":I
    :cond_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 5537
    .end local v1    # "numStreamTypes":I
    .end local v2    # "streamType":I
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_4b

    .line 5539
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    move v5, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5547
    return-void

    .line 5537
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 5
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8166
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 8168
    const-string v0, "AudioService"

    const-string v1, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8170
    return-void

    .line 8172
    :cond_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8173
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_31

    .line 8174
    const-string v1, "AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8176
    :cond_31
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8177
    monitor-exit v0

    .line 8178
    return-void

    .line 8177
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw v1
.end method

.method private setForceUseInt_SyncDevices(IILjava/lang/String;)V
    .registers 12
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 7282
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 7283
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7286
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7287
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7288
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Landroid/media/AudioServiceInjector;->handleSetForceUse(Landroid/content/Context;IILjava/lang/String;)V

    .line 7289
    return-void
.end method

.method private setHearingAidVolume(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    .line 6225
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v1, :cond_1b

    .line 6228
    div-int/lit8 v1, p1, 0xa

    const/high16 v2, 0x8000000

    invoke-static {p2, v1, v2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v1

    float-to-int v1, v1

    .line 6230
    .local v1, "gainDB":I
    const/16 v2, -0x80

    if-ge v1, v2, :cond_16

    .line 6231
    const/16 v1, -0x80

    .line 6232
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V

    .line 6234
    .end local v1    # "gainDB":I
    :cond_1b
    monitor-exit v0

    .line 6235
    return-void

    .line 6234
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .registers 8
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .line 2446
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_c

    .line 2447
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 2450
    :cond_c
    if-nez p1, :cond_19

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 2452
    return-void

    .line 2454
    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2455
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 2458
    return-void

    .line 2460
    :cond_2a
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    .line 2461
    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .registers 9
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 2464
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_27

    .line 2465
    const-string v0, "AudioService"

    const-string v1, "Master mute %s, %d, user=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_27
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_32

    .line 2471
    return-void

    .line 2473
    :cond_32
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_56

    .line 2474
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_56

    .line 2475
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2476
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2477
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 2479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2481
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 2484
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_56
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .registers 9
    .param p1, "on"    # Z
    .param p2, "userId"    # I

    .line 2572
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_20

    .line 2573
    const-string v0, "AudioService"

    const-string v1, "Mic mute %s, user=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_20
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p2, :cond_48

    .line 2577
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    .line 2578
    .local v0, "currentMute":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2579
    .local v1, "identity":J
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2580
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2581
    if-eq p1, v0, :cond_48

    .line 2582
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 2583
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 2582
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2586
    .end local v0    # "currentMute":Z
    .end local v1    # "identity":J
    :cond_48
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 23
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v8, p3

    .line 2971
    move-object/from16 v9, p4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v0, :cond_39

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeInt(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2973
    :cond_39
    move/from16 v2, p1

    :goto_3b
    const/4 v1, 0x0

    .line 2974
    .local v1, "newModeOwnerPid":I
    if-nez p2, :cond_47

    .line 2975
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    return v1

    .line 2979
    :cond_47
    const/4 v3, 0x0

    .line 2980
    .local v3, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2980
    .local v4, "iter":Ljava/util/Iterator;
    :goto_4e
    move-object v10, v4

    .line 2981
    .end local v4    # "iter":Ljava/util/Iterator;
    .local v10, "iter":Ljava/util/Iterator;
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_71

    .line 2982
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 2983
    .local v4, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v6

    if-ne v6, v8, :cond_6e

    .line 2984
    move-object v3, v4

    .line 2986
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 2987
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2988
    goto :goto_71

    .line 2990
    .end local v4    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_6e
    nop

    .line 2980
    move-object v4, v10

    goto :goto_4e

    .line 2991
    :cond_71
    :goto_71
    move-object/from16 v4, p2

    move v0, v5

    .line 2991
    .end local p1    # "mode":I
    .end local p2    # "cb":Landroid/os/IBinder;
    .local v0, "status":I
    .local v2, "mode":I
    .local v4, "cb":Landroid/os/IBinder;
    :goto_74
    move v6, v0

    .line 2994
    .end local v0    # "status":I
    .local v6, "status":I
    move v11, v2

    .line 2995
    .local v11, "actualMode":I
    if-nez v2, :cond_bc

    .line 2997
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 2998
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 2999
    .end local v3    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3000
    .end local v4    # "cb":Landroid/os/IBinder;
    .local v3, "cb":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v4

    .line 3001
    .end local v11    # "actualMode":I
    .local v4, "actualMode":I
    sget-boolean v11, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v11, :cond_b6

    .line 3002
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " using mode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " instead due to death hdlr at pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    # getter for: Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$2000(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3002
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    :cond_b6
    move-object v12, v3

    move v11, v4

    goto :goto_ef

    .line 3024
    .end local v3    # "cb":Landroid/os/IBinder;
    .end local v4    # "actualMode":I
    .restart local v11    # "actualMode":I
    .local v12, "cb":Landroid/os/IBinder;
    :cond_b9
    :goto_b9
    move-object v0, v3

    move-object v12, v4

    goto :goto_ef

    .line 3007
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v12    # "cb":Landroid/os/IBinder;
    .local v3, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v4, "cb":Landroid/os/IBinder;
    :cond_bc
    if-nez v3, :cond_c4

    .line 3008
    new-instance v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-direct {v0, v7, v4, v8}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    move-object v3, v0

    .line 3012
    :cond_c4
    :try_start_c4
    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c7} :catch_c8

    .line 3016
    goto :goto_e6

    .line 3013
    :catch_c8
    move-exception v0

    move-object v12, v0

    .line 3015
    .local v0, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e6
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3021
    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    goto :goto_b9

    .line 3024
    .end local v3    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v4    # "cb":Landroid/os/IBinder;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v12    # "cb":Landroid/os/IBinder;
    :goto_ef
    iget v3, v7, Lcom/android/server/audio/AudioService;->mMode:I

    if-eq v11, v3, :cond_147

    .line 3025
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3026
    .local v3, "identity":J
    invoke-static {v11}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v6

    .line 3027
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    if-nez v6, :cond_12d

    .line 3029
    sget-boolean v13, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v13, :cond_11a

    const-string v13, "AudioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " mode successfully set to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_11a
    iget v13, v7, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_12a

    iget-boolean v13, v7, Lcom/android/server/audio/AudioService;->mVolumeBoostEnabled:Z

    if-eqz v13, :cond_12a

    .line 3032
    iput-boolean v5, v7, Lcom/android/server/audio/AudioService;->mVolumeBoostEnabled:Z

    .line 3033
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v5, v13}, Landroid/media/AudioServiceInjector;->sendVolumeBoostBroadcast(ZLandroid/content/Context;)V

    .line 3036
    :cond_12a
    iput v11, v7, Lcom/android/server/audio/AudioService;->mMode:I

    goto :goto_143

    .line 3038
    :cond_12d
    if-eqz v0, :cond_137

    .line 3039
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3040
    invoke-interface {v12, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3043
    :cond_137
    sget-boolean v13, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v13, :cond_142

    const-string v13, "AudioService"

    const-string v14, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :cond_142
    const/4 v2, 0x0

    .line 3046
    .end local v3    # "identity":J
    :goto_143
    nop

    .line 3049
    move v14, v2

    move v13, v6

    goto :goto_14a

    .line 3047
    :cond_147
    const/4 v3, 0x0

    .line 3049
    .end local v6    # "status":I
    .local v3, "status":I
    move v14, v2

    move v13, v3

    .line 3049
    .end local v2    # "mode":I
    .end local v3    # "status":I
    .local v13, "status":I
    .local v14, "mode":I
    :goto_14a
    if-eqz v13, :cond_15b

    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_155

    goto :goto_15b

    .line 2991
    .end local v11    # "actualMode":I
    :cond_155
    move-object v3, v0

    move-object v4, v12

    move v0, v13

    move v2, v14

    goto/16 :goto_74

    .line 3051
    .restart local v11    # "actualMode":I
    :cond_15b
    :goto_15b
    if-nez v13, :cond_1be

    .line 3052
    if-eqz v11, :cond_17c

    .line 3053
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_170

    .line 3054
    const-string v2, "AudioService"

    const-string/jumbo v3, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 3056
    :cond_170
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    .line 3060
    .end local v1    # "newModeOwnerPid":I
    .local v15, "newModeOwnerPid":I
    :cond_17c
    :goto_17c
    move v15, v1

    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v1, v5

    move-object v2, v9

    move v3, v8

    move v4, v14

    move-object/from16 v16, v0

    move-object v0, v5

    move v5, v15

    .line 3060
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v16, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    move-object v8, v6

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v8, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 3062
    const/high16 v0, -0x80000000

    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 3063
    .local v0, "streamType":I
    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v8

    .line 3064
    .local v8, "device":I
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v0

    aget-object v1, v1, v2

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 3065
    .local v17, "index":I
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v1, v0

    const/4 v5, 0x1

    move-object v1, v7

    move/from16 v3, v17

    move v4, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 3067
    const/4 v1, 0x1

    invoke-direct {v7, v1, v9}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 3069
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1, v15, v11}, Landroid/media/AudioServiceInjector;->handleModeChanged(Landroid/content/Context;II)V

    .line 3069
    .end local v0    # "streamType":I
    .end local v8    # "device":I
    .end local v17    # "index":I
    goto :goto_1c1

    .line 3071
    .end local v15    # "newModeOwnerPid":I
    .end local v16    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v1    # "newModeOwnerPid":I
    :cond_1be
    move-object/from16 v16, v0

    move v15, v1

    .line 3071
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v1    # "newModeOwnerPid":I
    .restart local v15    # "newModeOwnerPid":I
    .restart local v16    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :goto_1c1
    return v15
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .registers 21
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    .line 2676
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_90

    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_e

    goto/16 :goto_90

    .line 2679
    :cond_e
    if-eqz v10, :cond_77

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_77

    .line 2682
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 2683
    const/4 v0, 0x1

    move/from16 v2, p1

    if-ne v2, v0, :cond_23

    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v3, :cond_23

    .line 2684
    const/4 v2, 0x0

    .line 2686
    .end local p1    # "ringerMode":I
    .local v11, "ringerMode":I
    :cond_23
    move v11, v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v12, v2

    .line 2688
    .local v12, "identity":J
    :try_start_29
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_72

    .line 2689
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    move v15, v2

    .line 2690
    .local v15, "ringerModeInternal":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v3

    .line 2691
    .local v3, "ringerModeExternal":I
    if-eqz p3, :cond_50

    .line 2692
    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 2693
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v2, :cond_4a

    .line 2694
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v4, v11

    move-object v5, v10

    move v6, v15

    invoke-interface/range {v2 .. v7}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v11, v2

    .line 2697
    :cond_4a
    if-eq v11, v15, :cond_69

    .line 2698
    invoke-direct {v1, v11, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto :goto_69

    .line 2701
    :cond_50
    if-eq v11, v15, :cond_55

    .line 2702
    invoke-direct {v1, v11, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 2704
    :cond_55
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v0, :cond_66

    .line 2705
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, v15

    move v6, v11

    move-object v7, v10

    move v8, v3

    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v0

    move v11, v0

    .line 2708
    :cond_66
    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 2710
    .end local v3    # "ringerModeExternal":I
    .end local v15    # "ringerModeInternal":I
    :cond_69
    :goto_69
    monitor-exit v14
    :try_end_6a
    .catchall {:try_start_2c .. :try_end_6a} :catchall_6f

    .line 2712
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2713
    nop

    .line 2714
    return-void

    .line 2710
    :catchall_6f
    move-exception v0

    :try_start_70
    monitor-exit v14
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 2712
    :catchall_72
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2680
    .end local v11    # "ringerMode":I
    .end local v12    # "identity":J
    .restart local p1    # "ringerMode":I
    :cond_77
    move/from16 v2, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2677
    :cond_90
    :goto_90
    move/from16 v2, p1

    return-void
.end method

.method private setRingerModeExt(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .line 2717
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2718
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 2719
    :cond_9
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 2720
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_15

    .line 2723
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 2725
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2726
    return-void

    .line 2720
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private setRingerModeInt(IZ)V
    .registers 12
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .line 2817
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2818
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v1, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 2819
    .local v1, "change":Z
    :goto_a
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 2820
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 2821
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_26

    .line 2824
    if-eqz p2, :cond_1e

    .line 2825
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2828
    :cond_1e
    if-eqz v1, :cond_25

    .line 2830
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2832
    :cond_25
    return-void

    .line 2821
    .end local v1    # "change":Z
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .registers 12
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 7372
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 7373
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 7374
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4b

    .line 7375
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz p1, :cond_2a

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2a

    .line 7376
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 7377
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_4b

    .line 7378
    :cond_2a
    if-nez p1, :cond_4b

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_4b

    .line 7379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 7380
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 7381
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0xea60

    move-object v7, p2

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7390
    :cond_4b
    :goto_4b
    monitor-exit v0

    .line 7391
    return-void

    .line 7390
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 25
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v9, p4

    .line 2030
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_3a

    .line 2031
    const-string v0, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume(stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", calling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_3a
    iget-boolean v0, v7, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_3f

    .line 2035
    return-void

    .line 2038
    :cond_3f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2039
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v10, v0, v8

    .line 2040
    .local v10, "streamTypeAlias":I
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v0, v10

    .line 2042
    .local v11, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v12

    .line 2047
    .local v12, "device":I
    and-int/lit16 v0, v12, 0x380

    if-nez v0, :cond_57

    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_57

    .line 2049
    return-void

    .line 2053
    :cond_57
    const/16 v0, 0x3e8

    move/from16 v3, p6

    if-ne v3, v0, :cond_6b

    .line 2054
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2056
    .end local p6    # "uid":I
    .local v0, "uid":I
    move v13, v0

    goto :goto_6c

    .line 2056
    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_6b
    move v13, v3

    .line 2056
    .end local p6    # "uid":I
    .local v13, "uid":I
    :goto_6c
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v3, v3, v10

    invoke-virtual {v0, v3, v13, v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_79

    .line 2058
    return-void

    .line 2061
    :cond_79
    invoke-direct {v7, v9}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2062
    invoke-direct {v7, v10, v1, v2}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2063
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_9a

    .line 2064
    :cond_92
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2067
    :cond_9a
    :goto_9a
    invoke-direct {v7, v10, v2}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 2068
    return-void

    .line 2071
    :cond_a1
    iget-object v14, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v14

    .line 2073
    const/4 v0, 0x0

    :try_start_a5
    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2075
    invoke-virtual {v11, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move v15, v0

    .line 2077
    .local v15, "oldIndex":I
    sput v1, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I

    .line 2080
    mul-int/lit8 v0, v1, 0xa

    invoke-direct {v7, v0, v8, v10}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    move v1, v0

    .line 2082
    .end local p2    # "index":I
    .local v1, "index":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_d7

    and-int/lit16 v3, v12, 0x380

    if-eqz v3, :cond_d7

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_d7

    .line 2085
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c3
    .catchall {:try_start_a5 .. :try_end_c3} :catchall_16f

    .line 2086
    :try_start_c3
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_d2

    iget-boolean v4, v7, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_d2

    .line 2087
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v5, v1, 0xa

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 2089
    :cond_d2
    monitor-exit v3

    goto :goto_d7

    :catchall_d4
    move-exception v0

    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_c3 .. :try_end_d6} :catchall_d4

    :try_start_d6
    throw v0

    .line 2092
    :cond_d7
    :goto_d7
    const/high16 v3, 0x8000000

    and-int/2addr v3, v12

    if-eqz v3, :cond_df

    .line 2093
    invoke-direct {v7, v1, v8}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 2096
    :cond_df
    if-ne v10, v0, :cond_e8

    .line 2097
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    invoke-direct {v7, v15, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2100
    :cond_e8
    and-int/lit8 v2, v2, -0x21

    .line 2101
    .end local p3    # "flags":I
    .local v2, "flags":I
    if-ne v10, v0, :cond_10e

    iget v3, v7, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v12

    if-eqz v3, :cond_10e

    .line 2103
    or-int/lit8 v2, v2, 0x20

    .line 2106
    if-eqz v1, :cond_10e

    .line 2107
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_108

    const v0, 0x400000c

    and-int/2addr v0, v12

    if-eqz v0, :cond_108

    .line 2109
    invoke-direct {v7, v12}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v0

    goto :goto_10c

    .line 2111
    :cond_108
    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0
    :try_end_10c
    .catchall {:try_start_d6 .. :try_end_10c} :catchall_16f

    .line 2116
    .end local v1    # "index":I
    .end local v2    # "flags":I
    .local v0, "index":I
    .local v5, "flags":I
    .local v6, "index":I
    :goto_10c
    move v6, v0

    goto :goto_10f

    .line 2116
    .end local v0    # "index":I
    .end local v5    # "flags":I
    .end local v6    # "index":I
    .restart local v1    # "index":I
    .restart local v2    # "flags":I
    :cond_10e
    move v6, v1

    .line 2116
    .end local v1    # "index":I
    .end local v2    # "flags":I
    .restart local v5    # "flags":I
    .restart local v6    # "index":I
    :goto_10f
    move v5, v2

    :try_start_110
    invoke-direct {v7, v10, v6, v12}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_168

    if-nez v0, :cond_13e

    .line 2117
    :try_start_116
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2118
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_11d
    .catchall {:try_start_116 .. :try_end_11d} :catchall_134

    move-object v1, v0

    move-object v2, v7

    move v3, v8

    move v4, v6

    move/from16 v16, v5

    .line 2118
    .end local v5    # "flags":I
    .local v16, "flags":I
    move/from16 v17, v6

    move v6, v12

    .line 2118
    .end local v6    # "index":I
    .local v17, "index":I
    :try_start_126
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_12b
    .catchall {:try_start_126 .. :try_end_12b} :catchall_12e

    .line 2124
    move/from16 v1, v17

    goto :goto_157

    .line 2124
    .end local v15    # "oldIndex":I
    :catchall_12e
    move-exception v0

    move/from16 v2, v16

    move/from16 v1, v17

    goto :goto_170

    .line 2124
    .end local v16    # "flags":I
    .end local v17    # "index":I
    .restart local v5    # "flags":I
    .restart local v6    # "index":I
    :catchall_134
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v2, v16

    move/from16 v1, v17

    .line 2124
    .end local v5    # "flags":I
    .end local v6    # "index":I
    .restart local v16    # "flags":I
    .restart local v17    # "index":I
    goto :goto_170

    .line 2121
    .end local v16    # "flags":I
    .end local v17    # "index":I
    .restart local v5    # "flags":I
    .restart local v6    # "index":I
    .restart local v15    # "oldIndex":I
    :cond_13e
    move/from16 v16, v5

    move/from16 v17, v6

    .line 2121
    .end local v5    # "flags":I
    .end local v6    # "index":I
    .restart local v16    # "flags":I
    .restart local v17    # "index":I
    move-object v1, v7

    move v2, v8

    move/from16 v3, v17

    move/from16 v4, v16

    move v5, v12

    move-object/from16 v6, p5

    :try_start_14b
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2122
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0
    :try_end_156
    .catchall {:try_start_14b .. :try_end_156} :catchall_162

    .line 2124
    .end local v17    # "index":I
    .restart local v0    # "index":I
    move v1, v0

    .line 2124
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_157
    :try_start_157
    monitor-exit v14
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_15e

    .line 2125
    move/from16 v2, v16

    invoke-virtual {v7, v8, v15, v1, v2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2126
    .end local v16    # "flags":I
    .restart local v2    # "flags":I
    return-void

    .line 2124
    .end local v2    # "flags":I
    .end local v15    # "oldIndex":I
    .restart local v16    # "flags":I
    :catchall_15e
    move-exception v0

    move/from16 v2, v16

    goto :goto_167

    .line 2124
    .end local v1    # "index":I
    .restart local v17    # "index":I
    :catchall_162
    move-exception v0

    move/from16 v2, v16

    move/from16 v1, v17

    .line 2124
    .end local v16    # "flags":I
    .end local v17    # "index":I
    .restart local v1    # "index":I
    .restart local v2    # "flags":I
    :goto_167
    goto :goto_170

    .line 2124
    .end local v1    # "index":I
    .end local v2    # "flags":I
    .restart local v5    # "flags":I
    .restart local v6    # "index":I
    :catchall_168
    move-exception v0

    move v2, v5

    move/from16 v17, v6

    move/from16 v1, v17

    .line 2124
    .end local v5    # "flags":I
    .end local v6    # "index":I
    .restart local v2    # "flags":I
    .restart local v17    # "index":I
    goto :goto_170

    .line 2124
    .end local v2    # "flags":I
    .end local v17    # "index":I
    .restart local p2    # "index":I
    .restart local p3    # "flags":I
    :catchall_16f
    move-exception v0

    .line 2124
    .end local p2    # "index":I
    .end local p3    # "flags":I
    .restart local v1    # "index":I
    .restart local v2    # "flags":I
    :goto_170
    :try_start_170
    monitor-exit v14
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_16f

    throw v0
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    .line 2301
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2303
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v0, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz p4, :cond_17

    .line 2306
    :cond_c
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2314
    :cond_17
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 2317
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v0, :cond_9

    goto :goto_30

    .line 2318
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v0

    .line 2319
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_12

    monitor-exit v0

    return-void

    .line 2320
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_2d

    .line 2321
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_2a

    .line 2323
    .local v2, "token":J
    :try_start_19
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v4, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25

    .line 2325
    :try_start_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2326
    nop

    .line 2327
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2a

    .line 2328
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_2d

    .line 2329
    return-void

    .line 2325
    .restart local v2    # "token":J
    :catchall_25
    move-exception v4

    :try_start_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2327
    .end local v2    # "token":J
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v2

    .line 2328
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v1

    .line 2317
    :cond_30
    :goto_30
    return-void
.end method

.method private setSystemAudioVolume(IIII)V
    .registers 10
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .line 1866
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_36

    if-eq p1, p2, :cond_36

    and-int/lit16 v0, p4, 0x100

    if-eqz v0, :cond_f

    goto :goto_36

    .line 1873
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v0

    .line 1874
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_18

    monitor-exit v0

    return-void

    .line 1875
    :cond_18
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_33

    .line 1876
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_30

    .line 1878
    .local v2, "token":J
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v4, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2b

    .line 1880
    :try_start_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1881
    nop

    .line 1882
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_30

    .line 1883
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_33

    .line 1884
    return-void

    .line 1880
    .restart local v2    # "token":J
    :catchall_2b
    move-exception v4

    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1882
    .end local v2    # "token":J
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    :try_start_32
    throw v2

    .line 1883
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v1

    .line 1869
    :cond_36
    :goto_36
    return-void
.end method

.method private shouldZenMuteStream(I)Z
    .registers 10
    .param p1, "streamType"    # I

    .line 4505
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    .line 4506
    return v1

    .line 4509
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 4510
    .local v0, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, v1

    .line 4512
    .local v3, "muteAlarms":Z
    :goto_1a
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_22

    move v4, v2

    goto :goto_23

    :cond_22
    move v4, v1

    .line 4514
    .local v4, "muteMedia":Z
    :goto_23
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2b

    move v5, v2

    goto :goto_2c

    :cond_2b
    move v5, v1

    .line 4516
    .local v5, "muteSystem":Z
    :goto_2c
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4517
    invoke-virtual {v6}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v6

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 4518
    .local v6, "muteNotificationAndRing":Z
    if-eqz v3, :cond_3e

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_3e
    if-eqz v4, :cond_46

    .line 4519
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_46
    if-eqz v5, :cond_4e

    .line 4520
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_4e
    if-eqz v6, :cond_58

    .line 4521
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 4518
    :cond_56
    move v1, v2

    goto :goto_59

    .line 4521
    :cond_58
    nop

    .line 4518
    :goto_59
    return v1
.end method

.method private updateA11yVolumeAlias(Z)V
    .registers 6
    .param p1, "a11VolEnabled"    # Z

    .line 7569
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_1a

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility volume enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7570
    :cond_1a
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_3a

    .line 7571
    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 7573
    const-string v0, "AudioService"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 7575
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    .line 7576
    goto :goto_30

    .line 7577
    :cond_2e
    nop

    .line 7575
    move v1, v3

    :goto_30
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    .line 7578
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 7580
    :cond_3a
    return-void
.end method

.method private updateAudioRoutes(II)V
    .registers 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 6557
    const/4 v0, 0x0

    .line 6559
    .local v0, "connType":I
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 6560
    const/4 v0, 0x1

    goto :goto_27

    .line 6561
    :cond_6
    const/16 v1, 0x8

    if-eq p1, v1, :cond_26

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_f

    goto :goto_26

    .line 6564
    :cond_f
    const/16 v1, 0x400

    if-eq p1, v1, :cond_23

    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_18

    goto :goto_23

    .line 6567
    :cond_18
    const/16 v1, 0x4000

    if-eq p1, v1, :cond_20

    const/high16 v1, 0x4000000

    if-ne p1, v1, :cond_27

    .line 6569
    :cond_20
    const/16 v0, 0x10

    goto :goto_27

    .line 6566
    :cond_23
    :goto_23
    const/16 v0, 0x8

    goto :goto_27

    .line 6563
    :cond_26
    :goto_26
    const/4 v0, 0x2

    .line 6572
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 6573
    if-eqz v0, :cond_4f

    .line 6574
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 6575
    .local v2, "newConn":I
    if-eqz p2, :cond_34

    .line 6576
    or-int/2addr v2, v0

    goto :goto_36

    .line 6578
    :cond_34
    not-int v3, v0

    and-int/2addr v2, v3

    .line 6580
    :goto_36
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v2, v3, :cond_4f

    .line 6581
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v2, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 6582
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .end local v2    # "newConn":I
    goto :goto_4f

    .line 6586
    :catchall_4d
    move-exception v2

    goto :goto_51

    :cond_4f
    :goto_4f
    monitor-exit v1

    .line 6587
    return-void

    .line 6586
    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_2c .. :try_end_52} :catchall_4d

    throw v2
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .registers 5
    .param p1, "touchExploreEnabled"    # Z

    .line 7547
    if-eqz p1, :cond_7

    .line 7548
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_a

    .line 7550
    :cond_7
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 7552
    :goto_a
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_33

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch exploration enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " stream override delay is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7554
    :cond_33
    return-void
.end method

.method private updateDefaultVolumes()V
    .registers 5

    .line 1211
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 1212
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_20

    .line 1213
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v0

    aget v2, v2, v3

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    aput v2, v1, v0

    .line 1211
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1219
    .end local v0    # "stream":I
    :cond_23
    return-void
.end method

.method private updateFlagsForSystemAudio(I)I
    .registers 4
    .param p1, "flags"    # I

    .line 2261
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_16

    .line 2262
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v0

    .line 2263
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_11

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_11

    .line 2265
    and-int/lit8 p1, p1, -0x2

    .line 2267
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 2269
    :cond_16
    :goto_16
    return p1
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .registers 8
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1322
    const-string/jumbo v0, "master_mono"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1324
    .local v0, "masterMono":Z
    :goto_f
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_26

    .line 1325
    const-string v3, "AudioService"

    const-string v4, "Master mono %b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_26
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    .line 1328
    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation

    .line 4566
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    .line 4567
    .local v0, "updatedZenModeAffectedStreams":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/4 v3, -0x2

    const/16 v4, 0xa6

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 4573
    .local v1, "ringerModeAffectedStreams":I
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_16

    .line 4574
    const/4 v1, 0x0

    goto :goto_20

    .line 4575
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v2, :cond_20

    .line 4576
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 4577
    invoke-interface {v2, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    .line 4579
    :cond_20
    :goto_20
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v2, :cond_27

    .line 4580
    and-int/lit16 v1, v1, -0x81

    goto :goto_29

    .line 4582
    :cond_27
    or-int/lit16 v1, v1, 0x80

    .line 4584
    :goto_29
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v4, 0x8

    aget v2, v2, v4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_35

    .line 4585
    or-int/lit16 v1, v1, 0x100

    goto :goto_37

    .line 4587
    :cond_35
    and-int/lit16 v1, v1, -0x101

    .line 4590
    :goto_37
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v2, :cond_47

    .line 4591
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mode_ringer_streams_affected"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4595
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 4596
    const/4 v2, 0x1

    return v2

    .line 4598
    :cond_47
    return v0
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .registers 25
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1235
    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x3

    const/16 v4, 0xa

    if-eqz v0, :cond_d

    .line 1236
    move v0, v4

    goto :goto_e

    :cond_d
    move v0, v3

    :goto_e
    move v5, v0

    .line 1238
    .local v5, "a11yStreamAlias":I
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_19

    .line 1239
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1240
    const/4 v3, 0x3

    .local v3, "dtmfStreamAlias":I
    goto :goto_29

    .line 1242
    .end local v3    # "dtmfStreamAlias":I
    :cond_19
    iget v0, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_23

    .line 1248
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1249
    goto :goto_29

    .line 1244
    :cond_23
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1245
    const/4 v3, 0x2

    .line 1246
    .restart local v3    # "dtmfStreamAlias":I
    nop

    .line 1249
    :goto_29
    move v0, v3

    .line 1253
    .end local v3    # "dtmfStreamAlias":I
    .local v0, "dtmfStreamAlias":I
    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_32

    .line 1254
    iput v6, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_46

    .line 1256
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1257
    const/4 v0, 0x0

    .line 1258
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_46

    .line 1260
    :cond_40
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1264
    .end local v0    # "dtmfStreamAlias":I
    .restart local v3    # "dtmfStreamAlias":I
    :goto_46
    move v3, v0

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v7, 0x8

    aput v3, v0, v7

    .line 1265
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v5, v0, v4

    .line 1267
    if-eqz p1, :cond_ca

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_ca

    .line 1268
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1270
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1271
    :try_start_5d
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_c7

    .line 1272
    :try_start_60
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v7

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v3

    .line 1273
    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1274
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v10, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v10, v10, v5

    # setter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1102(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    .line 1276
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v5

    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1278
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v10, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->refreshRange(I)V

    .line 1280
    monitor-exit v9
    :try_end_8d
    .catchall {:try_start_60 .. :try_end_8d} :catchall_c4

    .line 1281
    :try_start_8d
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_c7

    .line 1282
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v0, :cond_99

    .line 1284
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 1288
    :cond_99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1289
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v0, v7

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1295
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0xa

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v20, v6, v4

    const/16 v21, 0x0

    move-object v15, v0

    invoke-static/range {v15 .. v21}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_ca

    .line 1280
    :catchall_c4
    move-exception v0

    :try_start_c5
    monitor-exit v9
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    :try_start_c6
    throw v0

    .line 1281
    :catchall_c7
    move-exception v0

    monitor-exit v8
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_c7

    throw v0

    .line 1302
    :cond_ca
    :goto_ca
    return-void
.end method

.method private updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 6758
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 6759
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6760
    .local v0, "prevState":Ljava/lang/Integer;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTwsPlusScoState: prevState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6761
    if-eq p2, v0, :cond_3c

    .line 6762
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6763
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6765
    .end local v0    # "prevState":Ljava/lang/Integer;
    :cond_3c
    goto :goto_42

    .line 6766
    :cond_3d
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6768
    :goto_42
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .registers 5

    .line 4537
    const/4 v0, 0x0

    .line 4538
    .local v0, "zenModeAffectedStreams":I
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 4539
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 4540
    .local v1, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1c

    .line 4542
    or-int/lit8 v0, v0, 0x10

    .line 4545
    :cond_1c
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_24

    .line 4547
    or-int/lit8 v0, v0, 0x8

    .line 4550
    :cond_24
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2c

    .line 4552
    or-int/lit8 v0, v0, 0x2

    .line 4556
    .end local v1    # "zenPolicy":Landroid/app/NotificationManager$Policy;
    :cond_2c
    iget v1, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v1, v0, :cond_33

    .line 4557
    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 4558
    return v2

    .line 4561
    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .registers 5
    .param p1, "streamTypeAlias"    # I
    .param p2, "flags"    # I

    .line 2130
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_20

    .line 2141
    return v1

    .line 2136
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2137
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_1e

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    nop

    .line 2136
    :cond_1e
    :goto_1e
    return v1

    .line 2132
    :pswitch_1f
    return v1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .line 1142
    monitor-enter p0

    .line 1143
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_12

    .line 1146
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    .line 1149
    :goto_8
    goto :goto_1

    .line 1147
    :catch_9
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_8

    .line 1151
    :cond_12
    monitor-exit p0

    .line 1152
    return-void

    .line 1151
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "delay_ms"    # I

    .line 4652
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4653
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 4652
    :goto_10
    return v0
.end method

.method private wouldToggleZenMode(I)Z
    .registers 4
    .param p1, "newMode"    # I

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 1948
    return v1

    .line 1949
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 1951
    return v1

    .line 1953
    :cond_13
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 6
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 7180
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 6
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8107
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_26

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMixForPolicy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8109
    :cond_26
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8110
    :try_start_29
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8111
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8112
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_34

    .line 8113
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 8115
    :cond_34
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)V

    .line 8116
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8117
    const/4 v0, 0x0

    return v0

    .line 8116
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 1608
    const/16 v0, 0xa

    if-ne p1, v0, :cond_21

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1609
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-void

    .line 1613
    :cond_21
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1615
    nop

    .line 1616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1615
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1617
    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 33
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v1, p3

    move-object/from16 v11, p5

    .line 1621
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_f

    .line 1622
    return-void

    .line 1624
    :cond_f
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_41

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_41
    invoke-direct {v8, v10}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 1628
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1630
    invoke-direct {v8, v10}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v12

    .line 1632
    .local v12, "isMuteAdjust":Z
    if-eqz v12, :cond_54

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1633
    return-void

    .line 1638
    :cond_54
    if-eqz v12, :cond_89

    if-nez v9, :cond_89

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    .line 1640
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_89

    .line 1643
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1643
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    return-void

    .line 1651
    :cond_89
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v13, v0, v9

    .line 1653
    .local v13, "streamTypeAlias":I
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v0, v13

    .line 1655
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v15

    .line 1657
    .local v15, "device":I
    invoke-virtual {v14, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1658
    .local v2, "aliasIndex":I
    const/16 v16, 0x1

    .line 1663
    .local v16, "adjustVolume":Z
    and-int/lit16 v0, v15, 0x380

    if-nez v0, :cond_a4

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_a4

    .line 1665
    return-void

    .line 1670
    :cond_a4
    const/16 v0, 0x3e8

    move/from16 v3, p6

    if-ne v3, v0, :cond_b8

    .line 1671
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1673
    .end local p6    # "uid":I
    .local v0, "uid":I
    move v7, v0

    goto :goto_b9

    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_b8
    move v7, v3

    .end local p6    # "uid":I
    .local v7, "uid":I
    :goto_b9
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v3, v3, v13

    move-object/from16 v6, p4

    invoke-virtual {v0, v3, v7, v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_c8

    .line 1675
    return-void

    .line 1679
    :cond_c8
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v3

    .line 1680
    const/4 v0, 0x0

    :try_start_cc
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1681
    monitor-exit v3
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_338

    .line 1683
    and-int/lit8 v0, v1, -0x21

    .line 1684
    .end local p3    # "flags":I
    .local v0, "flags":I
    const/4 v5, 0x3

    if-ne v13, v5, :cond_f6

    iget v1, v8, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v15

    if-eqz v1, :cond_f6

    .line 1686
    or-int/lit8 v0, v0, 0x20

    .line 1691
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_ee

    const v1, 0x400000c

    and-int/2addr v1, v15

    if-eqz v1, :cond_ee

    .line 1693
    invoke-direct {v8, v15}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    .local v1, "step":I
    goto :goto_f2

    .line 1695
    .end local v1    # "step":I
    :cond_ee
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 1697
    .restart local v1    # "step":I
    :goto_f2
    if-eqz v2, :cond_fc

    .line 1698
    move v2, v1

    goto :goto_fc

    .line 1702
    .end local v1    # "step":I
    :cond_f6
    const/16 v1, 0xa

    invoke-direct {v8, v1, v9, v13}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v1

    .end local v2    # "aliasIndex":I
    .restart local v1    # "step":I
    .local v4, "aliasIndex":I
    :cond_fc
    :goto_fc
    move v4, v2

    move/from16 v17, v1

    .line 1707
    .end local v1    # "step":I
    .local v17, "step":I
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_113

    .line 1708
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v13, v1, :cond_10c

    goto :goto_113

    .line 1731
    :cond_10c
    move v11, v2

    move/from16 v22, v4

    move/from16 v18, v7

    .end local v0    # "flags":I
    .end local v4    # "aliasIndex":I
    .local v7, "flags":I
    .local v18, "uid":I
    .local v22, "aliasIndex":I
    :cond_111
    :goto_111
    move v7, v0

    goto :goto_14b

    .line 1709
    .end local v18    # "uid":I
    .end local v22    # "aliasIndex":I
    .restart local v0    # "flags":I
    .restart local v4    # "aliasIndex":I
    .local v7, "uid":I
    :cond_113
    :goto_113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 1711
    .local v1, "ringerMode":I
    if-ne v1, v2, :cond_11b

    .line 1712
    and-int/lit8 v0, v0, -0x11

    .line 1716
    :cond_11b
    nop

    .line 1717
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v18

    .line 1716
    move/from16 v19, v1

    move-object v1, v8

    .end local v1    # "ringerMode":I
    .local v19, "ringerMode":I
    move v11, v2

    move v2, v4

    move v3, v10

    move/from16 v22, v4

    move/from16 v4, v17

    .end local v4    # "aliasIndex":I
    .restart local v22    # "aliasIndex":I
    move/from16 v5, v18

    move-object/from16 v6, p4

    move/from16 v18, v7

    move v7, v0

    .end local v7    # "uid":I
    .restart local v18    # "uid":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v1

    .line 1718
    .local v1, "result":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_13b

    move v2, v11

    goto :goto_13c

    :cond_13b
    const/4 v2, 0x0

    :goto_13c
    move/from16 v16, v2

    .line 1720
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_144

    .line 1721
    or-int/lit16 v0, v0, 0x80

    .line 1724
    :cond_144
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_111

    .line 1725
    or-int/lit16 v0, v0, 0x800

    .end local v1    # "result":I
    .end local v19    # "ringerMode":I
    goto :goto_111

    .line 1731
    .end local v0    # "flags":I
    .local v7, "flags":I
    :goto_14b
    invoke-direct {v8, v13, v7}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_153

    .line 1732
    const/16 v16, 0x0

    .line 1734
    :cond_153
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 1736
    .local v6, "oldIndex":I
    if-eqz v16, :cond_31d

    if-eqz v10, :cond_31d

    .line 1737
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 1739
    const/4 v0, -0x1

    if-eqz v12, :cond_1b1

    .line 1741
    const/16 v1, 0x65

    if-ne v10, v1, :cond_173

    .line 1742
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    xor-int/2addr v1, v11

    .local v1, "state":Z
    goto :goto_17a

    .line 1744
    .end local v1    # "state":Z
    :cond_173
    const/16 v1, -0x64

    if-ne v10, v1, :cond_179

    move v1, v11

    goto :goto_17a

    :cond_179
    const/4 v1, 0x0

    .line 1746
    .restart local v1    # "state":Z
    :goto_17a
    const/4 v4, 0x3

    if-ne v13, v4, :cond_180

    .line 1747
    invoke-direct {v8, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1749
    :cond_180
    const/4 v2, 0x0

    .local v2, "stream":I
    :goto_181
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_1a9

    .line 1750
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v13, v3, :cond_1a4

    .line 1751
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_19d

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    .line 1752
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v3

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1a4

    .line 1754
    :cond_19d
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1749
    :cond_1a4
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x18

    goto :goto_181

    .line 1759
    .end local v1    # "state":Z
    .end local v2    # "stream":I
    :cond_1a9
    nop

    .line 1804
    move v0, v4

    move/from16 v23, v6

    move v11, v7

    move/from16 v19, v22

    goto :goto_1d5

    .line 1760
    :cond_1b1
    const/4 v4, 0x3

    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    move/from16 v5, v22

    if-ne v5, v1, :cond_1bc

    .end local v22    # "aliasIndex":I
    .local v5, "aliasIndex":I
    move v1, v11

    goto :goto_1bd

    :cond_1bc
    const/4 v1, 0x0

    :goto_1bd
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mVolumeBoostEnabled:Z

    .line 1759
    invoke-static {v10, v1, v15, v13, v2}, Landroid/media/AudioServiceInjector;->needEnableVoiceVolumeBoost(IZIIZ)Z

    move-result v1

    if-eqz v1, :cond_1d9

    .line 1761
    iget-boolean v1, v8, Lcom/android/server/audio/AudioService;->mVolumeBoostEnabled:Z

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/media/AudioServiceInjector;->setVolumeBoost(ZLandroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v8, Lcom/android/server/audio/AudioService;->mVolumeBoostEnabled:Z

    .line 1804
    .end local v5    # "aliasIndex":I
    .end local v6    # "oldIndex":I
    .end local v7    # "flags":I
    .local v11, "flags":I
    .local v19, "aliasIndex":I
    .local v23, "oldIndex":I
    :cond_1cf
    :goto_1cf
    move v0, v4

    move/from16 v19, v5

    move/from16 v23, v6

    move v11, v7

    :goto_1d5
    const/16 v20, 0x18

    goto/16 :goto_28c

    .line 1763
    .end local v11    # "flags":I
    .end local v19    # "aliasIndex":I
    .end local v23    # "oldIndex":I
    .restart local v5    # "aliasIndex":I
    .restart local v6    # "oldIndex":I
    .restart local v7    # "flags":I
    :cond_1d9
    if-ne v10, v11, :cond_1ff

    add-int v1, v5, v17

    .line 1764
    invoke-direct {v8, v13, v1, v15}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v1

    if-nez v1, :cond_1ff

    .line 1765
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    goto :goto_1cf

    .line 1768
    :cond_1ff
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v4

    .line 1769
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1768
    invoke-static {v9, v10, v6, v1, v2}, Landroid/media/AudioServiceInjector;->shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_215

    .line 1770
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Landroid/media/AudioServiceInjector;->adjustHiFiVolume(ILandroid/content/Context;)V

    goto :goto_1cf

    .line 1772
    :cond_215
    mul-int v1, v10, v17

    move v3, v11

    move-object/from16 v11, p5

    invoke-virtual {v14, v1, v15, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_226

    .line 1773
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 1776
    :cond_226
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_26c

    .line 1778
    const/4 v1, 0x2

    if-ne v13, v1, :cond_23e

    invoke-static {}, Landroid/media/AudioServiceInjector;->isXOptMode()Z

    move-result v1

    if-nez v1, :cond_23e

    .line 1792
    .end local v5    # "aliasIndex":I
    .end local v6    # "oldIndex":I
    .end local v7    # "flags":I
    .restart local v11    # "flags":I
    .restart local v19    # "aliasIndex":I
    .restart local v23    # "oldIndex":I
    :goto_235
    move v0, v4

    move/from16 v19, v5

    move/from16 v23, v6

    move v11, v7

    const/16 v20, 0x18

    goto :goto_274

    .line 1782
    .end local v11    # "flags":I
    .end local v19    # "aliasIndex":I
    .end local v23    # "oldIndex":I
    .restart local v5    # "aliasIndex":I
    .restart local v6    # "oldIndex":I
    .restart local v7    # "flags":I
    :cond_23e
    if-ne v10, v3, :cond_245

    .line 1784
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    goto :goto_235

    .line 1785
    :cond_245
    const/4 v2, 0x0

    if-ne v10, v0, :cond_26c

    .line 1786
    iget-boolean v1, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_26c

    .line 1787
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v19, 0x18

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x15e

    move/from16 v2, v19

    move/from16 v3, v20

    move v0, v4

    move v4, v13

    move/from16 v19, v5

    const/16 v20, 0x18

    move v5, v7

    .end local v5    # "aliasIndex":I
    .restart local v19    # "aliasIndex":I
    move/from16 v23, v6

    move-object/from16 v6, v21

    .end local v6    # "oldIndex":I
    .restart local v23    # "oldIndex":I
    move v11, v7

    move/from16 v7, v22

    .end local v7    # "flags":I
    .restart local v11    # "flags":I
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_274

    .line 1792
    .end local v11    # "flags":I
    .end local v19    # "aliasIndex":I
    .end local v23    # "oldIndex":I
    .restart local v5    # "aliasIndex":I
    .restart local v6    # "oldIndex":I
    .restart local v7    # "flags":I
    :cond_26c
    move v0, v4

    move/from16 v19, v5

    move/from16 v23, v6

    move v11, v7

    const/16 v20, 0x18

    .end local v5    # "aliasIndex":I
    .end local v6    # "oldIndex":I
    .end local v7    # "flags":I
    .restart local v11    # "flags":I
    .restart local v19    # "aliasIndex":I
    .restart local v23    # "oldIndex":I
    :goto_274
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, v15

    move-object v6, v14

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1800
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    .line 1801
    invoke-virtual {v2, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1800
    invoke-static {v1, v13, v15, v2}, Landroid/media/AudioServiceInjector;->handleZenModeVolumeChanged(Landroid/content/Context;III)V

    .line 1804
    :goto_28c
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v9

    invoke-virtual {v1, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 1807
    .local v1, "newIndex":I
    if-ne v13, v0, :cond_2b5

    and-int/lit16 v2, v15, 0x380

    if-eqz v2, :cond_2b5

    and-int/lit8 v2, v11, 0x40

    if-nez v2, :cond_2b5

    .line 1810
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1811
    :try_start_2a1
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_2b0

    iget-boolean v3, v8, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v3, :cond_2b0

    .line 1812
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v4, v1, 0xa

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1814
    :cond_2b0
    monitor-exit v2

    goto :goto_2b5

    :catchall_2b2
    move-exception v0

    monitor-exit v2
    :try_end_2b4
    .catchall {:try_start_2a1 .. :try_end_2b4} :catchall_2b2

    throw v0

    .line 1818
    :cond_2b5
    :goto_2b5
    const/high16 v2, 0x8000000

    and-int/2addr v2, v15

    if-eqz v2, :cond_2bd

    .line 1819
    invoke-direct {v8, v1, v9}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 1823
    :cond_2bd
    if-ne v13, v0, :cond_2c9

    .line 1824
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    move/from16 v3, v23

    invoke-direct {v8, v3, v1, v2, v11}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    goto :goto_2cb

    .line 1826
    :cond_2c9
    move/from16 v3, v23

    .end local v23    # "oldIndex":I
    .local v3, "oldIndex":I
    :goto_2cb
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_31b

    .line 1827
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v2

    .line 1829
    :try_start_2d2
    iget-boolean v4, v8, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v4, :cond_30f

    if-ne v13, v0, :cond_30f

    if-eq v3, v1, :cond_30f

    .line 1832
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v4
    :try_end_2dd
    .catchall {:try_start_2d2 .. :try_end_2dd} :catchall_314

    .line 1833
    const/4 v0, -0x1

    if-ne v10, v0, :cond_2e5

    const/16 v5, 0x19

    .line 1834
    move/from16 v20, v5

    nop

    :cond_2e5
    move/from16 v5, v20

    .line 1835
    .local v5, "keyCode":I
    :try_start_2e7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_2eb
    .catchall {:try_start_2e7 .. :try_end_2eb} :catchall_308

    .line 1837
    .local v6, "ident":J
    :try_start_2eb
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;
    :try_end_2ed
    .catchall {:try_start_2eb .. :try_end_2ed} :catchall_301

    move/from16 v24, v1

    const/4 v1, 0x1

    :try_start_2f0
    invoke-virtual {v0, v5, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1838
    .end local v1    # "newIndex":I
    .local v24, "newIndex":I
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_2f9
    .catchall {:try_start_2f0 .. :try_end_2f9} :catchall_2ff

    .line 1840
    :try_start_2f9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1841
    nop

    .line 1842
    .end local v5    # "keyCode":I
    .end local v6    # "ident":J
    monitor-exit v4

    goto :goto_312

    .line 1840
    .restart local v5    # "keyCode":I
    .restart local v6    # "ident":J
    :catchall_2ff
    move-exception v0

    goto :goto_304

    .end local v24    # "newIndex":I
    .restart local v1    # "newIndex":I
    :catchall_301
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "newIndex":I
    .restart local v24    # "newIndex":I
    :goto_304
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1842
    .end local v5    # "keyCode":I
    .end local v6    # "ident":J
    .end local v24    # "newIndex":I
    .restart local v1    # "newIndex":I
    :catchall_308
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "newIndex":I
    .restart local v24    # "newIndex":I
    :goto_30b
    monitor-exit v4
    :try_end_30c
    .catchall {:try_start_2f9 .. :try_end_30c} :catchall_30d

    :try_start_30c
    throw v0

    :catchall_30d
    move-exception v0

    goto :goto_30b

    .line 1844
    .end local v24    # "newIndex":I
    .restart local v1    # "newIndex":I
    :cond_30f
    move/from16 v24, v1

    const/4 v1, 0x0

    .end local v1    # "newIndex":I
    .restart local v24    # "newIndex":I
    :goto_312
    monitor-exit v2

    goto :goto_322

    .end local v24    # "newIndex":I
    .restart local v1    # "newIndex":I
    :catchall_314
    move-exception v0

    move/from16 v24, v1

    .end local v1    # "newIndex":I
    .restart local v24    # "newIndex":I
    :goto_317
    monitor-exit v2
    :try_end_318
    .catchall {:try_start_30c .. :try_end_318} :catchall_319

    throw v0

    :catchall_319
    move-exception v0

    goto :goto_317

    .line 1847
    .end local v24    # "newIndex":I
    :cond_31b
    const/4 v1, 0x0

    goto :goto_322

    .end local v3    # "oldIndex":I
    .end local v11    # "flags":I
    .end local v19    # "aliasIndex":I
    .local v6, "oldIndex":I
    .restart local v7    # "flags":I
    .restart local v22    # "aliasIndex":I
    :cond_31d
    move v3, v6

    move v11, v7

    move/from16 v19, v22

    const/4 v1, 0x0

    .end local v6    # "oldIndex":I
    .end local v7    # "flags":I
    .end local v22    # "aliasIndex":I
    .restart local v3    # "oldIndex":I
    .restart local v11    # "flags":I
    .restart local v19    # "aliasIndex":I
    :goto_322
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 1848
    .local v0, "index":I
    invoke-virtual {v8, v9, v3, v0, v11}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 1851
    if-nez v16, :cond_334

    const/4 v2, 0x1

    if-ne v10, v2, :cond_334

    move v1, v2

    nop

    :cond_334
    invoke-direct {v8, v15, v14, v1}, Lcom/android/server/audio/AudioService;->persistVolumeIfNeeded(ILcom/android/server/audio/AudioService$VolumeStreamState;Z)V

    .line 1853
    return-void

    .line 1681
    .end local v0    # "index":I
    .end local v3    # "oldIndex":I
    .end local v11    # "flags":I
    .end local v17    # "step":I
    .end local v18    # "uid":I
    .end local v19    # "aliasIndex":I
    .local v2, "aliasIndex":I
    .local v7, "uid":I
    .restart local p3    # "flags":I
    :catchall_338
    move-exception v0

    move/from16 v18, v7

    .end local v7    # "uid":I
    .restart local v18    # "uid":I
    :goto_33b
    :try_start_33b
    monitor-exit v3
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_33d

    throw v0

    :catchall_33d
    move-exception v0

    goto :goto_33b
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v8, p0

    .line 1538
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1539
    :try_start_5
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 1540
    .local v0, "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2c

    .line 1541
    if-eqz v0, :cond_18

    .line 1542
    iget-object v9, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x1c

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v12, p1

    move-object v14, v0

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2b

    .line 1546
    :cond_18
    nop

    .line 1547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1546
    move-object v1, v8

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1549
    :goto_2b
    return-void

    .line 1540
    .end local v0    # "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .line 6436
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6437
    :try_start_3
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 6438
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6441
    monitor-exit v0

    .line 6442
    return-void

    .line 6441
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 4812
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 4814
    const/4 v0, 0x1

    return v0

    .line 4816
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4817
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4819
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    const/4 v1, 0x0

    return v1
.end method

.method public clearAllScoClients(IZ)V
    .registers 8
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .line 3845
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3846
    const/4 v1, 0x0

    .line 3847
    .local v1, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    .line 3848
    .local v3, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_20

    .line 3849
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    goto :goto_21

    .line 3851
    :cond_20
    move-object v1, v3

    .line 3853
    .end local v3    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_21
    goto :goto_a

    .line 3854
    :cond_22
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3855
    if-eqz v1, :cond_2e

    .line 3856
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3858
    .end local v1    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2e
    monitor-exit v0

    .line 3859
    return-void

    .line 3858
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public createAudioRecordForLoopback(Landroid/os/ParcelFileDescriptor;J)Landroid/os/IBinder;
    .registers 6
    .param p1, "sharedMem"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J

    .line 8529
    new-instance v0, Landroid/media/MiuiAudioRecord;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Landroid/media/MiuiAudioRecord;-><init>(Ljava/io/FileDescriptor;J)V

    return-object v0
.end method

.method public disableRingtoneSync(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 8245
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 8246
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_f

    .line 8247
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "disable sound settings syncing for another profile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8250
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 8253
    .local v1, "token":J
    :try_start_13
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sync_parent_sounds"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_21

    .line 8256
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8257
    nop

    .line 8258
    return-void

    .line 8256
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 7435
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7436
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 7437
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 7438
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_28

    .line 7439
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v6, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 7444
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 7446
    :cond_28
    monitor-exit v0

    .line 7447
    return-void

    .line 7446
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method disconnectA2dp()V
    .registers 9

    .line 4200
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4201
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_51

    .line 4202
    const/4 v2, 0x0

    .line 4204
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_a
    :try_start_a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v6, 0x80

    if-ge v2, v5, :cond_32

    .line 4205
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4206
    .local v5, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v7, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v7, v6, :cond_2f

    .line 4207
    if-eqz v4, :cond_24

    move-object v6, v4

    goto :goto_29

    :cond_24
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_29
    move-object v4, v6

    .line 4208
    iget-object v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4204
    .end local v5    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4211
    .end local v2    # "i":I
    :cond_32
    if-eqz v4, :cond_4b

    .line 4212
    invoke-direct {p0, v6, v3, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 4214
    .local v2, "delay":I
    nop

    .local v3, "i":I
    :goto_39
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_4b

    .line 4215
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    .line 4214
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 4218
    .end local v2    # "delay":I
    .end local v3    # "i":I
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_4e

    .line 4219
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_51

    .line 4220
    return-void

    .line 4218
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v2

    .line 4219
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw v1
.end method

.method disconnectA2dpSink()V
    .registers 8

    .line 4223
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4224
    const/4 v1, 0x0

    .line 4226
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 4227
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4228
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v6, -0x7ffe0000

    if-ne v5, v6, :cond_2c

    .line 4229
    if-eqz v3, :cond_21

    move-object v5, v3

    goto :goto_26

    :cond_21
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    :goto_26
    move-object v3, v5

    .line 4230
    iget-object v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4226
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4233
    .end local v1    # "i":I
    :cond_2f
    if-eqz v3, :cond_45

    .line 4234
    nop

    .local v2, "i":I
    :goto_32
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 4235
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 4234
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_32

    .line 4238
    .end local v2    # "i":I
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v0

    .line 4239
    return-void

    .line 4238
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v1
.end method

.method disconnectAllBluetoothProfiles()V
    .registers 1

    .line 4193
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    .line 4194
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    .line 4195
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    .line 4196
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHearingAid()V

    .line 4197
    return-void
.end method

.method disconnectHeadset()V
    .registers 3

    .line 4242
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4243
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 4244
    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 4245
    monitor-exit v0

    .line 4246
    return-void

    .line 4245
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method disconnectHearingAid()V
    .registers 9

    .line 4249
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_51

    .line 4251
    const/4 v2, 0x0

    .line 4253
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_a
    :try_start_a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/high16 v6, 0x8000000

    if-ge v2, v5, :cond_32

    .line 4254
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4255
    .local v5, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v7, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v7, v6, :cond_2f

    .line 4256
    if-eqz v4, :cond_24

    move-object v6, v4

    goto :goto_29

    :cond_24
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_29
    move-object v4, v6

    .line 4257
    iget-object v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4253
    .end local v5    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4260
    .end local v2    # "i":I
    :cond_32
    if-eqz v4, :cond_4b

    .line 4261
    invoke-direct {p0, v6, v3, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 4263
    .local v2, "delay":I
    nop

    .local v3, "i":I
    :goto_39
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_4b

    .line 4264
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    .line 4263
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 4267
    .end local v2    # "delay":I
    .end local v3    # "i":I
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_4e

    .line 4268
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_51

    .line 4269
    return-void

    .line 4267
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v2

    .line 4268
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8417
    if-eqz p1, :cond_2e

    .line 8420
    if-eqz p3, :cond_26

    .line 8423
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8424
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 8427
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 8425
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8428
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1

    .line 8421
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8418
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 7668
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "AudioService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 7671
    :cond_b
    array-length v0, p3

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_22

    aget-object v2, p3, v1

    .line 7672
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "focusControl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 7673
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7674
    return-void

    .line 7671
    .end local v2    # "arg":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7678
    :cond_22
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 7679
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 7680
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 7681
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7682
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7683
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7685
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7686
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7687
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7688
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7689
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7690
    const-string v0, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7691
    const-string v0, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 7692
    const-string v0, "  sIndependentA11yVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7693
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7694
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7695
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7696
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7697
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7698
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7699
    const-string v0, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7701
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 7702
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7704
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 7706
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 7708
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7709
    const-string v0, "\nEvent logs:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7710
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7711
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7712
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7713
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7714
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7715
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7716
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 7717
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .registers 7
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 2404
    if-nez p2, :cond_3

    .line 2405
    return-void

    .line 2407
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 2409
    const-string v0, "AudioService"

    const-string v1, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    return-void

    .line 2412
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2413
    const/4 v1, 0x0

    .line 2414
    .local v1, "applyRequired":Z
    if-eqz p1, :cond_46

    .line 2415
    :try_start_1b
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 2416
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_3d

    .line 2418
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2419
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2420
    const/4 v1, 0x1

    .line 2422
    :cond_3d
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_68

    .line 2439
    .end local v1    # "applyRequired":Z
    :catchall_44
    move-exception v1

    goto :goto_77

    .line 2425
    .restart local v1    # "applyRequired":Z
    :cond_46
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_68

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v2, :cond_68

    .line 2426
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2427
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_68

    .line 2428
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2429
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2430
    const/4 v1, 0x1

    .line 2434
    :cond_68
    :goto_68
    if-eqz v1, :cond_75

    .line 2436
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 2437
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2439
    .end local v1    # "applyRequired":Z
    :cond_75
    monitor-exit v0

    .line 2440
    return-void

    .line 2439
    :goto_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_1b .. :try_end_78} :catchall_44

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 9
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 2146
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const-string v0, "AudioService"

    const-string v3, "forceVolumeControlStream(%d)"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2148
    :try_start_1c
    iget v3, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    if-eq p1, v4, :cond_25

    .line 2149
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 2151
    :cond_25
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 2152
    iget v2, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne v2, v4, :cond_3a

    .line 2153
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v2, :cond_37

    .line 2154
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2155
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2157
    :cond_37
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_76

    .line 2159
    :cond_3a
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez v1, :cond_46

    .line 2160
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_76

    .line 2162
    :cond_46
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p2, :cond_6a

    .line 2163
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 2165
    :cond_6a
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2166
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2170
    :goto_76
    monitor-exit v0

    .line 2171
    return-void

    .line 2170
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_1c .. :try_end_7a} :catchall_78

    throw v1
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 8277
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8278
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8280
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 8238
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8239
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8241
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentAudioFocus()I
    .registers 2

    .line 7188
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 4
    .param p1, "focusGain"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 7192
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 4
    .param p1, "streamType"    # I

    .line 2535
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2536
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2537
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMode()I
    .registers 2

    .line 3076
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method public getNotificationUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "type"    # Ljava/lang/String;

    .line 8533
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

    invoke-virtual {v0}, Lcom/miui/server/AudioQueryWeatherService;->getSunriseTimeHours()I

    move-result v0

    .line 8534
    .local v0, "SunriseTimeHours":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

    invoke-virtual {v1}, Lcom/miui/server/AudioQueryWeatherService;->getSunriseTimeMins()I

    move-result v1

    .line 8535
    .local v1, "SunriseTimeMins":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

    invoke-virtual {v2}, Lcom/miui/server/AudioQueryWeatherService;->getSunsetTimeHours()I

    move-result v2

    .line 8536
    .local v2, "SunsetTimeHours":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

    invoke-virtual {v3}, Lcom/miui/server/AudioQueryWeatherService;->getSunsetTimeMins()I

    move-result v3

    .line 8537
    .local v3, "SunsetTimeMins":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioQueryWeatherService:Lcom/miui/server/AudioQueryWeatherService;

    invoke-virtual {v4}, Lcom/miui/server/AudioQueryWeatherService;->getDefaultTimeZoneStatus()Z

    move-result v4

    invoke-static {v4}, Landroid/media/AudioServiceInjector;->setDefaultTimeZoneStatus(Z)V

    .line 8538
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioServiceInjector;->setSunriseAndSunsetTime(IIII)V

    .line 8540
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/media/AudioServiceInjector;->checkSunriseAndSunsetTimeUpdate(Landroid/content/Context;)V

    .line 8541
    invoke-static {p1}, Landroid/media/AudioServiceInjector;->getNotificationUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getRingerModeExternal()I
    .registers 3

    .line 2590
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2591
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    .line 2592
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRingerModeInternal()I
    .registers 3

    .line 2597
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2598
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    .line 2599
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .line 7299
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 4
    .param p1, "streamType"    # I

    .line 2520
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2523
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Landroid/media/AudioServiceInjector;->calculateStreamMaxVolume(IILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getStreamMinVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .line 2529
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2530
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 7
    .param p1, "streamType"    # I

    .line 2498
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2499
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2500
    .local v0, "device":I
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 2501
    :try_start_a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2504
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2505
    const/4 v2, 0x0

    .line 2507
    :cond_1d
    if-eqz v2, :cond_34

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_34

    .line 2509
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3

    move v2, v3

    .line 2513
    :cond_34
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v3}, Landroid/media/AudioServiceInjector;->calculateStreamVolume(IILandroid/content/Context;)I

    move-result v3

    monitor-exit v1

    return v3

    .line 2515
    .end local v2    # "index":I
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public getUiSoundsStreamType()I
    .registers 3

    .line 2542
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .param p1, "vibrateType"    # I

    .line 2857
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2858
    :cond_6
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 4989
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4990
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x67

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4996
    monitor-exit v0

    .line 4997
    return-void

    .line 4996
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isAudioServerRunning()Z
    .registers 2

    .line 8515
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 8516
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .line 3509
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3510
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 3511
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isBluetoothScoOn()Z
    .registers 4

    .line 3483
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In isBluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public isCameraSoundForced()Z
    .registers 3

    .line 7595
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7596
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    .line 7597
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 2

    .line 7512
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .registers 2

    .line 2488
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .registers 4

    .line 3386
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In isSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .line 4603
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .line 4501
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamMute(I)Z
    .registers 4
    .param p1, "streamType"    # I

    .line 2333
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_8

    .line 2334
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 2336
    :cond_8
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2337
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2338
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2339
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public isValidRingerMode(I)Z
    .registers 3
    .param p1, "ringerMode"    # I

    .line 2610
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public loadSoundEffects()Z
    .registers 11

    .line 3209
    const/4 v0, 0x3

    .line 3210
    .local v0, "attempts":I
    new-instance v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3212
    .local v1, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v1

    .line 3213
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3214
    :goto_12
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_36

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    add-int/lit8 v2, v0, -0x1

    .line 3214
    .local v2, "attempts":I
    if-lez v0, :cond_2d

    .line 3216
    .end local v0    # "attempts":I
    const-wide/16 v3, 0x1388

    :try_start_1d
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_3c

    .line 3219
    :goto_20
    goto :goto_2b

    .line 3217
    :catch_21
    move-exception v0

    .line 3218
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_22
    const-string v3, "AudioService"

    const-string/jumbo v4, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_3c

    .line 3218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_20

    .line 3214
    :goto_2b
    move v0, v2

    goto :goto_12

    .line 3221
    :cond_2d
    move v0, v2

    .line 3221
    .end local v2    # "attempts":I
    .local v0, "attempts":I
    :cond_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_36

    .line 3222
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    return v3

    .line 3221
    :catchall_36
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 3221
    .end local v0    # "attempts":I
    .restart local v2    # "attempts":I
    :goto_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    throw v0

    :catchall_3c
    move-exception v0

    goto :goto_3a
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .line 7788
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7791
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 7792
    return-void

    .line 7795
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 7796
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7797
    :cond_2e
    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 3
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 7565
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 7566
    return-void
.end method

.method public onAudioServerDied()V
    .registers 12

    .line 1012
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_185

    .line 1013
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_185

    .line 1019
    :cond_c
    const-string v0, "AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1030
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1031
    const/4 v1, 0x0

    move v2, v1

    .line 1031
    .local v2, "i":I
    :goto_21
    :try_start_21
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3e

    .line 1032
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 1033
    .local v3, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    iget-object v6, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v5, v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v3    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1039
    .end local v2    # "i":I
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_182

    .line 1041
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v0

    if-nez v0, :cond_6e

    .line 1042
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAudioServerDied causes setPhoneState("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 1043
    invoke-static {v5}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1047
    :cond_6e
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const-string/jumbo v5, "onAudioServerDied"

    invoke-direct {v2, v1, v3, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1049
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1050
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const-string/jumbo v5, "onAudioServerDied"

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1052
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1054
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1055
    :try_start_9a
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v0, :cond_a1

    .line 1056
    const/16 v0, 0xb

    goto :goto_a2

    :cond_a1
    move v0, v1

    .line 1057
    .local v0, "forSys":I
    :goto_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_17f

    .line 1058
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v5, "onAudioServerDied"

    const/4 v6, 0x4

    invoke-direct {v3, v6, v0, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1060
    invoke-static {v6, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1063
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1064
    .local v3, "numStreamTypes":I
    add-int/lit8 v2, v3, -0x1

    .line 1064
    .local v2, "streamType":I
    :goto_ba
    const/16 v5, 0xa

    if-ltz v2, :cond_d6

    .line 1065
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v2

    .line 1066
    .local v6, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    nop

    .line 1067
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$500(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v7

    div-int/2addr v7, v5

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v8

    div-int/2addr v8, v5

    .line 1066
    invoke-static {v2, v7, v8}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1069
    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1064
    .end local v6    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_ba

    .line 1073
    .end local v2    # "streamType":I
    :cond_d6
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1079
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_e9

    .line 1080
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1083
    :cond_e9
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1084
    :try_start_ec
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v2, :cond_f2

    .line 1085
    move v5, v1

    nop

    :cond_f2
    move v2, v5

    .line 1086
    .local v2, "forMed":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v8, "onAudioServerDied"

    invoke-direct {v7, v4, v2, v8}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1088
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1089
    .end local v2    # "forMed":I
    monitor-exit v6
    :try_end_104
    .catchall {:try_start_ec .. :try_end_104} :catchall_17c

    .line 1091
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1092
    :try_start_107
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v5, :cond_10e

    .line 1093
    const/16 v1, 0x8

    nop

    .line 1094
    .local v1, "forDock":I
    :cond_10e
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v7, "onAudioServerDied"

    const/4 v8, 0x3

    invoke-direct {v6, v8, v1, v7}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1096
    invoke-static {v8, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1097
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "onAudioServerDied"

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1098
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v5, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1099
    .end local v1    # "forDock":I
    monitor-exit v2
    :try_end_12d
    .catchall {:try_start_107 .. :try_end_12d} :catchall_179

    .line 1100
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_142

    .line 1101
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 1102
    :try_start_134
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_13d

    .line 1103
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 1105
    :cond_13d
    monitor-exit v1

    goto :goto_142

    :catchall_13f
    move-exception v2

    monitor-exit v1
    :try_end_141
    .catchall {:try_start_134 .. :try_end_141} :catchall_13f

    throw v2

    .line 1108
    :cond_142
    :goto_142
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 1109
    :try_start_145
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1110
    .local v4, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    .line 1111
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_14f

    .line 1112
    :cond_15f
    monitor-exit v1
    :try_end_160
    .catchall {:try_start_145 .. :try_end_160} :catchall_176

    .line 1114
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1116
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1118
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x1d

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1120
    return-void

    .line 1112
    :catchall_176
    move-exception v2

    :try_start_177
    monitor-exit v1
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    throw v2

    .line 1099
    :catchall_179
    move-exception v1

    :try_start_17a
    monitor-exit v2
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw v1

    .line 1089
    :catchall_17c
    move-exception v1

    :try_start_17d
    monitor-exit v6
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    throw v1

    .line 1057
    .end local v0    # "forSys":I
    .end local v3    # "numStreamTypes":I
    :catchall_17f
    move-exception v0

    :try_start_180
    monitor-exit v2
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    throw v0

    .line 1039
    :catchall_182
    move-exception v1

    :try_start_183
    monitor-exit v0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    throw v1

    .line 1014
    :cond_185
    :goto_185
    const-string v0, "AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1017
    return-void
.end method

.method onIndicateSystemReady()V
    .registers 9

    .line 999
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_7

    .line 1000
    return-void

    .line 1002
    :cond_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1009
    return-void
.end method

.method public onSystemReady()V
    .registers 12

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 949
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 952
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 953
    const-string v0, "AudioService"

    const-string v1, "In onSystemReady(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 955
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    .line 958
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 963
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 964
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_45

    .line 965
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 967
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v5, 0x15

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 971
    :cond_45
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.hdmi.cec"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 972
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 973
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 974
    :try_start_62
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 975
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v4, :cond_76

    .line 976
    iget v4, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v5, -0x2c0003

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 978
    :cond_76
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 979
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 980
    monitor-exit v3

    goto :goto_85

    :catchall_82
    move-exception v2

    monitor-exit v3
    :try_end_84
    .catchall {:try_start_62 .. :try_end_84} :catchall_82

    throw v2

    .line 983
    :cond_85
    :goto_85
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 985
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "AudioService"

    .line 991
    const-string v3, "audio.safemedia.bypass"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 992
    nop

    .line 985
    :goto_a4
    move v10, v2

    goto :goto_a9

    .line 992
    :cond_a6
    const/16 v2, 0x7530

    goto :goto_a4

    .line 985
    :goto_a9
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 994
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    .line 995
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 996
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 7543
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 7544
    return-void
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "effectType"    # I

    .line 3185
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 3186
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .line 3191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3192
    return-void

    .line 3195
    :cond_8
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1e

    if-gez p1, :cond_f

    goto :goto_1e

    .line 3200
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3202
    return-void

    .line 3196
    :cond_1e
    :goto_1e
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 8288
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    .line 8289
    return-void
.end method

.method public playerEvent(II)V
    .registers 5
    .param p1, "piid"    # I
    .param p2, "event"    # I

    .line 8292
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(III)V

    .line 8293
    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .registers 5
    .param p1, "piid"    # I
    .param p2, "hasOpPlayAudio"    # Z

    .line 8296
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    .line 8297
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZ)Ljava/lang/String;
    .registers 21
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z
    .param p4, "isFocusPolicy"    # Z
    .param p5, "isVolumeController"    # Z

    move-object v8, p0

    .line 8025
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 8027
    const/4 v9, 0x0

    .line 8029
    .local v9, "regId":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8030
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v10

    :goto_15
    move v11, v0

    .line 8032
    .local v11, "hasPermissionForPolicy":Z
    const/4 v12, 0x0

    if-nez v11, :cond_45

    .line 8033
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t register audio policy for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8033
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8035
    return-object v12

    .line 8038
    :cond_45
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAudioPolicy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8039
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 8038
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8040
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v14

    .line 8042
    :try_start_78
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 8043
    const-string v0, "AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_8b} :catch_b9
    .catchall {:try_start_78 .. :try_end_8b} :catchall_b5

    .line 8044
    :try_start_8b
    monitor-exit v14
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_b5

    return-object v12

    .line 8046
    :cond_8d
    :try_start_8d
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-object v1, v0

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZ)V

    .line 8048
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, v0, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 8049
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 8050
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b2} :catch_b9
    .catchall {:try_start_8d .. :try_end_b2} :catchall_b5

    .line 8056
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    nop

    .line 8057
    :try_start_b3
    monitor-exit v14

    .line 8058
    return-object v9

    .line 8057
    :catchall_b5
    move-exception v0

    move-object/from16 v3, p2

    goto :goto_d9

    .line 8051
    :catch_b9
    move-exception v0

    .line 8053
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c6
    .catchall {:try_start_b3 .. :try_end_c6} :catchall_b5

    move-object/from16 v3, p2

    :try_start_c8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " binder death"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8055
    monitor-exit v14

    return-object v12

    .line 8057
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d9
    monitor-exit v14
    :try_end_da
    .catchall {:try_start_c8 .. :try_end_da} :catchall_db

    throw v0

    :catchall_db
    move-exception v0

    goto :goto_d9
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 6
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 8484
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 8485
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 8486
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 8487
    const-string v1, "AudioService"

    const-string v2, "Cannot re-register audio server state dispatcher"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8488
    monitor-exit v0

    return-void

    .line 8490
    :cond_1b
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_35

    .line 8492
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_20
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_29
    .catchall {:try_start_20 .. :try_end_28} :catchall_35

    .line 8495
    goto :goto_2a

    .line 8493
    :catch_29
    move-exception v2

    .line 8496
    :goto_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8497
    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 8498
    return-void

    .line 8497
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v1
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 4
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 8266
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8267
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8269
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 8270
    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 4
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 8227
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8228
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8230
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 8231
    return-void
.end method

.method public releasePlayer(I)V
    .registers 4
    .param p1, "piid"    # I

    .line 8300
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 8301
    return-void
.end method

.method public reloadAudioSettings()V
    .registers 2

    .line 3310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 3311
    return-void
.end method

.method public reloadMusicVolume()V
    .registers 7

    .line 3291
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3292
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .line 3292
    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_34

    .line 3293
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    .line 3295
    .local v2, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    .line 3296
    goto :goto_31

    .line 3299
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3300
    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_31

    .line 3301
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reloadMusicVolume stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    .end local v2    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3304
    .end local v1    # "streamType":I
    :cond_34
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 3305
    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 6
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8121
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_27

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMixForPolicy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8123
    :cond_27
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8124
    :try_start_2a
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8125
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8126
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_35

    .line 8127
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 8129
    :cond_35
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)V

    .line 8130
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8131
    const/4 v0, 0x0

    return v0

    .line 8130
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .registers 25
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p9, "sdk"    # I

    move-object v1, p0

    .line 7155
    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_45

    .line 7156
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 7157
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    .line 7159
    const-string v0, "AudioService"

    const-string v3, "Invalid permission to (un)lock audio focus"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7160
    return v2

    .line 7164
    :cond_28
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 7165
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 7166
    const-string v0, "AudioService"

    const-string v4, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7167
    monitor-exit v3

    return v2

    .line 7169
    :cond_40
    monitor-exit v3

    goto :goto_47

    :catchall_42
    move-exception v0

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw v0

    .line 7173
    :cond_45
    move-object/from16 v12, p5

    :cond_47
    :goto_47
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 7175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v11

    .line 7173
    move-object v3, v13

    move v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method protected sendVolumeUpdate(IIII)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .line 2250
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    .line 2252
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 2253
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 2255
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 2256
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .line 4939
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)I

    move-result v0

    return v0
.end method

.method public setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I
    .registers 23
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "musicDevice"    # I
    .param p6, "a2dpVolume"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 4958
    const/4 v0, 0x2

    if-eq v10, v0, :cond_27

    const/16 v1, 0xb

    if-ne v10, v1, :cond_10

    goto :goto_27

    .line 4959
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4961
    :cond_27
    :goto_27
    iget-object v12, v8, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 4962
    const/4 v1, 0x0

    if-ne v10, v0, :cond_3d

    if-nez v11, :cond_3d

    .line 4963
    if-ne v9, v0, :cond_33

    const/4 v1, 0x1

    nop

    .line 4964
    .local v1, "intState":I
    :cond_33
    const/16 v2, 0x80

    move/from16 v13, p5

    :try_start_37
    invoke-direct {v8, v2, v1, v13}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 4964
    .end local v1    # "intState":I
    move v1, v2

    .line 4966
    .local v1, "delay":I
    goto :goto_3f

    .line 4967
    .end local v1    # "delay":I
    :cond_3d
    move/from16 v13, p5

    .line 4967
    .restart local v1    # "delay":I
    :goto_3f
    move v14, v1

    .line 4970
    .end local v1    # "delay":I
    .local v14, "delay":I
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_76

    .line 4971
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothA2dpDeviceConnectionStateInt device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_8f

    move-object/from16 v15, p1

    :try_start_53
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delay(ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " suppressNoisyIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 4976
    :cond_76
    move-object/from16 v15, p1

    :goto_78
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 4977
    if-ne v10, v0, :cond_80

    .line 4978
    const/16 v0, 0x66

    .line 4976
    :goto_7e
    move v3, v0

    goto :goto_83

    .line 4978
    :cond_80
    const/16 v0, 0x65

    goto :goto_7e

    .line 4976
    :goto_83
    move-object v1, v8

    move v4, v9

    move/from16 v5, p6

    move-object v6, v15

    move v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4983
    monitor-exit v12

    move v0, v14

    .line 4984
    .end local v14    # "delay":I
    .local v0, "delay":I
    return v0

    .line 4983
    .end local v0    # "delay":I
    :catchall_8f
    move-exception v0

    move-object/from16 v15, p1

    :goto_92
    monitor-exit v12
    :try_end_93
    .catchall {:try_start_53 .. :try_end_93} :catchall_94

    throw v0

    :catchall_94
    move-exception v0

    goto :goto_92
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)I
    .registers 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 4946
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4947
    const/4 v0, 0x0

    return v0

    .line 4949
    :cond_c
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I

    move-result v0

    return v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 11
    .param p1, "on"    # Z

    .line 3491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3495
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3496
    :try_start_2a
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-ne v2, p1, :cond_30

    .line 3497
    monitor-exit v1

    return-void

    .line 3499
    :cond_30
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 3500
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 3502
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v6, :cond_3e

    const/4 v6, 0x0

    goto :goto_40

    :cond_3e
    const/16 v6, 0xa

    :goto_40
    const/4 v8, 0x0

    .line 3500
    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3504
    monitor-exit v1

    .line 3505
    return-void

    .line 3504
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_47

    throw v2
.end method

.method public setBluetoothA2dpOnInt(ZLjava/lang/String;)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 7271
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7272
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 7273
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 7274
    const/4 v1, 0x1

    .line 7275
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_15

    :cond_13
    const/16 v2, 0xa

    .line 7274
    :goto_15
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V

    .line 7277
    monitor-exit v0

    .line 7278
    return-void

    .line 7277
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .registers 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 4919
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4920
    const/4 v1, 0x0

    if-nez p3, :cond_13

    .line 4921
    const/4 v2, 0x2

    if-ne p2, v2, :cond_b

    const/4 v1, 0x1

    nop

    .line 4922
    .local v1, "intState":I
    :cond_b
    const/high16 v2, 0x8000000

    :try_start_d
    invoke-direct {p0, v2, v1, p4}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .end local v1    # "intState":I
    move v1, v2

    .line 4924
    .local v1, "delay":I
    goto :goto_14

    .line 4925
    .end local v1    # "delay":I
    :cond_13
    nop

    .line 4927
    .restart local v1    # "delay":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x69

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p2

    move-object v7, p1

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4933
    monitor-exit v0

    .line 4934
    return v1

    .line 4933
    .end local v1    # "delay":I
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_22

    throw v1
.end method

.method public setBluetoothScoOn(Z)V
    .registers 6
    .param p1, "on"    # Z

    .line 3393
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3394
    return-void

    .line 3399
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_8a

    .line 3400
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOn Permission Denial for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setBluetoothScoOn(), on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". The calling application Uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3404
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is greater than FIRST_APPLICATION_UID exiting from setBluetoothScoOn()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3403
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    const/4 v0, 0x3

    if-eqz p1, :cond_6a

    .line 3407
    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    goto :goto_71

    .line 3408
    :cond_6a
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    if-ne v1, v0, :cond_71

    .line 3409
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3410
    :cond_71
    :goto_71
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setbluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    return-void

    .line 3416
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothScoOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3418
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3419
    .local v0, "eventSource":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setBluetoothScoOn(), eventSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(ZLjava/lang/String;)V

    .line 3421
    return-void
.end method

.method public setBluetoothScoOnInt(ZLjava/lang/String;)V
    .registers 13
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 3450
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOnInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_65

    .line 3453
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3454
    :try_start_26
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3455
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_5e

    .line 3457
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isBluetoothAudioNotConnectedToEarbud()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 3458
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3459
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothScoOnInt(true) failed because "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not in audio connected mode"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    monitor-exit v3

    return-void

    .line 3464
    :cond_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_26 .. :try_end_5f} :catchall_62

    .line 3465
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_6b

    .line 3464
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    .line 3466
    :cond_65
    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v3, v1, :cond_6b

    .line 3467
    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3469
    :cond_6b
    :goto_6b
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3470
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setbluetoothScoOnInt(), mForcedUseForCommExt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT_SCO="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_97

    const-string/jumbo v3, "on"

    goto :goto_9a

    :cond_97
    const-string/jumbo v3, "off"

    :goto_9a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3473
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v9, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3475
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3478
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3479
    return-void
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8135
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_27

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8136
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8135
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8137
    :cond_27
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8138
    :try_start_2a
    const-string v1, "Cannot change audio policy focus properties"

    .line 8139
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8140
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_35

    .line 8141
    monitor-exit v0

    return v2

    .line 8143
    :cond_35
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 8144
    const-string v3, "AudioService"

    const-string v4, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8145
    monitor-exit v0

    return v2

    .line 8147
    :cond_4a
    const/4 v3, 0x1

    if-ne p1, v3, :cond_71

    .line 8149
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8150
    .local v5, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v6, v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v6, v3, :cond_70

    .line 8151
    const-string v3, "AudioService"

    const-string v4, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8152
    monitor-exit v0

    return v2

    .line 8154
    .end local v5    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_70
    goto :goto_57

    .line 8156
    :cond_71
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 8157
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_79

    goto :goto_7a

    :cond_79
    move v3, v4

    :goto_7a
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 8159
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8160
    return v4

    .line 8159
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8433
    if-eqz p1, :cond_2d

    .line 8436
    if-eqz p3, :cond_25

    .line 8439
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8440
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 8443
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    .line 8444
    monitor-exit v0

    .line 8445
    return-void

    .line 8441
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for external focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8444
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1

    .line 8437
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8434
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 10
    .param p1, "on"    # Z

    .line 7486
    const/4 v0, 0x0

    .line 7487
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_44

    .line 7488
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 7489
    :try_start_8
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_15

    .line 7490
    const-string v2, "AudioService"

    const-string v3, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7491
    monitor-exit v1

    return v0

    .line 7494
    :cond_15
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_41

    .line 7495
    :try_start_18
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v3, p1, :cond_35

    .line 7496
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 7497
    if-eqz p1, :cond_23

    const/16 v3, 0xc

    goto :goto_24

    .line 7498
    :cond_23
    const/4 v3, 0x0

    .line 7499
    .local v3, "config":I
    :goto_24
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v6, "setHdmiSystemAudioSupported"

    const/4 v7, 0x5

    invoke-direct {v5, v7, v3, v6}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 7501
    invoke-static {v7, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 7503
    .end local v3    # "config":I
    :cond_35
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v3

    move v0, v3

    .line 7504
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_3e

    .line 7505
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    goto :goto_44

    .line 7504
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v3

    .line 7505
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_41

    throw v2

    .line 7507
    :cond_44
    :goto_44
    return v0
.end method

.method public setHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 4908
    const-string v0, "AudioService"

    const-string/jumbo v1, "setBluetoothHearingAidDeviceConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/audio/AudioService;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    .line 4912
    return-void
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .registers 11
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 2492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 2494
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .registers 7
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2551
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_10

    .line 2552
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2555
    :cond_10
    if-nez p1, :cond_1d

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1d

    .line 2557
    return-void

    .line 2559
    :cond_1d
    const-string/jumbo v1, "setMicrophoneMute()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2560
    return-void

    .line 2562
    :cond_27
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p3, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2563
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_38

    .line 2566
    return-void

    .line 2568
    :cond_38
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    .line 2569
    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 10
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2928
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Process ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2928
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v0, :cond_53

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    :cond_53
    const-string/jumbo v0, "setMode()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2932
    return-void

    .line 2935
    :cond_5d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_91

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 2936
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_91

    .line 2939
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2939
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    return-void

    .line 2944
    :cond_91
    const/4 v0, -0x1

    if-lt p1, v0, :cond_d4

    const/4 v1, 0x4

    if-lt p1, v1, :cond_98

    goto :goto_d4

    .line 2948
    :cond_98
    const/4 v1, 0x0

    .line 2949
    .local v1, "oldModeOwnerPid":I
    const/4 v2, 0x0

    .line 2950
    .local v2, "newModeOwnerPid":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2951
    :try_start_9d
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b3

    .line 2952
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v4

    move v1, v4

    .line 2954
    :cond_b3
    if-ne p1, v0, :cond_b8

    .line 2955
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    move p1, v0

    .line 2957
    :cond_b8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 2958
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_9d .. :try_end_c2} :catchall_d1

    .line 2961
    if-eq v2, v1, :cond_d0

    if-eqz v2, :cond_d0

    .line 2962
    const-string v0, "AudioService"

    const-string v3, "In setMode(), calling disconnectBluetoothSco()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    .line 2965
    :cond_d0
    return-void

    .line 2958
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0

    .line 2945
    .end local v1    # "oldModeOwnerPid":I
    .end local v2    # "newModeOwnerPid":I
    :cond_d4
    :goto_d4
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .registers 5
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 2614
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2615
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 2616
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2619
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2620
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 2623
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 2624
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2625
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .line 7293
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7294
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 7295
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 11
    .param p1, "on"    # Z

    .line 3354
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3355
    return-void

    .line 3358
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpeakerphoneOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3360
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3361
    .local v0, "eventSource":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setSpeakerphoneOn(), on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", eventSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioServiceInjector;->isAppCalledInCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_58

    return-void

    .line 3366
    :cond_58
    const/4 v1, 0x1

    if-eqz p1, :cond_6f

    .line 3367
    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6c

    .line 3368
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3372
    :cond_6c
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_76

    .line 3373
    :cond_6f
    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v2, v1, :cond_76

    .line 3374
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3377
    :cond_76
    :goto_76
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3378
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3382
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .registers 16
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    move-object v7, p0

    move v8, p1

    .line 1990
    move-object v9, p4

    const/16 v0, 0xa

    if-ne v8, v0, :cond_24

    invoke-direct {v7}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1991
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    return-void

    .line 1995
    :cond_24
    if-nez v8, :cond_49

    if-nez p2, :cond_49

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 1997
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_49

    .line 2000
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    return-void

    .line 2004
    :cond_49
    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v10, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x2

    move-object v0, v10

    move v2, v8

    move v3, p2

    move v4, p3

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2006
    nop

    .line 2007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2006
    move-object v0, v7

    move v1, v8

    move v2, p2

    move v3, p3

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2008
    return-void
.end method

.method public setVibrateSetting(II)V
    .registers 4
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 2864
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_5

    return-void

    .line 2866
    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 2870
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 2872
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 7757
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7760
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7761
    return-void

    .line 7765
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 7766
    if-eqz p1, :cond_25

    .line 7769
    :try_start_16
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    .line 7780
    goto :goto_25

    .line 7778
    :catch_24
    move-exception v0

    .line 7782
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 7783
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_46

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7784
    :cond_46
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 5
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .line 7801
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 7802
    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 7803
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 7804
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2e

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7806
    :cond_2e
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v15, p0

    move/from16 v13, p2

    .line 4890
    iget-object v12, v15, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 4891
    :try_start_7
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_77

    if-eqz v0, :cond_46

    .line 4892
    :try_start_b
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredDeviceConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_40

    move-object/from16 v11, p4

    :try_start_22
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_3c

    move-object/from16 v10, p3

    :try_start_2c
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 4902
    :catchall_3c
    move-exception v0

    move-object/from16 v10, p3

    goto :goto_78

    :catchall_40
    move-exception v0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    goto :goto_78

    .line 4895
    :cond_46
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    :goto_4a
    const/4 v0, 0x0

    move/from16 v9, p1

    invoke-direct {v15, v9, v13, v0}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v14

    .line 4896
    .local v14, "delay":I
    iget-object v0, v15, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object/from16 v1, v19

    move-object v2, v15

    move v3, v9

    move v4, v13

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_2c .. :try_end_67} :catchall_77

    move-object v8, v15

    move-object v9, v0

    move/from16 v10, v16

    move/from16 v11, v17

    move-object v1, v12

    move/from16 v12, v18

    move-object/from16 v13, v19

    :try_start_72
    invoke-direct/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4902
    .end local v14    # "delay":I
    monitor-exit v1

    .line 4903
    return-void

    .line 4902
    :catchall_77
    move-exception v0

    :goto_78
    move-object v1, v12

    :goto_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7b

    throw v0

    :catchall_7b
    move-exception v0

    goto :goto_79
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .param p1, "vibrateType"    # I

    .line 2836
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2838
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_22

    .line 2851
    return v1

    .line 2844
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-ne v0, v2, :cond_17

    move v1, v2

    nop

    :cond_17
    return v1

    .line 2841
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_20

    move v1, v2

    nop

    :cond_20
    return v1

    .line 2848
    :pswitch_21
    return v1

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_21
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 10
    .param p1, "reason"    # Ljava/lang/String;

    .line 2628
    const/4 v0, 0x0

    .line 2629
    .local v0, "effect":Landroid/os/VibrationEffect;
    const/4 v1, 0x0

    .line 2630
    .local v1, "ringerMode":I
    const/4 v2, 0x0

    .line 2632
    .local v2, "toastText":I
    const/4 v3, 0x0

    .line 2633
    .local v3, "silenceRingerSetting":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2634
    const v5, 0x11200d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    .line 2635
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "volume_hush_gesture"

    const/4 v7, -0x2

    invoke-static {v4, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2640
    :cond_1e
    packed-switch v3, :pswitch_data_46

    goto :goto_35

    .line 2642
    :pswitch_22
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2643
    const/4 v1, 0x0

    .line 2644
    const v2, 0x10406f7

    .line 2645
    goto :goto_35

    .line 2647
    :pswitch_2c
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2648
    const/4 v1, 0x1

    .line 2649
    const v2, 0x10406f8

    .line 2652
    :goto_35
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;)Z

    .line 2653
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2654
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2655
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_22
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .line 3516
    const-string v0, "AudioService"

    const-string v1, "In startBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    const/16 v0, 0x12

    if-ge p2, v0, :cond_d

    .line 3519
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 3520
    .local v0, "scoAudioMode":I
    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3521
    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .line 3530
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In startBluetoothScoInt(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    const-string/jumbo v0, "startBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_24

    goto :goto_34

    .line 3535
    :cond_24
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 3541
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3542
    .local v1, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    .line 3543
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3544
    return-void

    .line 3533
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v1    # "ident":J
    :cond_34
    :goto_34
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 3525
    const-string v0, "AudioService"

    const-string v1, "In startBluetoothScoVirtualCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 3527
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 7304
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 7305
    :try_start_3
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 7306
    .local v1, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 7307
    monitor-exit v0

    return-object v1

    .line 7308
    .end local v1    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 3548
    const-string v0, "AudioService"

    const-string v1, "In stopBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    const-string/jumbo v0, "stopBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_15

    goto :goto_27

    .line 3553
    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 3557
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3558
    .local v1, "ident":J
    if-eqz v0, :cond_23

    .line 3559
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    .line 3561
    :cond_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3562
    return-void

    .line 3551
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v1    # "ident":J
    :cond_27
    :goto_27
    return-void
.end method

.method public systemReady()V
    .registers 8

    .line 925
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 945
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .registers 3
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;

    .line 8284
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    return v0
.end method

.method public unloadSoundEffects()V
    .registers 8

    .line 3231
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3232
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 7184
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 7185
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8062
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8063
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 8062
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8064
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8065
    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8066
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_5f

    .line 8067
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8068
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8067
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8069
    monitor-exit v0

    return-void

    .line 8071
    :cond_5f
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8073
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8074
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8076
    return-void

    .line 8074
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_29 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 7
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 8501
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 8502
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 8503
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    .line 8504
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    if-nez v1, :cond_3c

    .line 8505
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8506
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8505
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8507
    monitor-exit v0

    return-void

    .line 8509
    :cond_3c
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8511
    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 8512
    return-void

    .line 8511
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 3
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 8273
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 8274
    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 3
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 8234
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 8235
    return-void
.end method
