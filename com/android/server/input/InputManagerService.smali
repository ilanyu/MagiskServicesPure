.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/InputManagerService$LocalService;,
        Lcom/android/server/input/InputManagerService$VibratorToken;,
        Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;,
        Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;,
        Lcom/android/server/input/InputManagerService$InputFilterHost;,
        Lcom/android/server/input/InputManagerService$InputManagerHandler;,
        Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;,
        Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;
    }
.end annotation


# static fields
.field public static final BTN_MOUSE:I = 0x110

.field private static final COVER_OFF:I = 0x6

.field private static final COVER_ON:I = 0x7

.field static final DEBUG:Z = false

.field private static final EXCLUDED_DEVICES_PATH:Ljava/lang/String; = "etc/excluded-input-devices.xml"

.field private static final GLOVE_OFF:I = 0x0

.field private static final GLOVE_ON:I = 0x1

.field private static final INJECTION_TIMEOUT_MILLIS:I = 0x7530

.field private static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field private static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field private static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field private static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field private static final MSG_DELIVER_INPUT_DEVICES_CHANGED:I = 0x1

.field private static final MSG_DELIVER_TABLET_MODE_CHANGED:I = 0x6

.field private static final MSG_RELOAD_DEVICE_ALIASES:I = 0x5

.field private static final MSG_RELOAD_KEYBOARD_LAYOUTS:I = 0x3

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x2

.field private static final MSG_UPDATE_KEYBOARD_LAYOUTS:I = 0x4

.field private static final STYLUS_OFF:I = 0x2

.field private static final STYLUS_ON:I = 0x3

.field public static final SW_CAMERA_LENS_COVER:I = 0x9

.field public static final SW_CAMERA_LENS_COVER_BIT:I = 0x200

.field public static final SW_HEADPHONE_INSERT:I = 0x2

.field public static final SW_HEADPHONE_INSERT_BIT:I = 0x4

.field public static final SW_JACK_BITS:I = 0xd4

.field public static final SW_JACK_PHYSICAL_INSERT:I = 0x7

.field public static final SW_JACK_PHYSICAL_INSERT_BIT:I = 0x80

.field public static final SW_KEYPAD_SLIDE:I = 0xa

.field public static final SW_KEYPAD_SLIDE_BIT:I = 0x400

.field public static final SW_LID:I = 0x0

.field public static final SW_LID_BIT:I = 0x1

.field public static final SW_LINEOUT_INSERT:I = 0x6

.field public static final SW_LINEOUT_INSERT_BIT:I = 0x40

.field public static final SW_MICROPHONE_INSERT:I = 0x4

.field public static final SW_MICROPHONE_INSERT_BIT:I = 0x10

.field public static final SW_TABLET_MODE:I = 0x1

.field public static final SW_TABLET_MODE_BIT:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"

.field public static final VIEWPORT_DEFAULT:I = 0x1

.field public static final VIEWPORT_EXTERNAL:I = 0x2

.field public static final VIEWPORT_VIRTUAL:I = 0x3

.field private static final WAKEUP_OFF:I = 0x4

.field private static final WAKEUP_ON:I = 0x5


# instance fields
.field mBsInputFilter:Landroid/view/IInputFilter;

.field private final mContext:Landroid/content/Context;

.field private final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field private final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field private mFocusedWindow:Landroid/view/IWindow;

.field private mFocusedWindowHasCapture:Z

.field private final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field private mInputDevices:[Landroid/view/InputDevice;

.field private final mInputDevicesChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedPending:Z

.field private mInputDevicesLock:Ljava/lang/Object;

.field mInputFilter:Landroid/view/IInputFilter;

.field mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field final mInputFilterLock:Ljava/lang/Object;

.field private mKeyboardLayoutIntent:Landroid/app/PendingIntent;

.field private mKeyboardLayoutNotificationShown:Z

.field private mNextVibratorTokenValue:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field mPrevInputFilter:Landroid/view/IInputFilter;

.field private final mPtr:J

.field private mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

.field private mSystemReady:Z

.field private final mTabletModeChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletModeLock:Ljava/lang/Object;

.field private final mTempFullKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTabletModeChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUseDevInputEventForAudioJack:Z

.field private mVibratorLock:Ljava/lang/Object;

.field private mVibratorTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/input/InputManagerService$VibratorToken;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field private mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 335
    invoke-direct {p0}, Landroid/hardware/input/IInputManager$Stub;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    .line 161
    new-instance v0, Lcom/android/server/input/PersistentDataStore;

    invoke-direct {v0}, Lcom/android/server/input/PersistentDataStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/InputDevice;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 336
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 337
    new-instance v0, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 339
    nop

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    .line 341
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "doubleTouchGestureEnablePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b2

    .line 348
    move-object v1, v2

    goto :goto_b7

    :cond_b2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_b7
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    .line 350
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    new-instance v3, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 126
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$1000(JLandroid/view/InputEvent;IIIIII)I
    .registers 10
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/InputEvent;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I

    .line 126
    invoke-static/range {p0 .. p8}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onInputDevicesChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/input/InputManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onTabletModeChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/input/InputManagerService;Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;Ljava/util/List;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "x2"    # Landroid/hardware/display/DisplayViewport;
    .param p3, "x3"    # Ljava/util/List;

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;II)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # Landroid/view/InputEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(JZ)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 126
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInteractive(JZ)V

    return-void
.end method

.method static synthetic access$1600(JI)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 126
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeToggleCapsLock(JI)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/input/InputManagerService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 126
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 126
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method static synthetic access$400(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 3
    .param p0, "x0"    # Ljava/util/Locale;
    .param p1, "x1"    # Ljava/util/Locale;

    .line 126
    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # [Landroid/view/InputDevice;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/input/InputManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/input/InputManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 126
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/input/InputManagerService;JZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/input/InputManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/InputManagerService;

    .line 126
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    return-wide v0
.end method

.method private cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 6
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1797
    monitor-enter p1

    .line 1798
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_11

    .line 1799
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v3, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->nativeCancelVibrate(JII)V

    .line 1800
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1802
    :cond_11
    monitor-exit p1

    .line 1803
    return-void

    .line 1802
    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 1844
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 1845
    return v2

    .line 1848
    :cond_c
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1849
    return v2

    .line 1851
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const/4 v1, 0x0

    return v1
.end method

.method private checkInjectEventsPermission(II)Z
    .registers 5
    .param p1, "injectorPid"    # I
    .param p2, "injectorUid"    # I

    .line 2033
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .registers 7
    .param p0, "inputDevices"    # [Landroid/view/InputDevice;
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1161
    array-length v0, p0

    .line 1162
    .local v0, "numDevices":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_16

    .line 1163
    aget-object v3, p0, v2

    .line 1164
    .local v3, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1165
    const/4 v1, 0x1

    return v1

    .line 1162
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1168
    .end local v2    # "i":I
    :cond_16
    return v1
.end method

.method private deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 14
    .param p1, "oldInputDevices"    # [Landroid/view/InputDevice;

    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "numFullKeyboardsAdded":I
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 835
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 838
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_e
    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v2, :cond_14

    .line 840
    monitor-exit v1

    return-void

    .line 842
    :cond_14
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 844
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 845
    .local v3, "numListeners":I
    move v4, v2

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_30

    .line 846
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    .line 847
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    .line 846
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 850
    .end local v4    # "i":I
    :cond_30
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v4, v4

    .line 851
    .local v4, "numDevices":I
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_107

    .line 852
    .local v5, "deviceIdAndGeneration":[I
    move v6, v0

    move v0, v2

    .local v0, "i":I
    .local v6, "numFullKeyboardsAdded":I
    :goto_39
    const/4 v7, 0x1

    if-ge v0, v4, :cond_81

    .line 853
    :try_start_3c
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v8, v8, v0

    .line 854
    .local v8, "inputDevice":Landroid/view/InputDevice;
    mul-int/lit8 v9, v0, 0x2

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v10

    aput v10, v5, v9

    .line 855
    mul-int/lit8 v9, v0, 0x2

    add-int/2addr v9, v7

    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    aput v7, v5, v9

    .line 857
    invoke-virtual {v8}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v7

    if-nez v7, :cond_7a

    invoke-virtual {v8}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 858
    nop

    .line 859
    invoke-virtual {v8}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 858
    invoke-static {p1, v7}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 860
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;
    :try_end_6a
    .catchall {:try_start_3c .. :try_end_6a} :catchall_7d

    add-int/lit8 v9, v6, 0x1

    .local v9, "numFullKeyboardsAdded":I
    :try_start_6c
    invoke-virtual {v7, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_71

    .line 852
    .end local v6    # "numFullKeyboardsAdded":I
    move v6, v9

    goto :goto_7a

    .line 866
    .end local v0    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numDevices":I
    .end local v5    # "deviceIdAndGeneration":[I
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :catchall_71
    move-exception v2

    move v0, v9

    goto/16 :goto_108

    .line 862
    .end local v9    # "numFullKeyboardsAdded":I
    .restart local v0    # "i":I
    .restart local v3    # "numListeners":I
    .restart local v4    # "numDevices":I
    .restart local v5    # "deviceIdAndGeneration":[I
    .restart local v6    # "numFullKeyboardsAdded":I
    .restart local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_75
    :try_start_75
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 866
    .end local v0    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numDevices":I
    .end local v5    # "deviceIdAndGeneration":[I
    :catchall_7d
    move-exception v2

    move v0, v6

    goto/16 :goto_108

    .restart local v3    # "numListeners":I
    .restart local v5    # "deviceIdAndGeneration":[I
    :cond_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_7d

    move v0, v3

    .end local v3    # "numListeners":I
    .local v0, "numListeners":I
    move-object v3, v5

    .line 869
    .end local v5    # "deviceIdAndGeneration":[I
    .local v3, "deviceIdAndGeneration":[I
    move v1, v2

    .local v1, "i":I
    :goto_85
    if-ge v1, v0, :cond_95

    .line 870
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->notifyInputDevicesChanged([I)V

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 873
    .end local v1    # "i":I
    :cond_95
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 876
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    .line 877
    .local v4, "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 878
    .local v5, "numFullKeyboards":I
    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v8

    .line 879
    move v1, v2

    .restart local v1    # "i":I
    :goto_aa
    if-ge v1, v5, :cond_d8

    .line 880
    :try_start_ac
    iget-object v9, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/InputDevice;

    .line 881
    .local v9, "inputDevice":Landroid/view/InputDevice;
    nop

    .line 882
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v10

    .line 883
    .local v10, "layout":Ljava/lang/String;
    if-nez v10, :cond_ce

    .line 884
    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 885
    if-eqz v10, :cond_ce

    .line 886
    nop

    .line 887
    invoke-virtual {v9}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v11

    .line 886
    invoke-virtual {p0, v11, v10}, Lcom/android/server/input/InputManagerService;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 890
    :cond_ce
    if-nez v10, :cond_d3

    .line 891
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    .end local v9    # "inputDevice":Landroid/view/InputDevice;
    .end local v10    # "layout":Ljava/lang/String;
    :cond_d3
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 894
    .end local v1    # "i":I
    :catchall_d6
    move-exception v1

    goto :goto_105

    :cond_d8
    monitor-exit v8
    :try_end_d9
    .catchall {:try_start_ac .. :try_end_d9} :catchall_d6

    .line 896
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_ff

    .line 897
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 898
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_ee

    .line 902
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_ff

    .line 904
    :cond_ee
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputDevice;

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V

    goto :goto_ff

    .line 906
    :cond_f8
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v1, :cond_ff

    .line 907
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V

    .line 910
    :cond_ff
    :goto_ff
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTempFullKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 911
    return-void

    .line 894
    :goto_105
    :try_start_105
    monitor-exit v8
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_d6

    throw v1

    .line 866
    .end local v3    # "deviceIdAndGeneration":[I
    .end local v4    # "keyboardsMissingLayout":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice;>;"
    .end local v5    # "numFullKeyboards":I
    .end local v6    # "numFullKeyboardsAdded":I
    .local v0, "numFullKeyboardsAdded":I
    :catchall_107
    move-exception v2

    :goto_108
    :try_start_108
    monitor-exit v1
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v2
.end method

.method private deliverTabletModeChanged(JZ)V
    .registers 10
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 1079
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1081
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1083
    .local v1, "numListeners":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_22

    .line 1084
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    .line 1085
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    .line 1084
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1087
    .end local v3    # "i":I
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_37

    move v0, v1

    .line 1088
    .end local v1    # "numListeners":I
    .local v0, "numListeners":I
    nop

    .local v2, "i":I
    :goto_25
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_36

    .line 1089
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->notifyTabletModeChanged(JZ)V

    .line 1088
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_25

    .line 1092
    .end local v2    # "i":I
    :cond_36
    return-void

    .line 1087
    .end local v0    # "numListeners":I
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 5
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 2028
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultKeyboardLayout(Landroid/view/InputDevice;)Ljava/lang/String;
    .registers 14
    .param p1, "d"    # Landroid/view/InputDevice;

    .line 914
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 917
    .local v0, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 918
    return-object v2

    .line 920
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v3, Lcom/android/server/input/InputManagerService$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/input/InputManagerService$4;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 942
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 943
    return-object v2

    .line 947
    :cond_2c
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 949
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 950
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_35
    if-ge v4, v2, :cond_73

    .line 951
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    .line 952
    .local v5, "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    .line 953
    .local v6, "locales":Landroid/os/LocaleList;
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v7

    .line 954
    .local v7, "numLocales":I
    move v8, v3

    .local v8, "localeIndex":I
    :goto_46
    if-ge v8, v7, :cond_70

    .line 955
    invoke-virtual {v6, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    .line 956
    .local v9, "locale":Ljava/util/Locale;
    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 957
    invoke-virtual {v9}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 958
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 954
    .end local v9    # "locale":Ljava/util/Locale;
    :cond_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 950
    .end local v5    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v6    # "locales":Landroid/os/LocaleList;
    .end local v7    # "numLocales":I
    .end local v8    # "localeIndex":I
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 963
    .end local v4    # "i":I
    :cond_73
    move v4, v3

    .restart local v4    # "i":I
    :goto_74
    if-ge v4, v2, :cond_a4

    .line 964
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    .line 965
    .restart local v5    # "layout":Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    .line 966
    .restart local v6    # "locales":Landroid/os/LocaleList;
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v7

    .line 967
    .restart local v7    # "numLocales":I
    move v8, v3

    .restart local v8    # "localeIndex":I
    :goto_85
    if-ge v8, v7, :cond_a1

    .line 968
    invoke-virtual {v6, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    .line 969
    .restart local v9    # "locale":Ljava/util/Locale;
    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 970
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 967
    .end local v9    # "locale":Ljava/util/Locale;
    :cond_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_85

    .line 963
    .end local v5    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v6    # "locales":Landroid/os/LocaleList;
    .end local v7    # "numLocales":I
    .end local v8    # "localeIndex":I
    :cond_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 976
    .end local v4    # "i":I
    :cond_a4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 2154
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2156
    return-object v1

    .line 2158
    :cond_8
    return-object v1
.end method

.method private getDoubleTapTimeout()I
    .registers 2

    .line 2101
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private getExcludedDeviceNames()[Ljava/lang/String;
    .registers 9

    .line 2045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2048
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2050
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/excluded-input-devices.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2051
    .local v2, "confFile":Ljava/io/File;
    const/4 v3, 0x0

    move-object v4, v3

    .line 2053
    .local v4, "confreader":Ljava/io/FileReader;
    :try_start_13
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 2054
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v1, v5

    .line 2055
    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2056
    const-string v5, "devices"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2059
    :goto_26
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2060
    const-string v5, "device"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_33} :catch_79
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_4b
    .catchall {:try_start_13 .. :try_end_33} :catchall_49

    if-nez v5, :cond_3c

    .line 2061
    nop

    .line 2073
    :try_start_36
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_7f

    :catch_3a
    move-exception v3

    .line 2074
    goto :goto_7f

    .line 2063
    :cond_3c
    :try_start_3c
    const-string/jumbo v5, "name"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2064
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_48

    .line 2065
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_48} :catch_79
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_48} :catch_4b
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    .line 2067
    .end local v5    # "name":Ljava/lang/String;
    :cond_48
    goto :goto_26

    .line 2073
    :catchall_49
    move-exception v3

    goto :goto_71

    .line 2070
    :catch_4b
    move-exception v3

    .line 2071
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4c
    const-string v5, "InputManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while parsing \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_4c .. :try_end_6b} :catchall_49

    .line 2073
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_7f

    :try_start_6d
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_3a

    goto :goto_7f

    :goto_71
    if-eqz v4, :cond_78

    :try_start_73
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    move-exception v5

    :cond_78
    :goto_78
    throw v3

    .line 2068
    :catch_79
    move-exception v3

    .line 2073
    if-eqz v4, :cond_7f

    :try_start_7c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_3a

    .line 2076
    :cond_7f
    :goto_7f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private getHoverTapSlop()I
    .registers 2

    .line 2096
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result v0

    return v0
.end method

.method private getHoverTapTimeout()I
    .registers 2

    .line 2091
    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatDelay()I
    .registers 2

    .line 2086
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    return v0
.end method

.method private getKeyRepeatTimeout()I
    .registers 2

    .line 2081
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    return v0
.end method

.method private getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 2121
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2122
    return-object v1

    .line 2125
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 2127
    return-object v1

    .line 2130
    :cond_d
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 2131
    .local v2, "result":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/input/InputManagerService$13;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$13;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 2144
    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-nez v3, :cond_39

    .line 2145
    const-string v3, "InputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    return-object v1

    .line 2149
    :cond_39
    return-object v2
.end method

.method private getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 4
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1384
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1388
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v0

    if-nez v0, :cond_19

    .line 1389
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1391
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "vendor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1393
    const-string v1, ",product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1385
    .end local v0    # "bob":Ljava/lang/StringBuilder;
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "identifier and descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3
    .param p0, "languageTags"    # Ljava/lang/String;

    .line 1373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1374
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0

    .line 1376
    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method private getLongPressTimeout()I
    .registers 2

    .line 2106
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getPointerIcon()Landroid/view/PointerIcon;
    .registers 2

    .line 2116
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private getPointerLayer()I
    .registers 2

    .line 2111
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->getPointerLayer()I

    move-result v0

    return v0
.end method

.method private getPointerSpeedSetting()I
    .registers 5

    .line 1669
    const/4 v0, 0x0

    .line 1671
    .local v0, "speed":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 1674
    goto :goto_12

    .line 1673
    :catch_11
    move-exception v1

    .line 1675
    :goto_12
    return v0
.end method

.method private getShowTouchesSetting(I)I
    .registers 6
    .param p1, "defaultValue"    # I

    .line 1737
    move v0, p1

    .line 1739
    .local v0, "result":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_touches"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v1

    .line 1742
    goto :goto_12

    .line 1741
    :catch_11
    move-exception v1

    .line 1743
    :goto_12
    return v0
.end method

.method private getVirtualKeyQuietTimeMillis()I
    .registers 3

    .line 2039
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private handleSwitchKeyboardLayout(II)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 1525
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 1526
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_5b

    .line 1530
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 1531
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    .line 1533
    :try_start_11
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v1, p2}, Lcom/android/server/input/PersistentDataStore;->switchKeyboardLayout(Ljava/lang/String;I)Z

    move-result v3

    .line 1534
    .local v3, "changed":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, v1}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_51

    .line 1537
    .local v4, "keyboardLayoutDescriptor":Ljava/lang/String;
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1538
    nop

    .line 1537
    nop

    .line 1539
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_58

    .line 1541
    if-eqz v3, :cond_5b

    .line 1542
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    if-eqz v2, :cond_33

    .line 1543
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1544
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1546
    :cond_33
    if-eqz v4, :cond_4d

    .line 1547
    invoke-virtual {p0, v4}, Lcom/android/server/input/InputManagerService;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v2

    .line 1548
    .local v2, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    if-eqz v2, :cond_4d

    .line 1549
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1550
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1549
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    .line 1551
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchedKeyboardLayoutToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1555
    .end local v2    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :cond_4d
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "changed":Z
    .end local v4    # "keyboardLayoutDescriptor":Ljava/lang/String;
    goto :goto_5b

    .line 1537
    .restart local v1    # "key":Ljava/lang/String;
    :catchall_51
    move-exception v3

    :try_start_52
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v3

    .line 1539
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_58

    throw v3

    .line 1558
    .end local v1    # "key":Ljava/lang/String;
    :cond_5b
    :goto_5b
    return-void
.end method

.method private hideMissingKeyboardLayoutNotification()V
    .registers 5

    .line 1128
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-eqz v0, :cond_11

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1130
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x13

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1134
    :cond_11
    return-void
.end method

.method private injectInputEventInternal(Landroid/view/InputEvent;II)Z
    .registers 20
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .line 690
    move/from16 v10, p3

    if-eqz p1, :cond_a4

    .line 693
    const/4 v0, 0x1

    if-eqz v10, :cond_16

    const/4 v1, 0x2

    if-eq v10, v1, :cond_16

    if-ne v10, v0, :cond_d

    goto :goto_16

    .line 696
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_16
    :goto_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 700
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 701
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v13, v1

    .line 704
    .local v13, "ident":J
    move-object/from16 v9, p0

    :try_start_25
    iget-wide v1, v9, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/16 v8, 0x7530

    const/high16 v15, 0x8000000

    move-object/from16 v3, p1

    move/from16 v4, p2

    move v5, v11

    move v6, v12

    move v7, v10

    move v9, v15

    invoke-static/range {v1 .. v9}, Lcom/android/server/input/InputManagerService;->nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I

    move-result v1
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_9f

    .line 707
    .local v1, "result":I
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    nop

    .line 707
    nop

    .line 709
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_83

    packed-switch v1, :pswitch_data_ae

    .line 721
    const-string v0, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return v3

    .line 711
    :pswitch_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input event injection from pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " permission denied."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InputManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :pswitch_82
    return v0

    .line 717
    :cond_83
    const-string v0, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input event injection from pid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " timed out."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v3

    .line 707
    .end local v1    # "result":I
    :catchall_9f
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 691
    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "ident":J
    :cond_a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_82
        :pswitch_5f
    .end packed-switch
.end method

.method private interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 2022
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 2010
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method private interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .line 2015
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method private static isCompatibleLocale(Ljava/util/Locale;Ljava/util/Locale;)Z
    .registers 5
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .param p1, "keyboardLocale"    # Ljava/util/Locale;

    .line 981
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 982
    return v1

    .line 985
    :cond_10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 986
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 987
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 988
    return v1

    .line 990
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method private static native nativeCancelVibrate(JII)V
.end method

.method private static native nativeDisableInputDevice(JI)V
.end method

.method private static native nativeDump(J)Ljava/lang/String;
.end method

.method private static native nativeEnableInputDevice(JI)V
.end method

.method private static native nativeGetKeyCodeState(JIII)I
.end method

.method private static native nativeGetScanCodeState(JIII)I
.end method

.method private static native nativeGetSwitchState(JIII)I
.end method

.method private static native nativeHasKeys(JII[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)J
.end method

.method private static native nativeInjectInputEvent(JLandroid/view/InputEvent;IIIIII)I
.end method

.method private static native nativeIsInputDeviceEnabled(JI)Z
.end method

.method private static native nativeMonitor(J)V
.end method

.method private static native nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V
.end method

.method private static native nativeReloadCalibration(J)V
.end method

.method private static native nativeReloadDeviceAliases(J)V
.end method

.method private static native nativeReloadKeyboardLayouts(J)V
.end method

.method private static native nativeReloadPointerIcons(J)V
.end method

.method private static native nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V
.end method

.method private static native nativeSetDebugInput(JI)V
.end method

.method private static native nativeSetDisplayViewport(JIIIIIIIIIIIIILjava/lang/String;)V
.end method

.method private static native nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V
.end method

.method private static native nativeSetInputDispatchMode(JZZ)V
.end method

.method private static native nativeSetInputFilterEnabled(JZ)V
.end method

.method private static native nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V
.end method

.method private static native nativeSetInteractive(JZ)V
.end method

.method private static native nativeSetPointerCapture(JZ)V
.end method

.method private static native nativeSetPointerIconType(JI)V
.end method

.method private static native nativeSetPointerSpeed(JI)V
.end method

.method private static native nativeSetShowTouches(JZ)V
.end method

.method private static native nativeSetSystemUiVisibility(JI)V
.end method

.method private static native nativeSetVirtualDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeSwitchTouchWorkMode(JI)V
.end method

.method private static native nativeToggleCapsLock(JI)V
.end method

.method private static native nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z
.end method

.method private static native nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V
.end method

.method private static native nativeVibrate(JI[JII)V
.end method

.method private notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .registers 6
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1988
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyConfigurationChanged(J)V
    .registers 4
    .param p1, "whenNanos"    # J

    .line 1932
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyConfigurationChanged()V

    .line 1933
    return-void
.end method

.method private notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .registers 3
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .line 1982
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V

    .line 1983
    return-void
.end method

.method private notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .registers 6
    .param p1, "inputDevices"    # [Landroid/view/InputDevice;

    .line 1937
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1938
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_15

    .line 1939
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    .line 1940
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1941
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1944
    :cond_15
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    .line 1945
    monitor-exit v0

    .line 1946
    return-void

    .line 1945
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private notifySwitch(JII)V
    .registers 10
    .param p1, "whenNanos"    # J
    .param p3, "switchValues"    # I
    .param p4, "switchMask"    # I

    .line 1955
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 1956
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 1957
    .local v0, "lidOpen":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyLidSwitchChanged(JZ)V

    .line 1960
    .end local v0    # "lidOpen":Z
    :cond_12
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_22

    .line 1961
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 1962
    .local v0, "lensCovered":Z
    :goto_1d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-interface {v3, p1, p2, v0}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 1965
    .end local v0    # "lensCovered":Z
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_2f

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_2f

    .line 1966
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->notifyWiredAccessoryChanged(JII)V

    .line 1970
    :cond_2f
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_5a

    .line 1971
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1972
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v3, -0x1

    and-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1973
    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1974
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_4a

    move v1, v2

    nop

    :cond_4a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1975
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1976
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1978
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_5a
    return-void
.end method

.method private onInputDevicesChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 825
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onTabletModeChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 1072
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1074
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private registerAccessibilityLargePointerSettingObserver()V
    .registers 6

    .line 1726
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_large_pointer_icon"

    .line 1727
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$12;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$12;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1726
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1734
    return-void
.end method

.method private registerPointerSpeedSettingObserver()V
    .registers 6

    .line 1658
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    .line 1659
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$9;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$9;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1658
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1666
    return-void
.end method

.method private registerShowTouchesSettingObserver()V
    .registers 6

    .line 1686
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_touches"

    .line 1687
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$10;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1686
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1694
    return-void
.end method

.method private registerTouchWakeupModeSettingObserver()V
    .registers 6

    .line 1714
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    .line 1715
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$11;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/input/InputManagerService$11;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V

    .line 1714
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1722
    return-void
.end method

.method private reloadDeviceAliases()V
    .registers 3

    .line 441
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadDeviceAliases(J)V

    .line 442
    return-void
.end method

.method private reloadKeyboardLayouts()V
    .registers 3

    .line 434
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeReloadKeyboardLayouts(J)V

    .line 435
    return-void
.end method

.method private setDisplayViewport(ILandroid/hardware/display/DisplayViewport;)V
    .registers 22
    .param p1, "viewportType"    # I
    .param p2, "viewport"    # Landroid/hardware/display/DisplayViewport;

    .line 462
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v5, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    iget v6, v0, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v12, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    iget v15, v0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iget v4, v0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iget-object v1, v0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    move/from16 v16, v4

    move/from16 v4, p1

    move-object/from16 v17, v1

    invoke-static/range {v2 .. v17}, Lcom/android/server/input/InputManagerService;->nativeSetDisplayViewport(JIIIIIIIIIIIIILjava/lang/String;)V

    .line 469
    return-void
.end method

.method private setDisplayViewportsInternal(Landroid/hardware/display/DisplayViewport;Landroid/hardware/display/DisplayViewport;Ljava/util/List;)V
    .registers 7
    .param p1, "defaultViewport"    # Landroid/hardware/display/DisplayViewport;
    .param p2, "externalTouchViewport"    # Landroid/hardware/display/DisplayViewport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayViewport;",
            "Landroid/hardware/display/DisplayViewport;",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p3, "virtualTouchViewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_8

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ILandroid/hardware/display/DisplayViewport;)V

    .line 451
    :cond_8
    iget-boolean v0, p2, Landroid/hardware/display/DisplayViewport;->valid:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_11

    .line 452
    invoke-direct {p0, v1, p2}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ILandroid/hardware/display/DisplayViewport;)V

    goto :goto_18

    .line 453
    :cond_11
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-eqz v0, :cond_18

    .line 454
    invoke-direct {p0, v1, p1}, Lcom/android/server/input/InputManagerService;->setDisplayViewport(ILandroid/hardware/display/DisplayViewport;)V

    .line 457
    :cond_18
    :goto_18
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/hardware/display/DisplayViewport;

    .line 458
    invoke-interface {p3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/DisplayViewport;

    .line 457
    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSetVirtualDisplayViewports(J[Landroid/hardware/display/DisplayViewport;)V

    .line 459
    return-void
.end method

.method private setPointerCapture(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1597
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    .line 1598
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerCapture(JZ)V

    .line 1599
    return-void
.end method

.method private setPointerSpeedUnchecked(I)V
    .registers 4
    .param p1, "speed"    # I

    .line 1652
    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1654
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerSpeed(JI)V

    .line 1655
    return-void
.end method

.method private showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    .registers 10
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 1096
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    if-nez v0, :cond_75

    .line 1097
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_16

    .line 1099
    const-string v1, "input_device_identifier"

    invoke-virtual {p1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1101
    :cond_16
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1104
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1107
    .local v1, "keyboardLayoutIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1108
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1040618

    .line 1110
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1040617

    .line 1112
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1114
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x10804e1

    .line 1115
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106016f

    .line 1116
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1118
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1119
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const/16 v6, 0x13

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1122
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z

    .line 1124
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keyboardLayoutIntent":Landroid/app/PendingIntent;
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_75
    return-void
.end method

.method private updateKeyboardLayouts()V
    .registers 5

    .line 1139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1140
    .local v0, "availableKeyboardLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1147
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1149
    :try_start_10
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_20

    .line 1151
    :try_start_15
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1152
    nop

    .line 1153
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_27

    .line 1156
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V

    .line 1157
    return-void

    .line 1151
    :catchall_20
    move-exception v2

    :try_start_21
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v2

    .line 1153
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 14
    .param p1, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1255
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1256
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 1257
    .local v7, "intent":Landroid/content/Intent;
    const v1, 0xc0080

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1260
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1261
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v11, v9, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1262
    .local v11, "priority":I
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1263
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v11    # "priority":I
    goto :goto_19

    .line 1264
    :cond_34
    return-void
.end method

.method private visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 11
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    .line 1268
    invoke-static {p1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;

    move-result-object v0

    .line 1269
    .local v0, "d":Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;
    if-eqz v0, :cond_27

    .line 1270
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1272
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0xc0080

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1277
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_25} :catch_26

    .line 1279
    .end local v4    # "receiver":Landroid/content/pm/ActivityInfo;
    goto :goto_27

    .line 1278
    :catch_26
    move-exception v2

    .line 1281
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_27
    :goto_27
    return-void
.end method

.method private visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V
    .registers 29
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "receiver"    # Landroid/content/pm/ActivityInfo;
    .param p3, "keyboardName"    # Ljava/lang/String;
    .param p4, "requestedPriority"    # I
    .param p5, "visitor"    # Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1285
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1286
    .local v4, "metaData":Landroid/os/Bundle;
    if-nez v4, :cond_b

    .line 1287
    return-void

    .line 1290
    :cond_b
    const-string v0, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1291
    .local v5, "configResId":I
    if-nez v5, :cond_36

    .line 1292
    const-string v0, "InputManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-void

    .line 1297
    :cond_36
    invoke-virtual {v2, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1298
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    if-eqz v6, :cond_42

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_40
    move-object v10, v0

    goto :goto_45

    :cond_42
    const-string v0, ""

    goto :goto_40

    .line 1300
    .local v10, "collection":Ljava/lang/String;
    :goto_45
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v15, 0x1

    and-int/2addr v0, v15

    const/4 v9, 0x0

    if-eqz v0, :cond_52

    .line 1301
    move/from16 v0, p4

    .line 1303
    .local v0, "priority":I
    move v11, v0

    goto :goto_53

    .line 1303
    .end local v0    # "priority":I
    :cond_52
    move v11, v9

    .line 1307
    .local v11, "priority":I
    :goto_53
    :try_start_53
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    move-object v7, v0

    .line 1308
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5e} :catch_1de

    move-object v8, v0

    .line 1310
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5f
    const-string/jumbo v0, "keyboard-layouts"

    invoke-static {v8, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1313
    :goto_65
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1314
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_1cd

    move-object v14, v0

    .line 1315
    .local v14, "element":Ljava/lang/String;
    if-nez v14, :cond_8a

    .line 1316
    nop

    .line 1363
    .end local v14    # "element":Ljava/lang/String;
    :try_start_70
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_7f

    .line 1364
    nop

    .line 1368
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 1369
    move-object/from16 v7, p5

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    goto/16 :goto_209

    .line 1365
    :catch_7f
    move-exception v0

    move-object/from16 v7, p5

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    goto/16 :goto_1e7

    .line 1318
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "element":Ljava/lang/String;
    :cond_8a
    :try_start_8a
    const-string/jumbo v0, "keyboard-layout"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 1319
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v7, v8, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_1cd

    move-object v13, v0

    .line 1322
    .local v13, "a":Landroid/content/res/TypedArray;
    :try_start_9a
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 1326
    .local v16, "label":Ljava/lang/String;
    const/4 v12, 0x2

    invoke-virtual {v13, v12, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 1329
    .local v12, "keyboardLayoutResId":I
    const/4 v9, 0x3

    invoke-virtual {v13, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1331
    .local v9, "languageTags":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/input/InputManagerService;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v18
    :try_end_b2
    .catchall {:try_start_9a .. :try_end_b2} :catchall_171

    move v15, v12

    move-object/from16 v12, v18

    .line 1332
    .local v12, "locales":Landroid/os/LocaleList;
    .local v15, "keyboardLayoutResId":I
    const/4 v1, 0x5

    move-object/from16 v19, v4

    const/4 v4, -0x1

    .line 1332
    .end local v4    # "metaData":Landroid/os/Bundle;
    .local v19, "metaData":Landroid/os/Bundle;
    :try_start_b9
    invoke-virtual {v13, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1
    :try_end_bd
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_165

    move-object v4, v13

    move v13, v1

    .line 1334
    .local v4, "a":Landroid/content/res/TypedArray;
    .local v13, "vid":I
    const/4 v1, 0x4

    move/from16 v20, v5

    const/4 v5, -0x1

    :try_start_c3
    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_15c

    .line 1334
    .end local v5    # "configResId":I
    .local v20, "configResId":I
    move-object v5, v14

    move v14, v1

    .line 1337
    .local v5, "element":Ljava/lang/String;
    .local v14, "pid":I
    if-eqz v0, :cond_128

    if-eqz v16, :cond_128

    if-nez v15, :cond_db

    .line 1338
    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move-object/from16 v17, v9

    const/16 v18, 0x0

    move-object/from16 v7, p5

    goto/16 :goto_132

    .line 1343
    :cond_db
    :try_start_db
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_dd
    .catchall {:try_start_db .. :try_end_dd} :catchall_11f

    move-object/from16 v21, v6

    :try_start_df
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1343
    .end local v6    # "receiverLabel":Ljava/lang/CharSequence;
    .local v21, "receiverLabel":Ljava/lang/CharSequence;
    invoke-static {v1, v6, v0}, Lcom/android/server/input/InputManagerService$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e5
    .catchall {:try_start_df .. :try_end_e5} :catchall_118

    move-object v6, v8

    move-object v8, v1

    .line 1345
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .local v8, "descriptor":Ljava/lang/String;
    if-eqz v3, :cond_fd

    :try_start_e9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_f7

    if-eqz v1, :cond_f0

    goto :goto_fd

    .line 1354
    .end local v0    # "name":Ljava/lang/String;
    .end local v8    # "descriptor":Ljava/lang/String;
    .end local v9    # "languageTags":Ljava/lang/String;
    .end local v12    # "locales":Landroid/os/LocaleList;
    .end local v13    # "vid":I
    .end local v14    # "pid":I
    .end local v15    # "keyboardLayoutResId":I
    .end local v16    # "label":Ljava/lang/String;
    :cond_f0
    move-object v3, v7

    const/16 v18, 0x0

    move-object/from16 v7, p5

    goto/16 :goto_154

    :catchall_f7
    move-exception v0

    move-object v3, v7

    .line 1354
    .end local v7    # "resources":Landroid/content/res/Resources;
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_f9
    move-object/from16 v7, p5

    goto/16 :goto_17e

    .line 1346
    .end local v3    # "resources":Landroid/content/res/Resources;
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "descriptor":Ljava/lang/String;
    .restart local v9    # "languageTags":Ljava/lang/String;
    .restart local v12    # "locales":Landroid/os/LocaleList;
    .restart local v13    # "vid":I
    .restart local v14    # "pid":I
    .restart local v15    # "keyboardLayoutResId":I
    .restart local v16    # "label":Ljava/lang/String;
    :cond_fd
    :goto_fd
    :try_start_fd
    new-instance v1, Landroid/hardware/input/KeyboardLayout;
    :try_end_ff
    .catchall {:try_start_fd .. :try_end_ff} :catchall_112

    move-object v3, v7

    move-object v7, v1

    .line 1346
    .end local v7    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    move-object/from16 v17, v9

    const/16 v18, 0x0

    move-object/from16 v9, v16

    .line 1346
    .end local v9    # "languageTags":Ljava/lang/String;
    .local v17, "languageTags":Ljava/lang/String;
    :try_start_107
    invoke-direct/range {v7 .. v14}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_110

    .line 1349
    .local v1, "layout":Landroid/hardware/input/KeyboardLayout;
    move-object/from16 v7, p5

    :try_start_10c
    invoke-interface {v7, v3, v15, v1}, Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    .line 1349
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "layout":Landroid/hardware/input/KeyboardLayout;
    .end local v8    # "descriptor":Ljava/lang/String;
    .end local v12    # "locales":Landroid/os/LocaleList;
    .end local v13    # "vid":I
    .end local v14    # "pid":I
    .end local v15    # "keyboardLayoutResId":I
    .end local v16    # "label":Ljava/lang/String;
    .end local v17    # "languageTags":Ljava/lang/String;
    goto :goto_154

    .line 1354
    :catchall_110
    move-exception v0

    goto :goto_f9

    .line 1354
    .end local v3    # "resources":Landroid/content/res/Resources;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    :catchall_112
    move-exception v0

    move-object v3, v7

    move-object/from16 v7, p5

    .line 1354
    .end local v7    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto/16 :goto_17e

    .line 1354
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_118
    move-exception v0

    move-object v3, v7

    move-object v6, v8

    move-object/from16 v7, p5

    .line 1354
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto/16 :goto_17e

    .line 1354
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_11f
    move-exception v0

    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move-object/from16 v7, p5

    .line 1354
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    goto/16 :goto_17e

    .line 1338
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v0    # "name":Ljava/lang/String;
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "languageTags":Ljava/lang/String;
    .restart local v12    # "locales":Landroid/os/LocaleList;
    .restart local v13    # "vid":I
    .restart local v14    # "pid":I
    .restart local v15    # "keyboardLayoutResId":I
    .restart local v16    # "label":Ljava/lang/String;
    :cond_128
    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move-object/from16 v17, v9

    const/16 v18, 0x0

    move-object/from16 v7, p5

    .line 1338
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "languageTags":Ljava/lang/String;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "languageTags":Ljava/lang/String;
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    :goto_132
    const-string v1, "InputManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_10c .. :try_end_154} :catchall_15a

    .line 1354
    .end local v0    # "name":Ljava/lang/String;
    .end local v12    # "locales":Landroid/os/LocaleList;
    .end local v13    # "vid":I
    .end local v14    # "pid":I
    .end local v15    # "keyboardLayoutResId":I
    .end local v16    # "label":Ljava/lang/String;
    .end local v17    # "languageTags":Ljava/lang/String;
    :goto_154
    :try_start_154
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1355
    nop

    .line 1356
    .end local v4    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_1b9

    .line 1354
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    :catchall_15a
    move-exception v0

    goto :goto_17e

    .line 1354
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v5    # "element":Ljava/lang/String;
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .local v14, "element":Ljava/lang/String;
    :catchall_15c
    move-exception v0

    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move-object v5, v14

    move-object/from16 v7, p5

    .line 1354
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "element":Ljava/lang/String;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v5    # "element":Ljava/lang/String;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    goto :goto_17e

    .line 1354
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v20    # "configResId":I
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .local v5, "configResId":I
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .local v13, "a":Landroid/content/res/TypedArray;
    .restart local v14    # "element":Ljava/lang/String;
    :catchall_165
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v7, p5

    .line 1354
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "element":Ljava/lang/String;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    .local v5, "element":Ljava/lang/String;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "configResId":I
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    goto :goto_17e

    .line 1354
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v19    # "metaData":Landroid/os/Bundle;
    .end local v20    # "configResId":I
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v13    # "a":Landroid/content/res/TypedArray;
    .restart local v14    # "element":Ljava/lang/String;
    :catchall_171
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v7, p5

    .line 1354
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "element":Ljava/lang/String;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v4, "a":Landroid/content/res/TypedArray;
    .local v5, "element":Ljava/lang/String;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "metaData":Landroid/os/Bundle;
    .restart local v20    # "configResId":I
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    :goto_17e
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1357
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v19    # "metaData":Landroid/os/Bundle;
    .end local v20    # "configResId":I
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .local v4, "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "element":Ljava/lang/String;
    :cond_182
    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move/from16 v18, v9

    move-object v5, v14

    move-object/from16 v7, p5

    .line 1357
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "element":Ljava/lang/String;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v5, "element":Ljava/lang/String;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "metaData":Landroid/os/Bundle;
    .restart local v20    # "configResId":I
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unrecognized element \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' in keyboard layout resource from receiver "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catchall {:try_start_154 .. :try_end_1b9} :catchall_1cb

    .line 1361
    .end local v5    # "element":Ljava/lang/String;
    :goto_1b9
    nop

    .line 1313
    move-object v7, v3

    move-object v8, v6

    move/from16 v9, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v15, 0x1

    goto/16 :goto_65

    .line 1363
    :catchall_1cb
    move-exception v0

    goto :goto_1d8

    .line 1363
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v19    # "metaData":Landroid/os/Bundle;
    .end local v20    # "configResId":I
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .local v5, "configResId":I
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_1cd
    move-exception v0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object v3, v7

    move-object v6, v8

    move-object/from16 v7, p5

    .line 1363
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v19    # "metaData":Landroid/os/Bundle;
    .restart local v20    # "configResId":I
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    :goto_1d8
    :try_start_1d8
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1dc} :catch_1dc

    .line 1365
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_1dc
    move-exception v0

    goto :goto_1e7

    .line 1365
    .end local v19    # "metaData":Landroid/os/Bundle;
    .end local v20    # "configResId":I
    .end local v21    # "receiverLabel":Ljava/lang/CharSequence;
    .restart local v4    # "metaData":Landroid/os/Bundle;
    .restart local v5    # "configResId":I
    .local v6, "receiverLabel":Ljava/lang/CharSequence;
    :catch_1de
    move-exception v0

    move-object/from16 v7, p5

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    .line 1366
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v5    # "configResId":I
    .end local v6    # "receiverLabel":Ljava/lang/CharSequence;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v19    # "metaData":Landroid/os/Bundle;
    .restart local v20    # "configResId":I
    .restart local v21    # "receiverLabel":Ljava/lang/CharSequence;
    :goto_1e7
    const-string v1, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1369
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_209
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1459
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string v1, "addKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1463
    if-eqz p2, :cond_5c

    .line 1467
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1470
    :try_start_13
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1471
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_30

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1472
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1474
    :cond_30
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->addKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1476
    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1475
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 1477
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_4a
    .catchall {:try_start_13 .. :try_end_4a} :catchall_52

    .line 1480
    .end local v2    # "oldLayout":Ljava/lang/String;
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1481
    nop

    .line 1482
    monitor-exit v1

    .line 1483
    return-void

    .line 1480
    :catchall_52
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v2

    .line 1482
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_59

    throw v2

    .line 1464
    .end local v0    # "key":Ljava/lang/String;
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_65
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelVibrate(ILandroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1778
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1779
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1780
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-eqz v1, :cond_17

    iget v2, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v2, p1, :cond_12

    goto :goto_17

    .line 1783
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 1785
    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1786
    return-void

    .line 1781
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    return-void

    .line 1783
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public createInputForwarder(I)Landroid/app/IInputForwarder;
    .registers 8
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1869
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string v1, "createInputForwarder()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1873
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1874
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1875
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_32

    .line 1879
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1880
    .local v2, "callingUid":I
    invoke-virtual {v1}, Landroid/view/Display;->getOwnerUid()I

    move-result v3

    .line 1881
    .local v3, "displayOwnerUid":I
    if-ne v2, v3, :cond_2a

    .line 1886
    new-instance v4, Lcom/android/server/input/InputForwarder;

    invoke-direct {v4, p1}, Lcom/android/server/input/InputForwarder;-><init>(I)V

    return-object v4

    .line 1882
    :cond_2a
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Only owner of the display can forward input events to it."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1876
    .end local v2    # "callingUid":I
    .end local v3    # "displayOwnerUid":I
    :cond_32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create input forwarder for non-existent displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1871
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "display":Landroid/view/Display;
    :cond_49
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 764
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 768
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeDisableInputDevice(JI)V

    .line 769
    return-void

    .line 766
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1820
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1822
    :cond_b
    const-string v0, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1824
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_54

    const-string v0, "debuglog"

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1826
    :try_start_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open Reader and Dispatcher debuglog, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    aget-object v0, p3, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1828
    .local v0, "logLevel":I
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, v0}, Lcom/android/server/input/InputManagerService;->nativeSetDebugInput(JI)V
    :try_end_4c
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_4c} :catch_4d

    .line 1829
    return-void

    .line 1830
    .end local v0    # "logLevel":I
    :catch_4d
    move-exception v0

    .line 1831
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "open Reader and Dispatcher debuglog, ClassCastException!!!"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_54
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeDump(J)Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, "dumpStr":Ljava/lang/String;
    if-eqz v0, :cond_5f

    .line 1838
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    :cond_5f
    return-void
.end method

.method public enableInputDevice(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 754
    const-string v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 758
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeEnableInputDevice(JI)V

    .line 759
    return-void

    .line 756
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final filterInputEvent(Landroid/view/InputEvent;I)Z
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 1994
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1995
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_11

    .line 1997
    :try_start_7
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    .line 2000
    goto :goto_e

    .line 1998
    :catch_d
    move-exception v1

    .line 2001
    :goto_e
    const/4 v1, 0x0

    :try_start_f
    monitor-exit v0

    return v1

    .line 2003
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 2004
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 2005
    const/4 v0, 0x1

    return v0

    .line 2003
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1400
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1402
    const/4 v2, 0x0

    .line 1404
    .local v2, "layout":Ljava/lang/String;
    :try_start_8
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1405
    if-nez v2, :cond_26

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1407
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1413
    :cond_26
    monitor-exit v1

    return-object v2

    .line 1414
    .end local v2    # "layout":Ljava/lang/String;
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1445
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1447
    :try_start_7
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1448
    .local v2, "layouts":[Ljava/lang/String;
    if-eqz v2, :cond_12

    array-length v3, v2

    if-nez v3, :cond_27

    .line 1449
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1450
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1452
    :cond_27
    monitor-exit v1

    return-object v2

    .line 1453
    .end local v2    # "layouts":[Ljava/lang/String;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "deviceId"    # I

    .line 733
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 735
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_18

    .line 736
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v3, v3, v2

    .line 737
    .local v3, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_15

    .line 738
    monitor-exit v0

    return-object v3

    .line 735
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 741
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_18
    monitor-exit v0

    .line 742
    const/4 v0, 0x0

    return-object v0

    .line 741
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 777
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    .line 779
    .local v1, "count":I
    new-array v2, v1, [I

    .line 780
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_18

    .line 781
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    .line 780
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 783
    .end local v3    # "i":I
    :cond_18
    monitor-exit v0

    return-object v2

    .line 784
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getInputDevices()[Landroid/view/InputDevice;
    .registers 3

    .line 792
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object v1

    .line 794
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getKeyCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCode"    # I

    .line 481
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetKeyCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 7
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1235
    if-eqz p1, :cond_30

    .line 1239
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 1240
    .local v0, "result":[Landroid/hardware/input/KeyboardLayout;
    new-instance v1, Lcom/android/server/input/InputManagerService$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$8;-><init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1247
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_2d

    .line 1248
    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_2d
    aget-object v1, v0, v1

    return-object v1

    .line 1236
    .end local v0    # "result":[Landroid/hardware/input/KeyboardLayout;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v1, Lcom/android/server/input/InputManagerService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/input/InputManagerService$6;-><init>(Lcom/android/server/input/InputManagerService;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/input/KeyboardLayout;

    return-object v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 12
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1187
    nop

    .line 1188
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v6

    .line 1189
    .local v6, "enabledLayoutDescriptors":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v0

    .line 1191
    .local v7, "enabledLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1192
    .local v8, "potentialLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/input/KeyboardLayout;>;"
    new-instance v9, Lcom/android/server/input/InputManagerService$7;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;[Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/input/InputDeviceIdentifier;Ljava/util/ArrayList;)V

    invoke-direct {p0, v9}, Lcom/android/server/input/InputManagerService;->visitAllKeyboardLayouts(Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;)V

    .line 1223
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1224
    .local v0, "enabledLayoutSize":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1225
    .local v1, "potentialLayoutSize":I
    add-int v2, v0, v1

    new-array v2, v2, [Landroid/hardware/input/KeyboardLayout;

    .line 1226
    .local v2, "layouts":[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1227
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    if-ge v3, v1, :cond_3f

    .line 1228
    add-int v4, v0, v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    aput-object v5, v2, v4

    .line 1227
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1230
    .end local v3    # "i":I
    :cond_3f
    return-object v2
.end method

.method public getScanCodeState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .line 494
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetScanCodeState(JIII)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "switchCode"    # I

    .line 507
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->nativeGetSwitchState(JIII)I

    move-result v0

    return v0
.end method

.method public getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .registers 5
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .line 996
    if-eqz p1, :cond_10

    .line 1000
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1001
    :try_start_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/PersistentDataStore;->getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1002
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1

    .line 997
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasKeys(II[I[Z)Z
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "keyExists"    # [Z

    .line 524
    if-eqz p3, :cond_1c

    .line 527
    if-eqz p4, :cond_13

    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_13

    .line 532
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeHasKeys(JII[I[Z)Z

    move-result v0

    return v0

    .line 528
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/input/InputManagerService;->injectInputEventInternal(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public isInTabletMode()I
    .registers 4

    .line 1036
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1040
    const/4 v0, -0x1

    const/16 v1, -0x100

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    return v0

    .line 1038
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 4
    .param p1, "deviceId"    # I

    .line 748
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeIsInputDeviceEnabled(JI)Z

    move-result v0

    return v0
.end method

.method public monitor()V
    .registers 3

    .line 1862
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_a

    .line 1863
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeMonitor(J)V

    .line 1864
    return-void

    .line 1862
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 9
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .line 541
    if-eqz p1, :cond_18

    .line 545
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 546
    .local v0, "inputChannels":[Landroid/view/InputChannel;
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v3, 0x0

    aget-object v4, v0, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v2, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 547
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 548
    aget-object v1, v0, v6

    return-object v1

    .line 542
    .end local v0    # "inputChannels":[Landroid/view/InputChannel;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannelName must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .registers 5
    .param p1, "v"    # Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1789
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1790
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 1793
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1794
    return-void

    .line 1791
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V
    .registers 6
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .line 559
    if-eqz p1, :cond_9

    .line 563
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/input/InputManagerService;->nativeRegisterInputChannel(JLandroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;Z)V

    .line 564
    return-void

    .line 560
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/IInputDevicesChangedListener;

    .line 799
    if-eqz p1, :cond_38

    .line 803
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 805
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 810
    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 813
    .local v2, "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 814
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_26
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 818
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 820
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 821
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    monitor-exit v0

    .line 822
    return-void

    .line 815
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    :catch_26
    move-exception v3

    .line 817
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 806
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2d
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    .end local v1    # "callingPid":I
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw v1

    .line 800
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/ITabletModeChangedListener;

    .line 1045
    const-string v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1049
    if-eqz p1, :cond_43

    .line 1053
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1054
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1055
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_38

    .line 1059
    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_40

    .line 1062
    .local v2, "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :try_start_21
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1063
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_31
    .catchall {:try_start_21 .. :try_end_29} :catchall_40

    .line 1066
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 1067
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1068
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    monitor-exit v0

    .line 1069
    return-void

    .line 1064
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    :catch_31
    move-exception v3

    .line 1065
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1056
    .end local v2    # "record":Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_38
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1068
    .end local v1    # "callingPid":I
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_40

    throw v1

    .line 1050
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 9
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1488
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "removeKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1492
    if-eqz p2, :cond_72

    .line 1496
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1499
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1500
    .local v2, "oldLayout":Ljava/lang/String;
    if-nez v2, :cond_31

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1501
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1503
    :cond_31
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1504
    .local v3, "removed":Z
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1506
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/input/PersistentDataStore;->removeKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1509
    :cond_4c
    if-eqz v3, :cond_60

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 1510
    invoke-virtual {v4, v0}, Lcom/android/server/input/PersistentDataStore;->getCurrentKeyboardLayout(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1509
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 1511
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_60
    .catchall {:try_start_14 .. :try_end_60} :catchall_68

    .line 1514
    .end local v2    # "oldLayout":Ljava/lang/String;
    .end local v3    # "removed":Z
    :cond_60
    :try_start_60
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1515
    nop

    .line 1516
    monitor-exit v1

    .line 1517
    return-void

    .line 1514
    :catchall_68
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v2

    .line 1516
    :catchall_6f
    move-exception v2

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_6f

    throw v2

    .line 1493
    .end local v0    # "key":Ljava/lang/String;
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1490
    :cond_7b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 1579
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_d

    goto :goto_3b

    .line 1584
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    if-ne v0, p2, :cond_30

    .line 1585
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPointerCapture: already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_23

    const-string v2, "enabled"

    goto :goto_25

    :cond_23
    const-string v2, "disabled"

    :goto_25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return-void

    .line 1588
    :cond_30
    invoke-direct {p0, p2}, Lcom/android/server/input/InputManagerService;->setPointerCapture(Z)V

    .line 1590
    :try_start_33
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    invoke-interface {v0, p2}, Landroid/view/IWindow;->dispatchPointerCaptureChanged(Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 1593
    goto :goto_3a

    .line 1591
    :catch_39
    move-exception v0

    .line 1594
    :goto_3a
    return-void

    .line 1580
    :cond_3b
    :goto_3b
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPointerCapture called for a window that has no focus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return-void
.end method

.method public setBsInputFilter(Landroid/view/IInputFilter;)V
    .registers 7
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .line 583
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 585
    .local v1, "oldFilter":Landroid/view/IInputFilter;
    if-ne v1, p1, :cond_9

    .line 586
    monitor-exit v0

    return-void

    .line 589
    :cond_9
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mBsInputFilter:Landroid/view/IInputFilter;

    if-nez v2, :cond_11

    if-nez p1, :cond_11

    .line 590
    monitor-exit v0

    return-void

    .line 593
    :cond_11
    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 594
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 595
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 596
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_5e

    .line 598
    :try_start_1d
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_5e

    .line 601
    goto :goto_22

    .line 599
    :catch_21
    move-exception v3

    .line 604
    :cond_22
    :goto_22
    if-eqz p1, :cond_39

    .line 605
    :try_start_24
    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mPrevInputFilter:Landroid/view/IInputFilter;

    .line 606
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 607
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mBsInputFilter:Landroid/view/IInputFilter;

    .line 608
    new-instance v3, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_5e

    .line 610
    :try_start_31
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v2}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_37
    .catchall {:try_start_31 .. :try_end_36} :catchall_5e

    goto :goto_38

    .line 611
    :catch_37
    move-exception v2

    .line 613
    :goto_38
    goto :goto_52

    .line 615
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mPrevInputFilter:Landroid/view/IInputFilter;

    move-object p1, v3

    .line 616
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mPrevInputFilter:Landroid/view/IInputFilter;

    .line 617
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mBsInputFilter:Landroid/view/IInputFilter;

    .line 619
    if-eqz p1, :cond_52

    .line 620
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 621
    new-instance v3, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_4b
    .catchall {:try_start_39 .. :try_end_4b} :catchall_5e

    .line 623
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v2}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51
    .catchall {:try_start_4b .. :try_end_50} :catchall_5e

    .line 626
    goto :goto_52

    .line 624
    :catch_51
    move-exception v2

    .line 630
    :cond_52
    :goto_52
    :try_start_52
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz p1, :cond_58

    const/4 v4, 0x1

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V

    .line 631
    .end local v1    # "oldFilter":Landroid/view/IInputFilter;
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 7
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1420
    const-string v0, "android.permission.SET_KEYBOARD_LAYOUT"

    const-string/jumbo v1, "setCurrentKeyboardLayoutForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1424
    if-eqz p2, :cond_34

    .line 1428
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->getLayoutDescriptor(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 1431
    :try_start_14
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/input/PersistentDataStore;->setCurrentKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1435
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_2a

    .line 1438
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1439
    nop

    .line 1440
    monitor-exit v1

    .line 1441
    return-void

    .line 1438
    :catchall_2a
    move-exception v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v2

    .line 1440
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_31

    throw v2

    .line 1425
    .end local v0    # "key":Ljava/lang/String;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_3d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_KEYBOARD_LAYOUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 4
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 1814
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetCustomPointerIcon(JLandroid/view/PointerIcon;)V

    .line 1816
    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V
    .registers 4
    .param p1, "application"    # Lcom/android/server/input/InputApplicationHandle;

    .line 1574
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetFocusedApplication(JLcom/android/server/input/InputApplicationHandle;)V

    .line 1575
    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "frozen"    # Z

    .line 1602
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeSetInputDispatchMode(JZZ)V

    .line 1603
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 7
    .param p1, "filter"    # Landroid/view/IInputFilter;

    .line 646
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 648
    .local v1, "oldFilter":Landroid/view/IInputFilter;
    if-ne v1, p1, :cond_9

    .line 649
    monitor-exit v0

    return-void

    .line 653
    :cond_9
    const/4 v2, 0x0

    if-nez p1, :cond_14

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mBsInputFilter:Landroid/view/IInputFilter;

    if-eqz v3, :cond_14

    .line 654
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mPrevInputFilter:Landroid/view/IInputFilter;

    .line 655
    monitor-exit v0

    return-void

    .line 659
    :cond_14
    if-eqz v1, :cond_24

    .line 660
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 661
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$InputFilterHost;->disconnectLocked()V

    .line 662
    iput-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_42

    .line 664
    :try_start_1f
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_42

    .line 667
    goto :goto_24

    .line 665
    :catch_23
    move-exception v3

    .line 670
    :cond_24
    :goto_24
    if-eqz p1, :cond_36

    .line 671
    :try_start_26
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 672
    new-instance v3, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v3, p0, v2}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_42

    .line 674
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-interface {p1, v2}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35
    .catchall {:try_start_2f .. :try_end_34} :catchall_42

    .line 677
    goto :goto_36

    .line 675
    :catch_35
    move-exception v2

    .line 680
    :cond_36
    :goto_36
    :try_start_36
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-eqz p1, :cond_3c

    const/4 v4, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v4, 0x0

    :goto_3d
    invoke-static {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->nativeSetInputFilterEnabled(JZ)V

    .line 681
    .end local v1    # "oldFilter":Landroid/view/IInputFilter;
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public setInputWindows([Lcom/android/server/input/InputWindowHandle;Lcom/android/server/input/InputWindowHandle;)V
    .registers 6
    .param p1, "windowHandles"    # [Lcom/android/server/input/InputWindowHandle;
    .param p2, "focusedWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .line 1563
    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/android/server/input/InputWindowHandle;->clientWindow:Landroid/view/IWindow;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1564
    .local v0, "newFocusedWindow":Landroid/view/IWindow;
    :goto_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    if-eq v1, v0, :cond_14

    .line 1565
    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindow:Landroid/view/IWindow;

    .line 1566
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mFocusedWindowHasCapture:Z

    if-eqz v1, :cond_14

    .line 1567
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/InputManagerService;->setPointerCapture(Z)V

    .line 1570
    :cond_14
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2, p1}, Lcom/android/server/input/InputManagerService;->nativeSetInputWindows(J[Lcom/android/server/input/InputWindowHandle;)V

    .line 1571
    return-void
.end method

.method public setPointerIconType(I)V
    .registers 4
    .param p1, "iconId"    # I

    .line 1808
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetPointerIconType(JI)V

    .line 1809
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 1606
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeSetSystemUiVisibility(JI)V

    .line 1607
    return-void
.end method

.method public setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .registers 7
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .line 1008
    const-string v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1012
    if-eqz p1, :cond_47

    .line 1015
    if-eqz p3, :cond_3f

    .line 1018
    if-ltz p2, :cond_36

    const/4 v0, 0x3

    if-gt p2, v0, :cond_36

    .line 1022
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 1024
    :try_start_17
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1026
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadCalibration(J)V
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2c

    .line 1029
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 1030
    nop

    .line 1031
    monitor-exit v0

    .line 1032
    return-void

    .line 1029
    :catchall_2c
    move-exception v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw v1

    .line 1031
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw v1

    .line 1019
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceRotation value out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calibration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputDeviceDescriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_4f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 354
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    .line 355
    return-void
.end method

.method public setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 358
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    .line 359
    return-void
.end method

.method public start()V
    .registers 6

    .line 362
    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->nativeStart(J)V

    .line 366
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 368
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerPointerSpeedSettingObserver()V

    .line 369
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerShowTouchesSettingObserver()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerAccessibilityLargePointerSettingObserver()V

    .line 372
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->registerTouchWakeupModeSettingObserver()V

    .line 374
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$1;-><init>(Lcom/android/server/input/InputManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updatePointerSpeedFromSettings()V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateShowTouchesFromSettings()V

    .line 385
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateAccessibilityLargePointerFromSettings()V

    .line 387
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 388
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 1520
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1521
    return-void
.end method

.method public switchTouchCoverMode(Z)V
    .registers 5
    .param p1, "modeOn"    # Z

    .line 1923
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cover modeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    if-eqz p1, :cond_1f

    .line 1925
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    goto :goto_25

    .line 1927
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    .line 1928
    :goto_25
    return-void
.end method

.method public switchTouchSensitiveMode(Z)V
    .registers 5
    .param p1, "modeOn"    # Z

    .line 1896
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glove modeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    if-eqz p1, :cond_1f

    .line 1898
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    goto :goto_25

    .line 1900
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    .line 1901
    :goto_25
    return-void
.end method

.method public switchTouchStylusMode(Z)V
    .registers 5
    .param p1, "modeOn"    # Z

    .line 1905
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stylus modeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    if-eqz p1, :cond_20

    .line 1907
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    goto :goto_26

    .line 1909
    :cond_20
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    .line 1910
    :goto_26
    return-void
.end method

.method public switchTouchWakeupMode(Z)V
    .registers 5
    .param p1, "modeOn"    # Z

    .line 1914
    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeup modeOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    if-eqz p1, :cond_20

    .line 1916
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    goto :goto_26

    .line 1918
    :cond_20
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->nativeSwitchTouchWorkMode(JI)V

    .line 1919
    :goto_26
    return-void
.end method

.method public systemRunning()V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 411
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 412
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/InputManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$3;-><init>(Lcom/android/server/input/InputManagerService;)V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 419
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 420
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService$InputManagerHandler;->sendEmptyMessage(I)Z

    .line 422
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v1, :cond_62

    .line 423
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    invoke-interface {v1}, Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;->systemReady()V

    .line 427
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateTouchWakeupModeFromSettings()V

    .line 428
    return-void
.end method

.method public transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z
    .registers 5
    .param p1, "fromChannel"    # Landroid/view/InputChannel;
    .param p2, "toChannel"    # Landroid/view/InputChannel;

    .line 1623
    if-eqz p1, :cond_14

    .line 1626
    if-eqz p2, :cond_b

    .line 1629
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/input/InputManagerService;->nativeTransferTouchFocus(JLandroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v0

    return v0

    .line 1627
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1624
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryPointerSpeed(I)V
    .registers 4
    .param p1, "speed"    # I

    .line 1634
    const-string v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1639
    const/4 v0, -0x7

    if-lt p1, v0, :cond_15

    const/4 v0, 0x7

    if-gt p1, v0, :cond_15

    .line 1643
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1644
    return-void

    .line 1640
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1636
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 4
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .line 571
    if-eqz p1, :cond_8

    .line 575
    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->nativeUnregisterInputChannel(JLandroid/view/InputChannel;)V

    .line 576
    return-void

    .line 572
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAccessibilityLargePointerFromSettings()V
    .registers 5

    .line 1697
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 1698
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_large_pointer_icon"

    .line 1697
    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1700
    .local v0, "accessibilityConfig":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    invoke-static {v1}, Landroid/view/PointerIcon;->setUseLargeIcons(Z)V

    .line 1701
    iget-wide v1, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    invoke-static {v1, v2}, Lcom/android/server/input/InputManagerService;->nativeReloadPointerIcons(J)V

    .line 1702
    return-void
.end method

.method public updatePointerSpeedFromSettings()V
    .registers 2

    .line 1647
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService;->getPointerSpeedSetting()I

    move-result v0

    .line 1648
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    .line 1649
    return-void
.end method

.method public updateShowTouchesFromSettings()V
    .registers 7

    .line 1679
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/input/InputManagerService;->getShowTouchesSetting(I)I

    move-result v1

    .line 1680
    .local v1, "setting":I
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    const/4 v4, 0x1

    if-eqz v1, :cond_c

    move v5, v4

    goto :goto_d

    :cond_c
    move v5, v0

    :goto_d
    invoke-static {v2, v3, v5}, Lcom/android/server/input/InputManagerService;->nativeSetShowTouches(JZ)V

    .line 1682
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    if-nez v1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v4

    :goto_16
    invoke-static {v2, v3, v0}, Lcom/android/server/input/InputManagerService;->nativeSetDebugInput(JI)V

    .line 1683
    return-void
.end method

.method public updateTouchWakeupModeFromSettings()V
    .registers 4

    .line 1706
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_wakeup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 1708
    .local v0, "touchWakeupMode":Z
    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->switchTouchWakeupMode(Z)V

    .line 1709
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 1710
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->updateColorFadeOffAnimatorDuration(Z)V

    .line 1711
    return-void
.end method

.method public vibrate(I[JILandroid/os/IBinder;)V
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .line 1749
    array-length v0, p2

    if-ge p3, v0, :cond_45

    .line 1754
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1755
    :try_start_6
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    .line 1756
    .local v1, "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    if-nez v1, :cond_2e

    .line 1757
    new-instance v2, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v2, p0, p1, p4, v3}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_42

    move-object v1, v2

    .line 1759
    const/4 v2, 0x0

    :try_start_1d
    invoke-interface {p4, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_27
    .catchall {:try_start_1d .. :try_end_20} :catchall_42

    .line 1763
    nop

    .line 1764
    :try_start_21
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/HashMap;

    invoke-virtual {v2, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 1760
    :catch_27
    move-exception v2

    .line 1762
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1766
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_42

    .line 1768
    monitor-enter v1

    .line 1769
    const/4 v0, 0x1

    :try_start_31
    iput-boolean v0, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    .line 1770
    iget-wide v2, p0, Lcom/android/server/input/InputManagerService;->mPtr:J

    iget v7, v1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->nativeVibrate(JI[JII)V

    .line 1771
    monitor-exit v1

    .line 1772
    return-void

    .line 1771
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v0

    .line 1766
    .end local v1    # "v":Lcom/android/server/input/InputManagerService$VibratorToken;
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 1750
    :cond_45
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
