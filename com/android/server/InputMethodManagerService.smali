.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$ShellCommandImpl;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/InputMethodManagerService$StartInputInfo;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$SessionState;,
        Lcom/android/server/InputMethodManagerService$DebugFlags;,
        Lcom/android/server/InputMethodManagerService$DebugFlag;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardBehavior;,
        Lcom/android/server/InputMethodManagerService$ShellCommandResult;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

.field static final DEBUG:Z = false

.field private static final IME_CONNECTION_BIND_FLAGS:I = 0x40800005

.field private static final IME_VISIBLE_BIND_FLAGS:I = 0x2c000001

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_START_VR_INPUT:I = 0x7da

.field static final MSG_SWITCH_IME:I = 0xbea

.field static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field private mBindInstantServiceAllowed:Z

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurFocusedWindowSoftInputMode:I

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Lmiui/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardBehavior:I

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInFullscreenMode:Z

.field mInputShown:Z

.field mIsInteractive:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodMapUpdateCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mRes:Landroid/content/res/Resources;

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field private final mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field private final mStartInputMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$StartInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Lmiui/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private mSwitchingDialogToken:Landroid/os/IBinder;

.field mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 1352
    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 321
    new-instance v0, Landroid/util/LruCache;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 328
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 332
    new-instance v3, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 339
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 381
    new-instance v3, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 426
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    .line 513
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    .line 587
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 589
    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 591
    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 613
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 621
    new-instance v4, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v4, v1}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    .line 632
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    .line 688
    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    .line 830
    new-instance v4, Lcom/android/server/InputMethodManagerService$StartInputHistory;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    .line 1353
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1354
    iput-object v2, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1355
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1356
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1358
    new-instance v4, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v6, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v1, v6}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    .line 1359
    const-string/jumbo v4, "window"

    .line 1360
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1359
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1361
    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1362
    new-instance v4, Lcom/android/internal/os/HandlerCaller;

    new-instance v6, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v6, v1}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1368
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1369
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1370
    new-instance v4, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v4, v1, v5}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 1371
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.software.input_methods"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    .line 1373
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040673

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1374
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    .line 1377
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1378
    .local v4, "extras":Landroid/os/Bundle;
    const-string v5, "android.allowDuringSetup"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1379
    iget-object v5, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v6, 0x106016f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 1381
    .local v5, "accentColor":I
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD_MIUI:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1386
    const v7, 0x10804b0

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1387
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1388
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1389
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string/jumbo v7, "sys"

    .line 1390
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1391
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1393
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1394
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1395
    .local v6, "intent":Landroid/content/Intent;
    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v6, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1397
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1399
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 1400
    move v7, v0

    .line 1402
    .local v7, "userId":I
    :try_start_147
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_151} :catch_153

    move v7, v0

    .line 1405
    goto :goto_15b

    .line 1403
    :catch_153
    move-exception v0

    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1408
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15b
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1409
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-boolean v8, v1, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v16, v8, 0x1

    move-object v10, v0

    move v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1411
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1412
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v3, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1413
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1416
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/service/vr/IVrManager;

    .line 1417
    .local v3, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v3, :cond_1a0

    .line 1419
    :try_start_192
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_197
    .catch Landroid/os/RemoteException; {:try_start_192 .. :try_end_197} :catch_198

    .line 1422
    goto :goto_1a0

    .line 1420
    :catch_198
    move-exception v0

    .line 1421
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Failed to register VR mode state listener."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a0
    :goto_1a0
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, v8}, Lcom/android/server/InputMethodManagerServiceInjector;->enableSystemIMEsIfThereIsNoEnabledIME(Ljava/util/ArrayList;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V

    .line 1428
    new-instance v0, Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-direct {v0, v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    .line 1430
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/InputMethodManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->restoreNonVrImeFromSettingsNoCheck()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/InputMethodManagerService;)Lmiui/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/InputMethodManagerService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/InputMethodManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;
    .param p2, "x2"    # Z

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleSetBindInstantServiceAllowed(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/InputMethodManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Z

    .line 183
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/InputMethodManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->getComponentMatchingFlags(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method private bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1649
    if-eqz p1, :cond_1e

    if-nez p2, :cond_5

    goto :goto_1e

    .line 1653
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    if-eqz v0, :cond_c

    .line 1654
    const/high16 v0, 0x400000

    or-int/2addr p3, v0

    .line 1656
    :cond_c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1657
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1656
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 1650
    :cond_1e
    :goto_1e
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method private calledFromValidUser()Z
    .registers 6

    .line 1590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1591
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1599
    .local v1, "userId":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_3f

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_3f

    .line 1608
    :cond_16
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_21

    .line 1615
    return v2

    .line 1618
    :cond_21
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    .line 1619
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1618
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const/4 v2, 0x0

    return v2

    .line 1600
    :cond_3f
    :goto_3f
    return v2
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1630
    const/4 v0, 0x0

    if-nez p1, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_e

    .line 1635
    return v0

    .line 1637
    :cond_e
    if-eqz p1, :cond_17

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_15

    goto :goto_17

    .line 1643
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 1639
    :cond_17
    :goto_17
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to an invalid token. uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1639
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    return v0
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 3015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3016
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_e

    .line 3017
    return v2

    .line 3018
    :cond_e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_23

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3019
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_23

    .line 3020
    return v2

    .line 3021
    :cond_23
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 3024
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3021
    invoke-static {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 3025
    return v2

    .line 3026
    :cond_3a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_45

    .line 3029
    return v2

    .line 3032
    :cond_45
    const/4 v1, 0x0

    return v1
.end method

.method private chooseNewDefaultIMELocked()Z
    .registers 3

    .line 3652
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3653
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 3652
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 3654
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_15

    .line 3658
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 3659
    const/4 v1, 0x1

    return v1

    .line 3662
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .registers 19
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4178
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    .line 4179
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x0

    .line 4180
    .local v3, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x0

    .line 4181
    .local v4, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v5, 0x0

    .line 4184
    .local v5, "foundInSystemIME":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_9d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 4185
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 4186
    .local v9, "imiId":Ljava/lang/String;
    if-eqz v5, :cond_2d

    iget-object v10, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 4187
    goto :goto_11

    .line 4189
    :cond_2d
    const/4 v10, 0x0

    .line 4190
    .local v10, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4191
    const/4 v13, 0x1

    invoke-virtual {v11, v12, v7, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 4193
    .local v11, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v14, 0x0

    if-eqz v12, :cond_48

    .line 4194
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4195
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    .line 4194
    invoke-static {v12, v11, v1, v15, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4199
    :cond_48
    if-nez v10, :cond_50

    .line 4200
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v12, v11, v1, v8, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4203
    :cond_50
    nop

    .line 4204
    invoke-static {v7, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 4206
    .local v12, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_60

    .line 4207
    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v15

    goto :goto_61

    .line 4208
    :cond_60
    move-object v15, v12

    .line 4210
    .local v15, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_61
    if-nez v10, :cond_73

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v8, :cond_73

    .line 4211
    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4212
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    .line 4211
    invoke-static {v8, v15, v1, v13, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4216
    :cond_73
    if-nez v10, :cond_7d

    .line 4217
    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v8, v15, v1, v14, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4220
    :cond_7d
    if-eqz v10, :cond_9b

    .line 4221
    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 4223
    move-object v3, v7

    .line 4224
    move-object v4, v10

    .line 4225
    goto :goto_9d

    .line 4226
    :cond_8a
    if-nez v5, :cond_9b

    .line 4228
    move-object v3, v7

    .line 4229
    move-object v4, v10

    .line 4230
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v8, v13

    if-eqz v8, :cond_9b

    .line 4232
    const/4 v5, 0x1

    .line 4236
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "imiId":Ljava/lang/String;
    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v11    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v15    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9b
    goto/16 :goto_11

    .line 4248
    :cond_9d
    :goto_9d
    if-eqz v3, :cond_a5

    .line 4249
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 4251
    :cond_a5
    const/4 v6, 0x0

    return-object v6
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 7
    .param p1, "sessionState"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2163
    if-eqz p1, :cond_2a

    .line 2164
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 2166
    :try_start_7
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 2170
    goto :goto_1d

    .line 2167
    :catch_d
    move-exception v0

    .line 2168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2169
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2171
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    iput-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2173
    :cond_1f
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2a

    .line 2174
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2175
    iput-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2178
    :cond_2a
    return-void
.end method

.method private getAppShowFlags()I
    .registers 3

    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_8

    .line 1812
    or-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 1813
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_e

    .line 1814
    or-int/lit8 v0, v0, 0x1

    .line 1816
    :cond_e
    :goto_e
    return v0
.end method

.method private getComponentMatchingFlags(I)I
    .registers 4
    .param p1, "baseFlags"    # I

    .line 3667
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3668
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_a

    .line 3669
    const/high16 v1, 0x800000

    or-int/2addr p1, v1

    .line 3671
    :cond_a
    monitor-exit v0

    return p1

    .line 3672
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 9

    .line 4270
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4271
    return-object v1

    .line 4273
    :cond_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v0

    .line 4274
    .local v0, "subtypeIsSelected":Z
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4275
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_82

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_82

    .line 4278
    :cond_1f
    if-eqz v0, :cond_31

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4279
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 4280
    :cond_31
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    .line 4281
    .local v3, "subtypeId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_73

    .line 4285
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4286
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 4289
    .local v4, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_55

    .line 4290
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_72

    .line 4291
    :cond_55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_72

    .line 4292
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v7, "keyboard"

    invoke-static {v5, v4, v7, v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4295
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_72

    .line 4296
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v4, v1, v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4301
    .end local v4    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_72
    :goto_72
    goto :goto_7f

    .line 4302
    :cond_73
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4305
    .end local v3    # "subtypeId":I
    :cond_7f
    :goto_7f
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v1

    .line 4276
    :cond_82
    :goto_82
    return-object v1
.end method

.method private getImeShowFlags()I
    .registers 3

    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_8

    .line 1801
    or-int/lit8 v0, v0, 0x3

    goto :goto_e

    .line 1803
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_e

    .line 1804
    or-int/lit8 v0, v0, 0x1

    .line 1806
    :cond_e
    :goto_e
    return v0
.end method

.method private getInputMethodList(Z)Ljava/util/List;
    .registers 7
    .param p1, "isVrOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1671
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1672
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1674
    :cond_b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1675
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    .local v1, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1678
    .local v3, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v4

    if-ne v4, p1, :cond_2e

    .line 1679
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    .end local v3    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2e
    goto :goto_19

    .line 1684
    :cond_2f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/android/server/MiuiSecurityInputMethodHelper;->filterSecMethodLocked(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1685
    .end local v1    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private handleSetBindInstantServiceAllowed(Landroid/os/ShellCommand;)I
    .registers 10
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 4933
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 4934
    .local v0, "allowedString":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_11

    .line 4935
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no true/false specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4936
    return v1

    .line 4938
    :cond_11
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4939
    .local v2, "allowed":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4940
    :try_start_18
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2d

    .line 4943
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Caller must have MANAGE_BIND_INSTANT_SERVICE permission"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4945
    monitor-exit v3

    return v1

    .line 4948
    :cond_2d
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    const/4 v4, 0x0

    if-ne v1, v2, :cond_34

    .line 4950
    monitor-exit v3

    return v4

    .line 4952
    :cond_34
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    .line 4955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_55

    .line 4958
    .local v5, "ident":J
    const/4 v1, 0x0

    :try_start_3b
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4960
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 4961
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 4962
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_50

    .line 4964
    :try_start_4a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4965
    nop

    .line 4966
    .end local v5    # "ident":J
    monitor-exit v3

    .line 4967
    return v4

    .line 4964
    .restart local v5    # "ident":J
    :catchall_50
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4966
    .end local v5    # "ident":J
    :catchall_55
    move-exception v1

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_55

    throw v1
.end method

.method private handleSetInteractive(Z)V
    .registers 9
    .param p1, "interactive"    # Z

    .line 3612
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3613
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 3614
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_c

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 3617
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_31

    .line 3618
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    .line 3619
    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3618
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3622
    :cond_31
    monitor-exit v0

    .line 3623
    return-void

    .line 3622
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .registers 8
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;
    .param p2, "enabled"    # Z

    .line 5021
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5022
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Must be called from the foreground user or with INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5024
    const/4 v0, -0x1

    return v0

    .line 5026
    :cond_11
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 5029
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5030
    :try_start_18
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5d

    .line 5040
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_6e

    .line 5042
    .local v2, "ident":J
    :try_start_26
    invoke-virtual {p0, v0, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_58

    .line 5044
    .local v4, "previouslyEnabled":Z
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5045
    nop

    .line 5044
    .end local v2    # "ident":J
    nop

    .line 5046
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_6e

    .line 5047
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5048
    .local v1, "pr":Ljava/io/PrintWriter;
    const-string v2, "Input method "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5049
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5050
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    if-ne p2, v4, :cond_46

    const-string v2, "already "

    goto :goto_49

    :cond_46
    const-string/jumbo v2, "now "

    :goto_49
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5052
    if-eqz p2, :cond_51

    const-string v2, "enabled"

    goto :goto_53

    :cond_51
    const-string v2, "disabled"

    :goto_53
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5053
    const/4 v2, 0x0

    return v2

    .line 5044
    .end local v1    # "pr":Ljava/io/PrintWriter;
    .end local v4    # "previouslyEnabled":Z
    .restart local v2    # "ident":J
    :catchall_58
    move-exception v4

    :try_start_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5033
    .end local v2    # "ident":J
    :cond_5d
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Caller must have WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5035
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5046
    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_6e

    throw v2
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .registers 12
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 4978
    const/4 v0, 0x0

    .line 4979
    .local v0, "all":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 4981
    .local v0, "brief":Z
    .local v2, "all":Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    .line 4982
    .local v3, "nextOption":Ljava/lang/String;
    if-nez v3, :cond_57

    .line 4983
    nop

    .line 4994
    .end local v3    # "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_12

    .line 4995
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 4996
    .local v3, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_16
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 4997
    .local v4, "pr":Ljava/io/PrintWriter;
    new-instance v5, Lcom/android/server/-$$Lambda$InputMethodManagerService$87vt08aKi27xQgvHZ-wOyJeb5jo;

    .local v5, "printer":Landroid/util/Printer;
    invoke-direct {v5, v4}, Lcom/android/server/-$$Lambda$InputMethodManagerService$87vt08aKi27xQgvHZ-wOyJeb5jo;-><init>(Ljava/io/PrintWriter;)V

    .line 4998
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 4999
    .local v6, "N":I
    move v7, v1

    .local v7, "i":I
    :goto_24
    if-ge v7, v6, :cond_56

    .line 5000
    if-eqz v0, :cond_36

    .line 5001
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 5003
    :cond_36
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5004
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    const-string v9, "  "

    invoke-virtual {v8, v5, v9}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4999
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 5007
    .end local v7    # "i":I
    :cond_56
    return v1

    .line 4985
    .end local v4    # "pr":Ljava/io/PrintWriter;
    .end local v5    # "printer":Landroid/util/Printer;
    .end local v6    # "N":I
    .local v3, "nextOption":Ljava/lang/String;
    :cond_57
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x5d4

    if-eq v5, v6, :cond_6f

    const/16 v6, 0x5e6

    if-eq v5, v6, :cond_65

    goto :goto_78

    :cond_65
    const-string v5, "-s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    const/4 v4, 0x1

    goto :goto_78

    :cond_6f
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    move v4, v1

    :cond_78
    :goto_78
    packed-switch v4, :pswitch_data_82

    .end local v3    # "nextOption":Ljava/lang/String;
    goto :goto_80

    .line 4990
    .restart local v3    # "nextOption":Ljava/lang/String;
    :pswitch_7c
    const/4 v0, 0x1

    .end local v3    # "nextOption":Ljava/lang/String;
    goto :goto_80

    .line 4987
    .restart local v3    # "nextOption":Ljava/lang/String;
    :pswitch_7e
    const/4 v2, 0x1

    .line 4988
    nop

    .line 4993
    .end local v3    # "nextOption":Ljava/lang/String;
    :goto_80
    goto :goto_4

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7c
    .end packed-switch
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .registers 12
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5082
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5083
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Must be called from the foreground user or with INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    const/4 v0, -0x1

    return v0

    .line 5087
    :cond_11
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5088
    :try_start_14
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_dd

    .line 5099
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_ee

    .line 5101
    .local v1, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_d8

    .line 5102
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_27
    invoke-virtual {p0, v5, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 5103
    invoke-virtual {p0, v5}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 5105
    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5107
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5110
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5111
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    .line 5112
    .local v4, "enabledImes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5113
    .local v6, "N":I
    move v7, v5

    .local v7, "i":I
    :goto_40
    if-ge v7, v6, :cond_52

    .line 5114
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 5113
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 5119
    .end local v4    # "enabledImes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_52
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 5120
    invoke-static {v4, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 5121
    .local v4, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5122
    .restart local v6    # "N":I
    move v7, v5

    .restart local v7    # "i":I
    :goto_5f
    const/4 v8, 0x1

    if-ge v7, v6, :cond_72

    .line 5123
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 5122
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 5126
    .end local v4    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_72
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 5127
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5128
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5129
    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5130
    invoke-virtual {v8}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v8

    .line 5127
    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 5131
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 5132
    .local v4, "nextIme":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v6

    .line 5133
    .local v6, "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_27 .. :try_end_97} :catchall_d5

    .line 5135
    :try_start_97
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5136
    nop

    .line 5135
    nop

    .line 5137
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 5138
    .local v3, "pr":Ljava/io/PrintWriter;
    const-string v7, "Reset current and enabled IMEs"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5139
    const-string v7, "Newly selected IME:"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5140
    const-string v7, "  "

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5141
    const-string v7, "Newly enabled IMEs:"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5143
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 5144
    .local v7, "N":I
    move v8, v5

    .local v8, "i":I
    :goto_bc
    if-ge v8, v7, :cond_d3

    .line 5145
    const-string v9, "  "

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5146
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5144
    add-int/lit8 v8, v8, 0x1

    goto :goto_bc

    .line 5149
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_97 .. :try_end_d4} :catchall_ee

    return v5

    .line 5133
    .end local v3    # "pr":Ljava/io/PrintWriter;
    .end local v4    # "nextIme":Ljava/lang/String;
    .end local v6    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_d5
    move-exception v4

    :try_start_d6
    monitor-exit v3
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    :try_start_d7
    throw v4
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d8

    .line 5135
    :catchall_d8
    move-exception v3

    :try_start_d9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5091
    .end local v1    # "ident":J
    :cond_dd
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Caller must have WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5093
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5150
    :catchall_ee
    move-exception v1

    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_d9 .. :try_end_f0} :catchall_ee

    throw v1
.end method

.method private handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .registers 5
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5064
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 5065
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 5066
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5067
    .local v1, "pr":Ljava/io/PrintWriter;
    const-string v2, "Input method "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5068
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5069
    const-string v2, "  selected"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5070
    const/4 v2, 0x0

    return v2
.end method

.method private handleSwitchInputMethod(Z)V
    .registers 8
    .param p1, "forwardDirection"    # Z

    .line 3626
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3627
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3628
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3627
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 3629
    .local v1, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_1a

    .line 3630
    monitor-exit v0

    return-void

    .line 3632
    :cond_1a
    iget-object v2, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3633
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3634
    .local v2, "newInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_33

    .line 3635
    monitor-exit v0

    return-void

    .line 3637
    :cond_33
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3, v2, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3639
    .local v3, "toastText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 3640
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    if-nez v5, :cond_4e

    .line 3641
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    goto :goto_53

    .line 3644
    :cond_4e
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v4, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3646
    :goto_53
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3648
    .end local v1    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "newInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "toastText":Ljava/lang/CharSequence;
    :cond_58
    monitor-exit v0

    .line 3649
    return-void

    .line 3648
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private static imeWindowStatusToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "imeWindowVis"    # I

    .line 4602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4603
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 4604
    .local v1, "first":Z
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_10

    .line 4605
    const-string v2, "Active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4606
    const/4 v1, 0x0

    .line 4608
    :cond_10
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_21

    .line 4609
    if-nez v1, :cond_1c

    .line 4610
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4612
    :cond_1c
    const-string v2, "Visible"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4614
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isKeyguardLocked()Z
    .registers 2

    .line 2327
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isScreenLocked()Z
    .registers 2

    .line 3842
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3843
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 3842
    :goto_17
    return v0
.end method

.method static synthetic lambda$handleShellCommandListInputMethods$0(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "pr"    # Ljava/io/PrintWriter;
    .param p1, "x"    # Ljava/lang/String;

    .line 4997
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1434
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1435
    return-void

    .line 1437
    :cond_15
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1438
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1437
    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1439
    .local v0, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1440
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return-void

    .line 1443
    :cond_2d
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1447
    .local v2, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1448
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 9
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .line 4158
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4159
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, -0x1

    .line 4161
    .local v1, "lastSubtypeId":I
    if-eqz v0, :cond_3b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 4162
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4163
    .local v2, "subtypeHashCode":Ljava/lang/String;
    if-eqz v2, :cond_3b

    .line 4165
    nop

    .line 4166
    :try_start_1a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4165
    invoke-static {v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_22} :catch_24

    move v1, v3

    .line 4169
    goto :goto_3b

    .line 4167
    :catch_24
    move-exception v3

    .line 4168
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4172
    .end local v2    # "subtypeHashCode":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_3b
    :goto_3b
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4173
    return-void
.end method

.method private restoreNonVrImeFromSettingsNoCheck()V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 393
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "lastInputId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 395
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 394
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 396
    .end local v1    # "lastInputId":Ljava/lang/String;
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .line 3318
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3319
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3320
    monitor-exit v0

    .line 3321
    return-void

    .line 3320
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .line 3324
    if-nez p1, :cond_15

    .line 3325
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3c

    .line 3328
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3332
    :cond_15
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_3c

    .line 3333
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring setInputMethod of uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    return-void

    .line 3338
    :cond_3c
    :goto_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3340
    .local v0, "ident":J
    :try_start_40
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    .line 3342
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3343
    nop

    .line 3344
    return-void

    .line 3342
    :catchall_48
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 10
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .line 4111
    const/4 v0, 0x1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 4112
    .local v1, "isVrInput":Z
    :goto_c
    if-nez v1, :cond_17

    .line 4114
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4117
    :cond_17
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    add-int/2addr v2, v0

    .line 4118
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 4124
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_3d

    .line 4125
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4130
    :cond_3d
    if-eqz v1, :cond_40

    .line 4132
    return-void

    .line 4136
    :cond_40
    const/4 v0, -0x1

    if-eqz p1, :cond_68

    if-gez p2, :cond_46

    goto :goto_68

    .line 4140
    :cond_46
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-ge p2, v2, :cond_5c

    .line 4141
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 4142
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4143
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4144
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_70

    .line 4145
    :cond_5c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4147
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_70

    .line 4137
    :cond_68
    :goto_68
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4151
    :goto_70
    if-nez p3, :cond_80

    .line 4153
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    :cond_7b
    const-string v2, ""

    :goto_7d
    invoke-virtual {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 4155
    :cond_80
    return-void
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .registers 18
    .param p1, "visibility"    # I

    move-object/from16 v0, p0

    .line 2265
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-virtual {v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->shouldHideImeSwitcherLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return v2

    .line 2266
    :cond_c
    iget-boolean v1, v0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v1, :cond_11

    return v2

    .line 2267
    :cond_11
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    if-eqz v1, :cond_16

    return v2

    .line 2268
    :cond_16
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2269
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2b

    return v2

    .line 2270
    :cond_2b
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_30

    return v2

    .line 2271
    :cond_30
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3e

    .line 2272
    iget v1, v0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    if-nez v1, :cond_43

    .line 2277
    return v3

    .line 2279
    :cond_3e
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_43

    .line 2280
    return v2

    .line 2283
    :cond_43
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2284
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 2285
    .local v4, "N":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_51

    return v3

    .line 2286
    :cond_51
    if-ge v4, v3, :cond_54

    return v2

    .line 2287
    :cond_54
    const/4 v5, 0x0

    .line 2288
    .local v5, "nonAuxCount":I
    const/4 v6, 0x0

    .line 2289
    .local v6, "auxCount":I
    const/4 v7, 0x0

    .line 2290
    .local v7, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v8, 0x0

    .line 2291
    .local v8, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    .local v5, "i":I
    .local v6, "nonAuxCount":I
    .local v7, "auxCount":I
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v9, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_5d
    if-ge v5, v4, :cond_9a

    .line 2292
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2293
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2294
    invoke-virtual {v11, v12, v10, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2295
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2296
    .local v12, "subtypeCount":I
    if-nez v12, :cond_76

    .line 2297
    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    .line 2299
    :cond_76
    move-object v13, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move v6, v2

    .local v6, "j":I
    .local v7, "nonAuxCount":I
    .local v8, "auxCount":I
    .local v9, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v13, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_7b
    if-ge v6, v12, :cond_93

    .line 2300
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2301
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v15

    if-nez v15, :cond_8d

    .line 2302
    add-int/lit8 v7, v7, 0x1

    .line 2303
    move-object v9, v14

    goto :goto_90

    .line 2305
    :cond_8d
    add-int/lit8 v8, v8, 0x1

    .line 2306
    move-object v13, v14

    .line 2299
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_7b

    .line 2291
    .end local v6    # "j":I
    .end local v10    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "subtypeCount":I
    :cond_93
    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v13

    .end local v13    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v6, "nonAuxCount":I
    .local v7, "auxCount":I
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v9, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 2311
    .end local v5    # "i":I
    :cond_9a
    if-gt v6, v3, :cond_cc

    if-le v7, v3, :cond_9f

    goto :goto_cc

    .line 2313
    :cond_9f
    if-ne v6, v3, :cond_cb

    if-ne v7, v3, :cond_cb

    .line 2314
    if-eqz v8, :cond_ca

    if-eqz v9, :cond_ca

    .line 2315
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    .line 2316
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v5

    if-nez v5, :cond_c1

    .line 2317
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v5

    if-eqz v5, :cond_ca

    :cond_c1
    const-string v5, "TrySuppressingImeSwitcher"

    .line 2318
    invoke-virtual {v8, v5}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 2319
    return v2

    .line 2321
    :cond_ca
    return v3

    .line 2323
    :cond_cb
    return v2

    .line 2312
    :cond_cc
    :goto_cc
    return v3
.end method

.method private showConfigureInputMethods()V
    .registers 5

    .line 3834
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3835
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3838
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3839
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 7
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .line 3819
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3820
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3823
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3824
    const-string v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3827
    :cond_17
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3828
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 3829
    .local v2, "userId":I
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_2c

    .line 3830
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3831
    return-void

    .line 3829
    .end local v2    # "userId":I
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method private showInputMethodMenu(Z)V
    .registers 26
    .param p1, "showAuxSubtypes"    # Z

    move-object/from16 v1, p0

    .line 3849
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v2

    .line 3851
    .local v2, "isScreenLocked":Z
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 3852
    .local v3, "lastInputMethodId":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 3855
    .local v4, "lastInputMethodSubtypeId":I
    iget-object v5, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3856
    :try_start_15
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3857
    invoke-virtual {v0, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 3859
    .local v0, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v0, :cond_19c

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_2f

    .line 3860
    move/from16 v7, p1

    move-object/from16 v16, v0

    move/from16 v21, v2

    move-object/from16 v19, v3

    goto/16 :goto_1a4

    .line 3863
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 3865
    iget-object v6, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_1a6

    .line 3866
    move/from16 v7, p1

    :try_start_36
    invoke-virtual {v6, v7, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v6
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_19a

    .line 3869
    .local v6, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v8, -0x1

    if-ne v4, v8, :cond_5f

    .line 3870
    :try_start_3d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 3871
    .local v9, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v9, :cond_5f

    .line 3872
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 3873
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 3874
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    .line 3873
    invoke-static {v10, v11}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v11
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_58

    move v4, v11

    .end local v9    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_5f

    .line 4002
    .end local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v6    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :catchall_58
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v19, v3

    goto/16 :goto_1ad

    .line 3879
    .restart local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v6    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v9, v1, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-virtual {v9, v6}, Lcom/android/server/MiuiSecurityInputMethodHelper;->removeSecMethod(Ljava/util/List;)V

    .line 3880
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 3881
    .local v9, "N":I
    new-array v10, v9, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v10, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 3882
    new-array v10, v9, [I

    iput-object v10, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_19a

    .line 3883
    const/4 v10, 0x0

    .line 3884
    .local v10, "checkedItem":I
    const/4 v11, 0x0

    move v12, v10

    move v10, v11

    .local v10, "i":I
    .local v12, "checkedItem":I
    :goto_74
    if-ge v10, v9, :cond_a6

    .line 3885
    :try_start_76
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 3886
    .local v13, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v15, v13, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v15, v14, v10

    .line 3887
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    iget v15, v13, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v15, v14, v10

    .line 3888
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v14, v14, v10

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a3

    .line 3889
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    aget v14, v14, v10
    :try_end_9a
    .catchall {:try_start_76 .. :try_end_9a} :catchall_58

    .line 3890
    .local v14, "subtypeId":I
    if-eq v14, v8, :cond_a2

    if-ne v4, v8, :cond_a0

    if-eqz v14, :cond_a2

    :cond_a0
    if-ne v14, v4, :cond_a3

    .line 3893
    :cond_a2
    move v12, v10

    .line 3884
    .end local v13    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v14    # "subtypeId":I
    :cond_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    .line 3902
    .end local v10    # "i":I
    :cond_a6
    :try_start_a6
    iget-object v8, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3904
    .local v8, "settingsContext":Landroid/content/Context;
    new-instance v10, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v10, v8}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    .line 3905
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    new-instance v13, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v13, v1}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v13}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    .line 3912
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v10}, Lmiui/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 3913
    .local v10, "dialogContext":Landroid/content/Context;
    sget-object v13, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v14, 0x101005d

    const/4 v15, 0x0

    invoke-virtual {v10, v15, v13, v14, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3916
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 3918
    .local v14, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3920
    iget-object v11, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v11, v14}, Lmiui/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lmiui/app/AlertDialog$Builder;

    .line 3922
    const-class v11, Landroid/view/LayoutInflater;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 3923
    .local v11, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v16, v0

    const v0, 0x1090075

    .end local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v16, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-virtual {v11, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3925
    .local v0, "tv":Landroid/view/View;
    iget-object v15, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v15, v0}, Lmiui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 3928
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 3929
    iget-object v15, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v17, v0

    const v0, 0x102028e

    .line 3930
    .end local v0    # "tv":Landroid/view/View;
    .local v17, "tv":Landroid/view/View;
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3931
    iget-object v15, v1, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v15

    if-eqz v15, :cond_104

    .line 3932
    nop

    .line 3931
    const/4 v15, 0x0

    goto :goto_106

    .line 3932
    :cond_104
    const/16 v15, 0x8

    .line 3931
    :goto_106
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 3933
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v15, 0x102028f

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 3935
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v15, v1, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v15}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3936
    new-instance v15, Lcom/android/server/InputMethodManagerService$5;

    invoke-direct {v15, v1}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v15}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3947
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->removeCustomTitle()V

    .line 3949
    new-instance v15, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-object/from16 v18, v0

    const v0, 0x1090076

    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    .local v18, "hardKeySwitch":Landroid/widget/Switch;
    invoke-direct {v15, v10, v0, v6, v12}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    move-object v0, v15

    .line 3951
    .local v0, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v15, Lcom/android/server/InputMethodManagerService$6;

    invoke-direct {v15, v1, v0}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    :try_end_134
    .catchall {:try_start_a6 .. :try_end_134} :catchall_19a

    .line 3973
    .local v15, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v19, v3

    :try_start_136
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    .end local v3    # "lastInputMethodId":Ljava/lang/String;
    .local v19, "lastInputMethodId":Ljava/lang/String;
    invoke-virtual {v3, v0, v12, v15}, Lmiui/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 3976
    if-nez v2, :cond_14f

    .line 3977
    new-instance v3, Lcom/android/server/InputMethodManagerService$7;

    invoke-direct {v3, v1}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    .line 3983
    .local v3, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;
    :try_end_146
    .catchall {:try_start_136 .. :try_end_146} :catchall_196

    .end local v0    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .local v20, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    move/from16 v21, v2

    const v2, 0x110b00ee

    .end local v2    # "isScreenLocked":Z
    .local v21, "isScreenLocked":Z
    :try_start_14b
    invoke-virtual {v0, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .end local v3    # "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    goto :goto_153

    .line 3988
    .end local v20    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v21    # "isScreenLocked":Z
    .restart local v0    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v2    # "isScreenLocked":Z
    :cond_14f
    move-object/from16 v20, v0

    move/from16 v21, v2

    .end local v0    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v2    # "isScreenLocked":Z
    .restart local v20    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .restart local v21    # "isScreenLocked":Z
    :goto_153
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    .line 3989
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3990
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3991
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 3992
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x7dc

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 3996
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3997
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3998
    const-string v3, "Select input method"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3999
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4000
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object/from16 v22, v0

    iget v0, v1, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .end local v0    # "w":Landroid/view/Window;
    .local v22, "w":Landroid/view/Window;
    move-object/from16 v23, v2

    iget v2, v1, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v23, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    .line 4001
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 4002
    .end local v6    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v8    # "settingsContext":Landroid/content/Context;
    .end local v9    # "N":I
    .end local v10    # "dialogContext":Landroid/content/Context;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "checkedItem":I
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v16    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v17    # "tv":Landroid/view/View;
    .end local v18    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v20    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v22    # "w":Landroid/view/Window;
    .end local v23    # "attrs":Landroid/view/WindowManager$LayoutParams;
    monitor-exit v5

    .line 4003
    return-void

    .line 4002
    .end local v21    # "isScreenLocked":Z
    .local v2, "isScreenLocked":Z
    :catchall_196
    move-exception v0

    move/from16 v21, v2

    .end local v2    # "isScreenLocked":Z
    .restart local v21    # "isScreenLocked":Z
    goto :goto_1ad

    .end local v19    # "lastInputMethodId":Ljava/lang/String;
    .end local v21    # "isScreenLocked":Z
    .restart local v2    # "isScreenLocked":Z
    .local v3, "lastInputMethodId":Ljava/lang/String;
    :catchall_19a
    move-exception v0

    goto :goto_1a9

    .line 3860
    .local v0, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_19c
    move/from16 v7, p1

    move-object/from16 v16, v0

    move/from16 v21, v2

    move-object/from16 v19, v3

    .end local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v2    # "isScreenLocked":Z
    .end local v3    # "lastInputMethodId":Ljava/lang/String;
    .restart local v16    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v19    # "lastInputMethodId":Ljava/lang/String;
    .restart local v21    # "isScreenLocked":Z
    :goto_1a4
    monitor-exit v5

    return-void

    .line 4002
    .end local v16    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v19    # "lastInputMethodId":Ljava/lang/String;
    .end local v21    # "isScreenLocked":Z
    .restart local v2    # "isScreenLocked":Z
    .restart local v3    # "lastInputMethodId":Ljava/lang/String;
    :catchall_1a6
    move-exception v0

    move/from16 v7, p1

    :goto_1a9
    move/from16 v21, v2

    move-object/from16 v19, v3

    .end local v2    # "isScreenLocked":Z
    .end local v3    # "lastInputMethodId":Ljava/lang/String;
    .restart local v19    # "lastInputMethodId":Ljava/lang/String;
    .restart local v21    # "isScreenLocked":Z
    :goto_1ad
    monitor-exit v5
    :try_end_1ae
    .catchall {:try_start_14b .. :try_end_1ae} :catchall_1af

    throw v0

    :catchall_1af
    move-exception v0

    goto :goto_1ad
.end method

.method private startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 11
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p4, "missingMethods"    # I
    .param p5, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p6, "controlFlags"    # I

    .line 2037
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2038
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2040
    :cond_9
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2051
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_1e

    .line 2053
    .local v1, "ident":J
    :try_start_10
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/InputMethodManagerService;->startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_19

    .line 2056
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2053
    return-object v3

    .line 2056
    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2058
    .end local v1    # "ident":J
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private startVrInputMethodNoCheck(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 947
    if-nez p1, :cond_6

    .line 949
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->restoreNonVrImeFromSettingsNoCheck()V

    .line 950
    return-void

    .line 953
    :cond_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 954
    :try_start_9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 956
    .local v3, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 958
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 959
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 960
    goto :goto_41

    .line 962
    .end local v3    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_40
    goto :goto_13

    .line 963
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_41
    :goto_41
    monitor-exit v0

    .line 964
    return-void

    .line 963
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private switchUserLocked(I)V
    .registers 8
    .param p1, "newUserId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1456
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1460
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1461
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_16

    :cond_14
    move v0, v2

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v1

    .line 1462
    .local v0, "useCopyOnWriteSettings":Z
    :goto_17
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1463
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1465
    new-instance v3, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1466
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 1476
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1477
    .local v4, "initialUserSwitch":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1479
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-virtual {v5, p1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->onSwitchUserLocked(I)V

    .line 1482
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v5, :cond_72

    .line 1483
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1484
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 1485
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1486
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1489
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1491
    :cond_63
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1493
    :try_start_66
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 1496
    goto :goto_72

    .line 1494
    :catch_6a
    move-exception v1

    .line 1495
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "InputMethodManagerService"

    const-string v5, "Unexpected exception"

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1499
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_72
    :goto_72
    if-eqz v4, :cond_85

    .line 1500
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1501
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1502
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1500
    invoke-static {v1, v2, p1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1507
    :cond_85
    return-void
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .line 2366
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2367
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2368
    monitor-exit v0

    .line 2369
    return-void

    .line 2368
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .line 2373
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2374
    return-void

    .line 2379
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2382
    .local v0, "ident":J
    if-eqz p2, :cond_1b

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-nez v2, :cond_1b

    .line 2383
    const/4 p2, 0x0

    goto :goto_1b

    .line 2437
    :catchall_19
    move-exception v2

    goto :goto_8d

    .line 2386
    :cond_1b
    :goto_1b
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v2

    .line 2387
    .local v2, "needsToShowImeSwitcher":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_28

    .line 2388
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 2391
    :cond_28
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2392
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_77

    if-eqz v2, :cond_77

    .line 2394
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v8, 0x1040616

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2396
    .local v7, "title":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v8, v3, v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2398
    .local v8, "summary":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 2399
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 2400
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2405
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v9, :cond_76

    .line 2414
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 2415
    .local v9, "notification":Landroid/app/Notification;
    iget-object v10, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "miui.enableFloat"

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2416
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v4, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2420
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 2426
    .end local v7    # "title":Ljava/lang/CharSequence;
    .end local v8    # "summary":Ljava/lang/CharSequence;
    .end local v9    # "notification":Landroid/app/Notification;
    :cond_76
    goto :goto_88

    .line 2427
    :cond_77
    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v7, :cond_88

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v7, :cond_88

    .line 2431
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v4, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2433
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_88
    .catchall {:try_start_d .. :try_end_88} :catchall_19

    .line 2437
    .end local v2    # "needsToShowImeSwitcher":Z
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_88
    :goto_88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2438
    nop

    .line 2439
    return-void

    .line 2437
    :goto_8d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .registers 35
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "controlFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I
    .param p10, "unverifiedTargetSdkVersion"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 2826
    move/from16 v13, p10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v14

    .line 2827
    .local v14, "calledFromValidUser":Z
    const/4 v15, 0x0

    .line 2828
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v6, v0

    .line 2830
    .local v6, "ident":J
    :try_start_14
    iget-object v5, v8, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_209

    .line 2843
    :try_start_17
    iget-object v0, v8, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_1fc

    move-object v4, v0

    .line 2844
    .local v4, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v4, :cond_1d9

    .line 2850
    :try_start_26
    iget-object v0, v8, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2860
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_41
    .catchall {:try_start_26 .. :try_end_32} :catchall_38

    :try_start_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_38

    .line 3008
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2860
    return-object v0

    .line 2863
    :cond_37
    goto :goto_42

    .line 3006
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_38
    move-exception v0

    move-object/from16 v17, v5

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    goto/16 :goto_203

    .line 2862
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catch_41
    move-exception v0

    .line 2865
    :goto_42
    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez v14, :cond_5e

    .line 2866
    :try_start_46
    const-string v1, "InputMethodManagerService"

    const-string v2, "A background user is requesting window. Hiding IME."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    const-string v1, "InputMethodManagerService"

    const-string v2, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    invoke-virtual {v8, v0, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2870
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_38

    .line 3008
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2870
    return-object v0

    .line 2873
    :cond_5e
    :try_start_5e
    iget-object v1, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_1fc

    if-ne v1, v9, :cond_9b

    .line 2878
    if-eqz p7, :cond_84

    .line 2879
    move-object v1, v8

    move-object v2, v4

    move-object/from16 v3, p8

    move/from16 v16, v14

    move-object v14, v4

    move/from16 v4, p9

    .line 2879
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .local v16, "calledFromValidUser":Z
    move-object/from16 v17, v5

    move-object/from16 v5, p7

    move-wide v12, v6

    move v6, v10

    .line 2879
    .end local v6    # "ident":J
    .local v12, "ident":J
    move/from16 v7, p1

    :try_start_75
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    monitor-exit v17
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_7e

    .line 3008
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2879
    return-object v0

    .line 3006
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_7e
    move-exception v0

    move-wide v1, v12

    move/from16 v12, p10

    goto/16 :goto_203

    .line 2882
    .end local v12    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :cond_84
    move-object/from16 v17, v5

    move-wide v12, v6

    move/from16 v16, v14

    move-object v14, v4

    .line 2882
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v6    # "ident":J
    .restart local v12    # "ident":J
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v16    # "calledFromValidUser":Z
    :try_start_8a
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    monitor-exit v17
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_7e

    .line 3008
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2882
    return-object v0

    .line 2886
    .end local v12    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :cond_9b
    move-object/from16 v17, v5

    move-wide v12, v6

    move/from16 v16, v14

    move-object v14, v4

    .line 2886
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v6    # "ident":J
    .restart local v12    # "ident":J
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v16    # "calledFromValidUser":Z
    :try_start_a1
    iput-object v9, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 2887
    iput v11, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 2888
    iput-object v14, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_1d4

    .line 2897
    and-int/lit16 v1, v11, 0xf0

    const/16 v2, 0x10

    const/4 v7, 0x1

    if-eq v1, v2, :cond_be

    :try_start_ae
    iget-object v1, v8, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 2900
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1
    :try_end_b9
    .catchall {:try_start_ae .. :try_end_b9} :catchall_7e

    if-eqz v1, :cond_bc

    goto :goto_be

    :cond_bc
    move v1, v0

    goto :goto_bf

    :cond_be
    :goto_be
    move v1, v7

    :goto_bf
    move/from16 v18, v1

    .line 2902
    .local v18, "doAutoShow":Z
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_c7

    move v1, v7

    goto :goto_c8

    :cond_c7
    move v1, v0

    :goto_c8
    move/from16 v19, v1

    .line 2909
    .local v19, "isTextEditor":Z
    const/16 v20, 0x0

    .line 2911
    .local v20, "didStart":Z
    and-int/lit8 v1, v11, 0xf

    packed-switch v1, :pswitch_data_214

    .line 2991
    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2991
    .end local v12    # "ident":J
    .local v21, "ident":J
    goto/16 :goto_19f

    .line 2975
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_d7
    move-wide v5, v12

    move/from16 v12, p10

    :try_start_da
    invoke-static {v12, v10}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_10d

    .line 2975
    .end local v12    # "ident":J
    .local v5, "ident":J
    if-eqz v0, :cond_102

    .line 2977
    if-eqz p7, :cond_f9

    .line 2978
    move-object v1, v8

    move-object v2, v14

    move-object v0, v3

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-wide/from16 v21, v5

    move-object/from16 v5, p7

    .line 2978
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    move v6, v10

    move v0, v7

    move/from16 v7, p1

    :try_start_f1
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    move-object v15, v1

    .line 2980
    const/16 v20, 0x1

    goto :goto_fc

    .line 2982
    .end local v21    # "ident":J
    .restart local v5    # "ident":J
    :cond_f9
    move-wide/from16 v21, v5

    move v0, v7

    .line 2982
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    :goto_fc
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_19f

    .line 2984
    .end local v21    # "ident":J
    .restart local v5    # "ident":J
    :cond_102
    move-wide/from16 v21, v5

    .line 2984
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    const-string v0, "InputMethodManagerService"

    const-string v1, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19f

    .line 3006
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v18    # "doAutoShow":Z
    .end local v19    # "isTextEditor":Z
    .end local v20    # "didStart":Z
    .end local v21    # "ident":J
    .restart local v5    # "ident":J
    :catchall_10d
    move-exception v0

    move-wide v1, v5

    .line 3006
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    goto/16 :goto_203

    .line 2954
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    .restart local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v18    # "doAutoShow":Z
    .restart local v19    # "isTextEditor":Z
    .restart local v20    # "didStart":Z
    :pswitch_111
    move v0, v7

    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2954
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_19f

    .line 2957
    invoke-static {v12, v10}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 2959
    if-eqz p7, :cond_134

    .line 2960
    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move v6, v10

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    move-object v15, v1

    .line 2963
    const/16 v20, 0x1

    .line 2965
    :cond_134
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_19f

    .line 2967
    :cond_13a
    const-string v0, "InputMethodManagerService"

    const-string v1, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19f

    .line 2951
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_143
    move-object v7, v3

    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2951
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    invoke-virtual {v8, v0, v7}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2952
    goto/16 :goto_19f

    .line 3006
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v18    # "doAutoShow":Z
    .end local v19    # "isTextEditor":Z
    .end local v20    # "didStart":Z
    :catchall_14d
    move-exception v0

    move-wide/from16 v1, v21

    goto/16 :goto_203

    .line 2943
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    .restart local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v18    # "doAutoShow":Z
    .restart local v19    # "isTextEditor":Z
    .restart local v20    # "didStart":Z
    :pswitch_152
    move-object v7, v3

    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2943
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_19f

    .line 2946
    invoke-virtual {v8, v0, v7}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_19f

    .line 2941
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_15f
    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2941
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    goto :goto_19f

    .line 2913
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_164
    move v0, v7

    move-wide/from16 v21, v12

    move/from16 v12, p10

    move-object v7, v3

    .line 2913
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    if-eqz v19, :cond_194

    if-nez v18, :cond_16f

    goto :goto_194

    .line 2921
    :cond_16f
    if-eqz v19, :cond_19f

    if-eqz v18, :cond_19f

    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_19f

    .line 2931
    if-eqz p7, :cond_18e

    .line 2932
    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move v6, v10

    move-object v0, v7

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    move-object v15, v1

    .line 2934
    const/4 v1, 0x1

    .line 2936
    .end local v20    # "didStart":Z
    .local v1, "didStart":Z
    move/from16 v20, v1

    goto :goto_18f

    .line 2936
    .end local v1    # "didStart":Z
    .restart local v20    # "didStart":Z
    :cond_18e
    move-object v0, v7

    :goto_18f
    const/4 v1, 0x1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_19f

    .line 2914
    :cond_194
    :goto_194
    move-object v0, v7

    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 2919
    const/4 v1, 0x2

    invoke-virtual {v8, v1, v0}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2991
    :cond_19f
    :goto_19f
    if-nez v20, :cond_1c8

    .line 2992
    if-eqz p7, :cond_1c5

    .line 2993
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$DebugFlag;->value()Z

    move-result v0

    if-eqz v0, :cond_1b4

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_1b0

    goto :goto_1b4

    .line 3000
    :cond_1b0
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_EDITOR:Lcom/android/internal/view/InputBindResult;

    move-object v15, v0

    goto :goto_1c8

    .line 2996
    :cond_1b4
    :goto_1b4
    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move v6, v10

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    move-object v15, v0

    goto :goto_1c8

    .line 3003
    :cond_1c5
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;
    :try_end_1c7
    .catchall {:try_start_f1 .. :try_end_1c7} :catchall_14d

    move-object v15, v0

    .line 3006
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v18    # "doAutoShow":Z
    .end local v19    # "isTextEditor":Z
    .end local v20    # "didStart":Z
    :cond_1c8
    :goto_1c8
    :try_start_1c8
    monitor-exit v17
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1d0

    .line 3008
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3009
    .end local v21    # "ident":J
    .local v1, "ident":J
    nop

    .line 3011
    return-object v15

    .line 3006
    .end local v1    # "ident":J
    .restart local v21    # "ident":J
    :catchall_1d0
    move-exception v0

    move-wide/from16 v1, v21

    .line 3006
    .end local v21    # "ident":J
    .restart local v1    # "ident":J
    goto :goto_203

    .line 3006
    .end local v1    # "ident":J
    .restart local v12    # "ident":J
    :catchall_1d4
    move-exception v0

    move-wide v1, v12

    move/from16 v12, p10

    .line 3006
    .end local v12    # "ident":J
    .restart local v1    # "ident":J
    goto :goto_203

    .line 2845
    .end local v1    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :cond_1d9
    move-object/from16 v17, v5

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    move-object v14, v4

    .line 2845
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v6    # "ident":J
    .restart local v1    # "ident":J
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v16    # "calledFromValidUser":Z
    :try_start_1e0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3006
    .end local v1    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :catchall_1fc
    move-exception v0

    move-object/from16 v17, v5

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    .line 3006
    .end local v6    # "ident":J
    .end local v14    # "calledFromValidUser":Z
    .restart local v1    # "ident":J
    .restart local v16    # "calledFromValidUser":Z
    :goto_203
    monitor-exit v17
    :try_end_204
    .catchall {:try_start_1e0 .. :try_end_204} :catchall_207

    :try_start_204
    throw v0
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_205

    .line 3008
    :catchall_205
    move-exception v0

    goto :goto_20e

    .line 3006
    :catchall_207
    move-exception v0

    goto :goto_203

    .line 3008
    .end local v1    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v6    # "ident":J
    .restart local v14    # "calledFromValidUser":Z
    :catchall_209
    move-exception v0

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    .line 3008
    .end local v6    # "ident":J
    .end local v14    # "calledFromValidUser":Z
    .restart local v1    # "ident":J
    .restart local v16    # "calledFromValidUser":Z
    :goto_20e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    nop

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_164
        :pswitch_15f
        :pswitch_152
        :pswitch_143
        :pswitch_111
        :pswitch_d7
    .end packed-switch
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .registers 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1730
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1731
    return-void

    .line 1733
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1734
    :try_start_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    monitor-exit v0

    .line 1737
    return-void

    .line 1736
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;
    .registers 22
    .param p1, "startInputReason"    # I
    .param p2, "initial"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    move-object/from16 v0, p0

    .line 1823
    iget-boolean v1, v0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v1, :cond_1c

    .line 1824
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1826
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1829
    :cond_1c
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1830
    .local v1, "startInputToken":Landroid/os/Binder;
    new-instance v11, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    xor-int/lit8 v6, p2, 0x1

    iget-object v7, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v9, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget v10, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    move-object v2, v11

    move/from16 v5, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/InputMethodManagerService$StartInputInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    move-object v10, v11

    .line 1833
    .local v10, "info":Lcom/android/server/InputMethodManagerService$StartInputInfo;
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v2, v10}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    .line 1836
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v11, v2, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 1837
    .local v11, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    iget-object v12, v11, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7d0

    iget v4, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 1838
    xor-int/lit8 v5, p2, 0x1

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v9, v0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1837
    move-object v6, v1

    move-object v7, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1840
    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_69

    .line 1842
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1844
    :cond_69
    new-instance v2, Lcom/android/internal/view/InputBindResult;

    const/4 v13, 0x0

    iget-object v14, v11, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 1845
    iget-object v4, v11, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_7a

    iget-object v3, v11, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v3

    :goto_78
    move-object v15, v3

    goto :goto_7b

    :cond_7a
    goto :goto_78

    :goto_7b
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, v0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v12, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    .line 1844
    return-object v2
.end method

.method buildInputMethodListLocked(Z)V
    .registers 16
    .param p1, "resetDefaultEnabledIme"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 3681
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_c

    .line 3682
    const-string v0, "InputMethodManagerService"

    const-string v1, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    return-void

    .line 3685
    :cond_c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3686
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3687
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 3688
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 3691
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3696
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x8080

    .line 3698
    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->getComponentMatchingFlags(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3700
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    .line 3696
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 3702
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 3703
    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v3

    .line 3704
    .local v3, "additionalSubtypeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_47
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_ba

    .line 3705
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 3706
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3707
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v8

    .line 3708
    .local v8, "imeId":Ljava/lang/String;
    const-string v9, "android.permission.BIND_INPUT_METHOD"

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_84

    .line 3709
    const-string v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping input method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    goto :goto_b7

    .line 3717
    :cond_84
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 3719
    .local v9, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :try_start_8a
    new-instance v10, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v6, v9}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 3720
    .local v10, "p":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3721
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 3722
    .local v11, "id":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9f} :catch_a0

    .line 3729
    .end local v10    # "p":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "id":Ljava/lang/String;
    goto :goto_b7

    .line 3727
    :catch_a0
    move-exception v10

    .line 3728
    .local v10, "e":Ljava/lang/Exception;
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load input method "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3704
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "imeId":Ljava/lang/String;
    .end local v9    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 3739
    .end local v5    # "i":I
    :cond_ba
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.view.InputMethod"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x200

    .line 3741
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->getComponentMatchingFlags(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3742
    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3739
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 3743
    .local v5, "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 3744
    .local v6, "N":I
    move v7, v4

    .local v7, "i":I
    :goto_d6
    if-ge v7, v6, :cond_f4

    .line 3745
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3746
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    const-string v9, "android.permission.BIND_INPUT_METHOD"

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f1

    .line 3747
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 3744
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    :cond_f1
    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    .line 3752
    .end local v5    # "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_f4
    const/4 v5, 0x0

    .line 3754
    .local v5, "reenableMinimumNonAuxSystemImes":Z
    if-nez p1, :cond_12d

    .line 3755
    const/4 v6, 0x0

    .line 3756
    .local v6, "enabledImeFound":Z
    const/4 v7, 0x0

    .line 3757
    .local v7, "enabledNonAuxImeFound":Z
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    .line 3758
    .local v8, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 3759
    .local v9, "N":I
    move v10, v6

    move v6, v4

    .local v6, "i":I
    .local v10, "enabledImeFound":Z
    :goto_105
    if-ge v6, v9, :cond_121

    .line 3760
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 3761
    .local v11, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11e

    .line 3762
    const/4 v10, 0x1

    .line 3763
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v12

    if-nez v12, :cond_11e

    .line 3764
    const/4 v7, 0x1

    .line 3765
    goto :goto_121

    .line 3759
    .end local v11    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_11e
    add-int/lit8 v6, v6, 0x1

    goto :goto_105

    .line 3769
    .end local v6    # "i":I
    :cond_121
    :goto_121
    if-nez v10, :cond_12a

    .line 3773
    const/4 p1, 0x1

    .line 3774
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    goto :goto_12d

    .line 3775
    :cond_12a
    if-nez v7, :cond_12d

    .line 3779
    const/4 v5, 0x1

    .line 3783
    .end local v7    # "enabledNonAuxImeFound":Z
    .end local v8    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "N":I
    .end local v10    # "enabledImeFound":Z
    :cond_12d
    :goto_12d
    if-nez p1, :cond_131

    if-eqz v5, :cond_150

    .line 3784
    :cond_131
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 3785
    invoke-static {v6, v7, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 3787
    .local v6, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3788
    .local v7, "N":I
    nop

    .local v4, "i":I
    :goto_13e
    if-ge v4, v7, :cond_150

    .line 3789
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 3793
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 3788
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_13e

    .line 3797
    .end local v4    # "i":I
    .end local v6    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "N":I
    :cond_150
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 3798
    .local v4, "defaultImiId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_178

    .line 3799
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_175

    .line 3800
    const-string v6, "InputMethodManagerService"

    const-string v7, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v6

    if-eqz v6, :cond_178

    .line 3802
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_178

    .line 3806
    :cond_175
    invoke-virtual {p0, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 3813
    :cond_178
    :goto_178
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 3814
    return-void
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 3
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2157
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2158
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2159
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2160
    return-void
.end method

.method clearCurMethodLocked()V
    .registers 4

    .line 2181
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_28

    .line 2182
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2183
    .local v1, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2184
    .end local v1    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    goto :goto_e

    .line 2186
    :cond_1e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2188
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2190
    :cond_28
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 2191
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2193
    :cond_34
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    .line 2194
    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3285
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3286
    return-void

    .line 3288
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3289
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3290
    monitor-exit v0

    return-void

    .line 3292
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_19

    .line 3293
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V

    .line 3294
    return-void

    .line 3292
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4620
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4621
    return-object v1

    .line 4624
    :cond_8
    if-eqz p1, :cond_b5

    .line 4627
    if-eqz p3, :cond_ac

    .line 4630
    if-eqz p2, :cond_a4

    .line 4633
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4634
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 4638
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4639
    :try_start_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4640
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v4, :cond_27

    .line 4641
    monitor-exit v2

    return-object v1

    .line 4643
    :cond_27
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v4, p1, :cond_4d

    .line 4644
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    monitor-exit v2

    return-object v1

    .line 4651
    :cond_4d
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 4652
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    monitor-exit v2

    return-object v1

    .line 4657
    :cond_7b
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4659
    .local v1, "imeUserId":I
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 4661
    .local v9, "appUserId":I
    invoke-static {p2, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 4663
    .local v8, "contentUriOwnerUserId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 4670
    .local v5, "contentUriWithoutUserId":Landroid/net/Uri;
    new-instance v10, Lcom/android/server/InputContentUriTokenHandler;

    move-object v4, v10

    move v6, v3

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v2

    return-object v10

    .line 4672
    .end local v1    # "imeUserId":I
    .end local v3    # "uid":I
    .end local v5    # "contentUriWithoutUserId":Landroid/net/Uri;
    .end local v8    # "contentUriOwnerUserId":I
    .end local v9    # "appUserId":I
    :catchall_99
    move-exception v1

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_1d .. :try_end_9b} :catchall_99

    throw v1

    .line 4635
    :cond_9c
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "contentUri must have content scheme"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4631
    .end local v0    # "contentUriScheme":Ljava/lang/String;
    :cond_a4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4628
    :cond_ac
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4625
    :cond_b5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4694
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4700
    :cond_b
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4702
    .local v0, "p":Landroid/util/Printer;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4703
    :try_start_13
    const-string v2, "Current Input Method Manager state:"

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4704
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4705
    .local v2, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mBindInstantServiceAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4707
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    if-ge v3, v2, :cond_6a

    .line 4708
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 4709
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  InputMethod #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4710
    const-string v5, "    "

    invoke-virtual {v4, v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4707
    .end local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 4712
    .end local v3    # "i":I
    :cond_6a
    const-string v3, "  Clients:"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4713
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4714
    .local v4, "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    inputContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    sessionRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4718
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    curSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4719
    .end local v4    # "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    goto :goto_79

    .line 4720
    :cond_f7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurMethodId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4721
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4722
    .local v3, "client":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCurSeq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurFocusedWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " softInputMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 4725
    invoke-static {v5}, Lcom/android/internal/view/InputMethodClient;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4723
    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4727
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4728
    .local v4, "focusedWindowClient":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mHaveConnect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mBoundToMethod="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurIntent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4732
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 4733
    .local v5, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mEnabledSession="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mImeWindowVis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->imeWindowStatusToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mShowRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mShowExplicitlyRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mShowForced="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mInputShown="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mInFullscreenMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4743
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSystemReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mInteractive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSettingsObserver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4745
    const-string v6, "  mSwitchingController:"

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4746
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v6, v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 4747
    const-string v6, "  mSettings:"

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4748
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v7, "    "

    invoke-virtual {v6, v0, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4750
    const-string v6, "  mStartInputHistory:"

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4751
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    const-string v7, "   "

    invoke-virtual {v6, p2, v7}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4752
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_2b4
    .catchall {:try_start_13 .. :try_end_2b4} :catchall_34b

    .line 4754
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4755
    if-eqz v3, :cond_2de

    .line 4756
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4758
    :try_start_2be
    iget-object v1, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2c7
    .catch Ljava/io/IOException; {:try_start_2be .. :try_end_2c7} :catch_2c8
    .catch Landroid/os/RemoteException; {:try_start_2be .. :try_end_2c7} :catch_2c8

    goto :goto_2dd

    .line 4759
    :catch_2c8
    move-exception v1

    .line 4760
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump input method client: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4761
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2dd
    goto :goto_2e3

    .line 4763
    :cond_2de
    const-string v1, "No input method client."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4766
    :goto_2e3
    if-eqz v4, :cond_31d

    if-eq v3, v4, :cond_31d

    .line 4767
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4768
    const-string v1, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4770
    const-string v1, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4771
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4772
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4774
    :try_start_2fe
    iget-object v1, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_307} :catch_308
    .catch Landroid/os/RemoteException; {:try_start_2fe .. :try_end_307} :catch_308

    .line 4777
    goto :goto_31d

    .line 4775
    :catch_308
    move-exception v1

    .line 4776
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump input method client in focused window: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4780
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_31d
    :goto_31d
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4781
    if-eqz v5, :cond_345

    .line 4782
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4784
    :try_start_327
    invoke-interface {v5}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_32e
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_32e} :catch_32f
    .catch Landroid/os/RemoteException; {:try_start_327 .. :try_end_32e} :catch_32f

    goto :goto_344

    .line 4785
    :catch_32f
    move-exception v1

    .line 4786
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump input method service: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4787
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_344
    goto :goto_34a

    .line 4789
    :cond_345
    const-string v1, "No input method service."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4791
    :goto_34a
    return-void

    .line 4752
    .end local v3    # "client":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "focusedWindowClient":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v5    # "method":Lcom/android/internal/view/IInputMethod;
    :catchall_34b
    move-exception v2

    :try_start_34c
    monitor-exit v1
    :try_end_34d
    .catchall {:try_start_34c .. :try_end_34d} :catchall_34b

    throw v2
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .registers 4
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .line 1766
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    .line 1767
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_14

    .line 1769
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1770
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 1772
    :goto_14
    return-void
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 2
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 2063
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .line 4261
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4262
    const/4 v0, 0x0

    return-object v0

    .line 4264
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4265
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4266
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1691
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1694
    :cond_b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1697
    :try_start_e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->filterSecMethodLocked(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1698
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1709
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1710
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1712
    :cond_b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1714
    if-nez p1, :cond_21

    :try_start_10
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1715
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_29

    .line 1724
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_1f
    move-exception v1

    goto :goto_3b

    .line 1717
    :cond_21
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1719
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_29
    if-nez v1, :cond_31

    .line 1720
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1722
    :cond_31
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1724
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_1f

    throw v1
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 2

    .line 3280
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 8

    .line 3214
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3215
    return-object v1

    .line 3217
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3218
    :try_start_b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v2

    .line 3220
    .local v2, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_57

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 3221
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_57

    .line 3222
    :cond_28
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3223
    .local v3, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_36

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_59

    return-object v1

    .line 3225
    :cond_36
    :try_start_36
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3226
    .local v4, "lastSubtypeHash":I
    nop

    .line 3227
    invoke-static {v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 3228
    .local v5, "lastSubtypeId":I
    if-ltz v5, :cond_52

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    if-lt v5, v6, :cond_4c

    goto :goto_52

    .line 3231
    :cond_4c
    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_50} :catch_54
    .catchall {:try_start_36 .. :try_end_50} :catchall_59

    :try_start_50
    monitor-exit v0

    return-object v6

    .line 3229
    :cond_52
    :goto_52
    monitor-exit v0

    return-object v1

    .line 3232
    .end local v4    # "lastSubtypeHash":I
    .end local v5    # "lastSubtypeId":I
    :catch_54
    move-exception v4

    .line 3233
    .local v4, "e":Ljava/lang/NumberFormatException;
    monitor-exit v0

    return-object v1

    .line 3221
    .end local v3    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_57
    :goto_57
    monitor-exit v0

    return-object v1

    .line 3235
    .end local v2    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .registers 7

    .line 4312
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4313
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4314
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_25

    .line 4318
    const-string/jumbo v2, "voice"

    .line 4319
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 4321
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v2, :cond_23

    .line 4322
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4323
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4325
    :cond_23
    monitor-exit v0

    return-object v1

    .line 4327
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_25
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4328
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4329
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4330
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4331
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_4a

    .line 4332
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5a
    goto :goto_2f

    .line 4333
    :cond_5b
    monitor-exit v0

    return-object v1

    .line 4334
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public getVrInputMethodList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1666
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 3406
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_26a

    .line 3608
    return v1

    .line 3604
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3605
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->onUnlockUser(I)V

    .line 3606
    return v2

    .line 3601
    .end local v0    # "userId":I
    :sswitch_e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_16

    move v1, v2

    nop

    :cond_16
    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    .line 3602
    return v2

    .line 3570
    :sswitch_1a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_20

    move v1, v2

    nop

    :cond_20
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->handleSwitchInputMethod(Z)V

    .line 3571
    return v2

    .line 3587
    :sswitch_24
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2a

    move v1, v2

    nop

    :cond_2a
    move v0, v1

    .line 3588
    .local v0, "fullscreen":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3590
    .local v1, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_2f
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    .line 3595
    goto :goto_60

    .line 3591
    :catch_35
    move-exception v3

    .line 3592
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") notification to pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_60
    return v2

    .line 3573
    .end local v0    # "fullscreen":Z
    .end local v1    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :sswitch_61
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3574
    .local v0, "sequenceNumber":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3576
    .restart local v1    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_67
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_6d

    .line 3583
    goto :goto_98

    .line 3577
    :catch_6d
    move-exception v3

    .line 3578
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") notification to pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_98
    return v2

    .line 3564
    .end local v0    # "sequenceNumber":I
    .end local v1    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :sswitch_99
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_9f

    move v1, v2

    nop

    :cond_9f
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 3565
    return v2

    .line 3556
    :sswitch_a3
    :try_start_a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_af

    move v3, v2

    goto :goto_b0

    :cond_af
    move v3, v1

    :goto_b0
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_b6

    move v1, v2

    nop

    :cond_b6
    invoke-interface {v0, v3, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_b9} :catch_ba

    .line 3561
    goto :goto_e5

    .line 3557
    :catch_ba
    move-exception v0

    .line 3558
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e5
    return v2

    .line 3537
    :sswitch_e6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3538
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 3539
    .local v1, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InputBindResult;

    .line 3541
    .local v3, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_f2
    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f5} :catch_107
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_105

    .line 3547
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_12b

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 3548
    :goto_ff
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    goto :goto_12b

    .line 3547
    :catchall_105
    move-exception v2

    goto :goto_12f

    .line 3542
    :catch_107
    move-exception v4

    .line 3543
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_108
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client died receiving input method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_108 .. :try_end_120} :catchall_105

    .line 3547
    .end local v4    # "e":Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_12b

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_12b

    goto :goto_ff

    .line 3551
    :cond_12b
    :goto_12b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3552
    return v2

    .line 3547
    :goto_12f
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_13e

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 3548
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    :cond_13e
    throw v2

    .line 3531
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_13f
    :try_start_13f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_14a} :catch_14b

    .line 3534
    goto :goto_14c

    .line 3532
    :catch_14b
    move-exception v0

    .line 3535
    :goto_14c
    return v2

    .line 3567
    :sswitch_14d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->startVrInputMethodNoCheck(Landroid/content/ComponentName;)V

    .line 3568
    return v2

    .line 3510
    :sswitch_155
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3511
    .local v0, "missingMethods":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_15d

    move v8, v2

    goto :goto_15e

    :cond_15d
    move v8, v1

    .line 3512
    .local v8, "restarting":Z
    :goto_15e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3513
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/os/IBinder;

    .line 3514
    .local v9, "startInputToken":Landroid/os/IBinder;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3515
    .local v10, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Lcom/android/internal/view/IInputContext;

    .line 3516
    .local v11, "inputContext":Lcom/android/internal/view/IInputContext;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/view/inputmethod/EditorInfo;

    .line 3518
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_176
    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 3519
    iget-object v3, v10, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    move-object v4, v9

    move-object v5, v11

    move v6, v0

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;Z)V
    :try_end_181
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_181} :catch_182

    .line 3522
    goto :goto_183

    .line 3521
    :catch_182
    move-exception v3

    .line 3523
    :goto_183
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3524
    return v2

    .line 3491
    .end local v0    # "missingMethods":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v8    # "restarting":Z
    .end local v9    # "startInputToken":Landroid/os/IBinder;
    .end local v10    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    .end local v11    # "inputContext":Lcom/android/internal/view/IInputContext;
    :sswitch_187
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3492
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    .line 3493
    .local v1, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    .line 3495
    .local v3, "channel":Landroid/view/InputChannel;
    :try_start_193
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_19a
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_19a} :catch_1b0
    .catchall {:try_start_193 .. :try_end_19a} :catchall_1a3

    .line 3500
    if-eqz v3, :cond_1bc

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    goto :goto_1b9

    :catchall_1a3
    move-exception v2

    if-eqz v3, :cond_1af

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1af

    .line 3501
    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    :cond_1af
    throw v2

    .line 3496
    :catch_1b0
    move-exception v4

    .line 3500
    if-eqz v3, :cond_1bc

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 3501
    :goto_1b9
    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 3504
    :cond_1bc
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3505
    return v2

    .line 3482
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "method":Lcom/android/internal/view/IInputMethod;
    .end local v3    # "channel":Landroid/view/InputChannel;
    :sswitch_1c0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3485
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1c4
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_1cf
    .catch Landroid/os/RemoteException; {:try_start_1c4 .. :try_end_1cf} :catch_1d0

    .line 3487
    goto :goto_1d1

    .line 3486
    :catch_1d0
    move-exception v1

    .line 3488
    :goto_1d1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3489
    return v2

    .line 3477
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1d5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3478
    const/4 v3, 0x0

    :try_start_1d9
    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3479
    monitor-exit v0

    .line 3480
    return v2

    .line 3479
    :catchall_1de
    move-exception v1

    monitor-exit v0
    :try_end_1e0
    .catchall {:try_start_1d9 .. :try_end_1e0} :catchall_1de

    throw v1

    .line 3467
    :sswitch_1e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3471
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1e5
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1e5 .. :try_end_1f0} :catch_1f1

    .line 3473
    goto :goto_1f2

    .line 3472
    :catch_1f1
    move-exception v1

    .line 3474
    :goto_1f2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3475
    return v2

    .line 3455
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_1f6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3459
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1fa
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_207
    .catch Landroid/os/RemoteException; {:try_start_1fa .. :try_end_207} :catch_208

    .line 3463
    goto :goto_210

    .line 3460
    :catch_208
    move-exception v1

    .line 3462
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Failed to invoke ime show."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3464
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_210
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3465
    return v2

    .line 3447
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3449
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_218
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_223
    .catch Landroid/os/RemoteException; {:try_start_218 .. :try_end_223} :catch_224

    .line 3451
    goto :goto_225

    .line 3450
    :catch_224
    move-exception v1

    .line 3452
    :goto_225
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3453
    return v2

    .line 3441
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_229
    :try_start_229
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_230
    .catch Landroid/os/RemoteException; {:try_start_229 .. :try_end_230} :catch_231

    .line 3444
    goto :goto_232

    .line 3442
    :catch_231
    move-exception v0

    .line 3445
    :goto_232
    return v2

    .line 3434
    :sswitch_233
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    .line 3435
    return v2

    .line 3430
    :sswitch_237
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 3431
    return v2

    .line 3409
    :sswitch_23f
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2c0

    .line 3423
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown subtype picker mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    return v1

    .line 3420
    :pswitch_25d
    const/4 v0, 0x0

    .line 3421
    .local v0, "showAuxSubtypes":Z
    goto :goto_264

    .line 3417
    .end local v0    # "showAuxSubtypes":Z
    :pswitch_25f
    const/4 v0, 0x1

    .line 3418
    .restart local v0    # "showAuxSubtypes":Z
    goto :goto_264

    .line 3414
    .end local v0    # "showAuxSubtypes":Z
    :pswitch_261
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3415
    .restart local v0    # "showAuxSubtypes":Z
    nop

    .line 3424
    :goto_264
    nop

    .line 3426
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    .line 3427
    return v2

    nop

    :sswitch_data_26a
    .sparse-switch
        0x1 -> :sswitch_23f
        0x2 -> :sswitch_237
        0x3 -> :sswitch_233
        0x3e8 -> :sswitch_229
        0x3f2 -> :sswitch_214
        0x3fc -> :sswitch_1f6
        0x406 -> :sswitch_1e1
        0x40b -> :sswitch_1d5
        0x410 -> :sswitch_1c0
        0x41a -> :sswitch_187
        0x7d0 -> :sswitch_155
        0x7da -> :sswitch_14d
        0xbb8 -> :sswitch_13f
        0xbc2 -> :sswitch_e6
        0xbcc -> :sswitch_a3
        0xbd6 -> :sswitch_99
        0xbe0 -> :sswitch_61
        0xbe5 -> :sswitch_24
        0xbea -> :sswitch_1a
        0xfa0 -> :sswitch_e
        0x1388 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_2c0
    .packed-switch 0x0
        :pswitch_261
        :pswitch_25f
        :pswitch_25d
    .end packed-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 9
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2744
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_e

    .line 2747
    :cond_d
    return v1

    .line 2749
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_17

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_17

    .line 2751
    return v1

    .line 2762
    :cond_17
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_26

    :cond_25
    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    move v0, v2

    .line 2765
    .local v0, "shouldHideSoftInput":Z
    if-eqz v0, :cond_3b

    .line 2770
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x406

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2772
    const/4 v2, 0x1

    .local v2, "res":Z
    goto :goto_3c

    .line 2774
    .end local v2    # "res":Z
    :cond_3b
    move v2, v1

    .line 2782
    .restart local v2    # "res":Z
    :goto_3c
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2783
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2784
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2785
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 2786
    return v2
.end method

.method hideInputMethodMenu()V
    .registers 3

    .line 4046
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4047
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4048
    monitor-exit v0

    .line 4049
    return-void

    .line 4048
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .registers 5

    .line 4054
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 4055
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 4056
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    .line 4057
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4060
    :cond_e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 4061
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    .line 4062
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4063
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 3348
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3349
    return-void

    .line 3351
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3352
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3353
    monitor-exit v0

    return-void

    .line 3355
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_25

    .line 3357
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_20

    .line 3359
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3360
    nop

    .line 3361
    .end local v1    # "ident":J
    monitor-exit v0

    .line 3362
    return-void

    .line 3359
    .restart local v1    # "ident":J
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3361
    .end local v1    # "ident":J
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    throw v1
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 11
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2712
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2713
    return v1

    .line 2715
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2716
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2718
    .local v2, "ident":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_47

    .line 2719
    :try_start_13
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v5, :cond_27

    if-eqz p1, :cond_27

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2720
    invoke-interface {v5}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_44

    if-eq v5, v6, :cond_35

    .line 2725
    :cond_27
    :try_start_27
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v5
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_3e
    .catchall {:try_start_27 .. :try_end_2d} :catchall_44

    if-nez v5, :cond_34

    .line 2728
    :try_start_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_44

    .line 2739
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2728
    return v1

    .line 2732
    :cond_34
    nop

    .line 2736
    :cond_35
    :try_start_35
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v1

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_44

    .line 2739
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2736
    return v1

    .line 2730
    :catch_3e
    move-exception v5

    .line 2731
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_44

    .line 2739
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2731
    return v1

    .line 2737
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 2739
    :catchall_47
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isInputMethodPickerShownForTest()Z
    .registers 3

    .line 3056
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3057
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    if-nez v1, :cond_a

    .line 3058
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3060
    :cond_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3061
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public isTokenValid(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5169
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5170
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5171
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 2459
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2460
    return v1

    .line 2462
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2463
    :try_start_b
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 2465
    .local v2, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_62

    .line 2466
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v3

    .line 2467
    .local v3, "suggestions":[Ljava/lang/String;
    if-ltz p3, :cond_60

    array-length v4, v3

    if-lt p3, v4, :cond_1f

    goto :goto_60

    .line 2468
    :cond_1f
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v1

    .line 2469
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2472
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2473
    const-string v5, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2474
    const-string v5, "before"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2475
    const-string v5, "after"

    aget-object v6, v3, p3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2476
    const-string v5, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_64

    .line 2479
    .local v5, "ident":J
    :try_start_4d
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_5b

    .line 2481
    :try_start_54
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    nop

    .line 2483
    const/4 v7, 0x1

    monitor-exit v0

    return v7

    .line 2481
    :catchall_5b
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2467
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "ident":J
    :cond_60
    :goto_60
    monitor-exit v0

    return v1

    .line 2485
    .end local v2    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "suggestions":[Ljava/lang/String;
    :cond_62
    monitor-exit v0

    .line 2486
    return v1

    .line 2485
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public notifyUserAction(I)V
    .registers 6
    .param p1, "sequenceNumber"    # I

    .line 3301
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3302
    :try_start_3
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    if-eq v1, p1, :cond_9

    .line 3308
    monitor-exit v0

    return-void

    .line 3310
    :cond_9
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3311
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1c

    .line 3312
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3314
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1c
    monitor-exit v0

    .line 3315
    return-void

    .line 3314
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method onActionLocaleChanged()V
    .registers 5

    .line 975
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 976
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 977
    .local v1, "possibleNewLocale":Landroid/os/LocaleList;
    if-eqz v1, :cond_19

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 978
    monitor-exit v0

    return-void

    .line 980
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 982
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 983
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 984
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 985
    .end local v1    # "possibleNewLocale":Landroid/os/LocaleList;
    monitor-exit v0

    .line 986
    return-void

    .line 985
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2067
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2068
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2069
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2070
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v1, :cond_2a

    .line 2071
    const-string v1, "InputMethodManagerService"

    const-string v2, "Service connected without a token!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 2073
    monitor-exit v0

    return-void

    .line 2076
    :cond_2a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x410

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2078
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_49

    .line 2079
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2080
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2083
    :cond_49
    monitor-exit v0

    .line 2084
    return-void

    .line 2083
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2205
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2209
    :try_start_3
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mCurIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", componentName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2213
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2214
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2218
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2220
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2222
    :cond_53
    monitor-exit v0

    .line 2223
    return-void

    .line 2222
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 10
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 2088
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2089
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_49

    if-eqz p1, :cond_49

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2090
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_49

    .line 2091
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_49

    .line 2092
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2093
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v2, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v2, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2095
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    .line 2097
    .local v1, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_47

    .line 2098
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2101
    :cond_47
    monitor-exit v0

    return-void

    .line 2104
    .end local v1    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4e

    .line 2107
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2108
    return-void

    .line 2104
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4799
    new-instance v0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4801
    return-void
.end method

.method onSwitchUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1347
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1348
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    .line 1349
    monitor-exit v0

    .line 1350
    return-void

    .line 1349
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1518
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 1519
    :catch_5
    move-exception v0

    .line 1522
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 1523
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1525
    :cond_11
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1329
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1330
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 1334
    .local v1, "currentUserId":I
    if-eq p1, v1, :cond_d

    .line 1335
    monitor-exit v0

    return-void

    .line 1337
    :cond_d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1338
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_21

    .line 1340
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1341
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1343
    .end local v1    # "currentUserId":I
    :cond_21
    monitor-exit v0

    .line 1344
    return-void

    .line 1343
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 7
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .line 2443
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2444
    return-void

    .line 2446
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2447
    :try_start_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2448
    .local v1, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, p1

    if-ge v2, v3, :cond_2c

    .line 2449
    aget-object v3, p1, v2

    .line 2450
    .local v3, "ss":Landroid/text/style/SuggestionSpan;
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 2451
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v4, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    .end local v3    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2454
    .end local v1    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v0

    .line 2455
    return-void

    .line 2454
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 9
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1741
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1742
    return-void

    .line 1744
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1745
    :try_start_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1746
    .local v1, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v1, :cond_42

    .line 1747
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 1748
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_3c

    .line 1749
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v2, :cond_3a

    .line 1750
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1751
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_3a

    .line 1752
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x3e8

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1756
    :cond_3a
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1758
    :cond_3c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v2, v1, :cond_42

    .line 1759
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1762
    .end local v1    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_42
    monitor-exit v0

    .line 1763
    return-void

    .line 1762
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_44

    throw v1
.end method

.method removeCustomTitle()V
    .registers 4

    .line 5157
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    .line 5158
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Lmiui/app/AlertDialog$Builder;

    const v2, 0x1040616

    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 5159
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 5160
    return-void
.end method

.method public reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fullscreen"    # Z

    .line 4677
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4678
    return-void

    .line 4680
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4681
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 4682
    monitor-exit v0

    return-void

    .line 4684
    :cond_12
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2f

    .line 4685
    iput-boolean p2, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    .line 4686
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe5

    .line 4687
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4686
    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4689
    :cond_2f
    monitor-exit v0

    .line 4690
    return-void

    .line 4689
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_31

    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 11
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2146
    iget-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_2a

    .line 2148
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2149
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2150
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x41a

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v1, v0, v1

    new-instance v6, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2154
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_2a
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .registers 3
    .param p1, "unbindClientReason"    # I

    .line 2140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 2142
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2143
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 3240
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3241
    return-void

    .line 3245
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    if-nez p2, :cond_10

    goto :goto_6d

    .line 3246
    :cond_10
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3247
    :try_start_13
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_19

    .line 3248
    monitor-exit v0

    return-void

    .line 3250
    :cond_19
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3251
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_25

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_6a

    return-void

    .line 3254
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_60
    .catchall {:try_start_25 .. :try_end_2f} :catchall_6a

    .line 3258
    .local v2, "packageInfos":[Ljava/lang/String;
    nop

    .line 3257
    nop

    .line 3259
    if-eqz v2, :cond_5e

    .line 3260
    :try_start_33
    array-length v3, v2

    .line 3261
    .local v3, "packageNum":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_36
    if-ge v5, v3, :cond_5e

    .line 3262
    aget-object v6, v2, v5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 3263
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v6, v1, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_6a

    .line 3266
    .local v6, "ident":J
    :try_start_4d
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_56

    .line 3268
    :try_start_50
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3269
    nop

    .line 3270
    monitor-exit v0

    return-void

    .line 3268
    :catchall_56
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3261
    .end local v6    # "ident":J
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 3274
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "packageInfos":[Ljava/lang/String;
    .end local v3    # "packageNum":I
    .end local v5    # "i":I
    :cond_5e
    monitor-exit v0

    .line 3275
    return-void

    .line 3255
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_60
    move-exception v2

    .line 3256
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Failed to get package infos"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    monitor-exit v0

    return-void

    .line 3274
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_6a

    throw v1

    .line 3245
    :cond_6d
    :goto_6d
    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 7
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 4340
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4341
    return v1

    .line 4343
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4344
    if-eqz p1, :cond_30

    :try_start_d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_30

    .line 4345
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4346
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3

    .line 4347
    .local v3, "subtypeId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    .line 4348
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 4349
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 4353
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "subtypeId":I
    :catchall_2e
    move-exception v1

    goto :goto_32

    .line 4352
    :cond_30
    monitor-exit v0

    return v1

    .line 4353
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_2e

    throw v1
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3383
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_36

    .line 3384
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1c

    .line 3387
    :try_start_e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 3389
    goto :goto_1c

    .line 3388
    :catch_1b
    move-exception v0

    .line 3391
    :cond_1c
    :goto_1c
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3392
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_36

    .line 3395
    :try_start_28
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_35

    .line 3397
    goto :goto_36

    .line 3396
    :catch_35
    move-exception v0

    .line 3400
    :cond_36
    :goto_36
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startInputToken"    # Landroid/os/IBinder;
    .param p3, "vis"    # I
    .param p4, "backDisposition"    # I

    .line 2335
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2336
    return-void

    .line 2340
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2341
    :try_start_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    .line 2342
    .local v1, "info":Lcom/android/server/InputMethodManagerService$StartInputInfo;
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 2343
    iput p4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 2344
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2345
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_3d

    .line 2348
    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p4, :pswitch_data_40

    .line 2357
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_29

    move v3, v2

    goto :goto_2a

    .line 2350
    :pswitch_25
    const/4 v3, 0x1

    .line 2351
    .local v3, "dismissImeOnBackKeyPressed":Z
    goto :goto_2a

    .line 2353
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :pswitch_27
    const/4 v3, 0x0

    .line 2354
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    goto :goto_2a

    .line 2357
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :cond_29
    move v3, v0

    .line 2360
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    :goto_2a
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_32

    .line 2362
    move v0, v2

    goto :goto_33

    .line 2360
    :cond_32
    nop

    .line 2362
    :goto_33
    if-eqz v1, :cond_38

    iget-object v2, v1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    .line 2360
    :goto_39
    invoke-virtual {v4, p1, v0, v3, v2}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZLandroid/os/IBinder;)V

    .line 2363
    return-void

    .line 2345
    .end local v1    # "info":Lcom/android/server/InputMethodManagerService$StartInputInfo;
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_27
        :pswitch_25
    .end packed-switch
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .line 3066
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3067
    return-void

    .line 3069
    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3070
    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 3074
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3075
    return-void

    .line 3077
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3078
    if-eqz p3, :cond_22

    .line 3079
    :try_start_c
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 3080
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3081
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 3080
    invoke-static {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3079
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_25

    .line 3085
    :catchall_20
    move-exception v1

    goto :goto_27

    .line 3083
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3085
    :goto_25
    monitor-exit v0

    .line 3086
    return-void

    .line 3085
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_20

    throw v1
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 4069
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4070
    .local v0, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_63

    .line 4074
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4075
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    .line 4077
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_36

    .line 4078
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 4079
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 4082
    return v2

    .line 4084
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_2f
    goto :goto_18

    .line 4085
    :cond_30
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 4087
    return v3

    .line 4089
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4090
    .local v4, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5, v4, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 4093
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 4094
    .local v3, "selId":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v5

    if-nez v5, :cond_61

    .line 4095
    const-string v5, "InputMethodManagerService"

    const-string v6, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    const-string v5, ""

    invoke-direct {p0, v5}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4099
    :cond_61
    return v2

    .line 4103
    .end local v3    # "selId":Ljava/lang/String;
    :cond_62
    return v3

    .line 4071
    .end local v1    # "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .registers 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .line 2561
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2562
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_ac

    .line 2567
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2568
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 2569
    .local v1, "subtypeCount":I
    if-gtz v1, :cond_19

    .line 2570
    return-void

    .line 2572
    :cond_19
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2574
    .local v2, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_24

    if-ge p2, v1, :cond_24

    .line 2575
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .local v3, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_28

    .line 2579
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_24
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 2581
    .restart local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_28
    if-eqz v3, :cond_4f

    if-nez v2, :cond_2d

    goto :goto_4f

    .line 2586
    :cond_2d
    if-eq v3, v2, :cond_4e

    .line 2587
    const/4 v4, 0x1

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2588
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v4, :cond_4e

    .line 2590
    :try_start_37
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2591
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v4, v3}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_45} :catch_46

    .line 2594
    goto :goto_4e

    .line 2592
    :catch_46
    move-exception v4

    .line 2593
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "InputMethodManagerService"

    const-string v6, "Failed to call changeInputMethodSubtype"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4e
    :goto_4e
    return-void

    .line 2582
    :cond_4f
    :goto_4f
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal subtype state: old subtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new subtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    return-void

    .line 2601
    .end local v1    # "subtypeCount":I
    .end local v2    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2605
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_73
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2609
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2611
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 2612
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2613
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2614
    const-string v4, "input_method_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2615
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2617
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9e
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_a2
    .catchall {:try_start_73 .. :try_end_a2} :catchall_a7

    .line 2619
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    nop

    .line 2621
    return-void

    .line 2619
    :catchall_a7
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2563
    .end local v1    # "ident":J
    :cond_ac
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3195
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3196
    return v1

    .line 3198
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3199
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 3200
    monitor-exit v0

    return v1

    .line 3202
    :cond_13
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3203
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3202
    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v2

    .line 3205
    .local v2, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v2, :cond_2a

    .line 3206
    monitor-exit v0

    return v1

    .line 3208
    :cond_2a
    monitor-exit v0

    return v5

    .line 3209
    .end local v2    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 12
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2658
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 2659
    return v2

    .line 2662
    :cond_9
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_12

    .line 2663
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2664
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    goto :goto_18

    .line 2665
    :cond_12
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_18

    .line 2666
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2669
    :cond_18
    :goto_18
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_1d

    .line 2670
    return v2

    .line 2673
    :cond_1d
    const/4 v1, 0x0

    .line 2674
    .local v1, "res":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_39

    .line 2676
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3fc

    .line 2677
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2676
    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2679
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2687
    const/4 v1, 0x1

    goto :goto_7e

    .line 2688
    :cond_39
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_7e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v7, 0xbb8

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7e

    .line 2694
    const/16 v3, 0x7d00

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 2695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    .line 2694
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2696
    const-string v0, "InputMethodManagerService"

    const-string v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2698
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x40800005    # 4.0000024f

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2706
    :cond_7e
    :goto_7e
    return v1
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 7
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .line 3091
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3092
    return-void

    .line 3094
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3095
    :try_start_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3097
    monitor-exit v0

    .line 3098
    return-void

    .line 3097
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 7
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .line 3038
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3039
    return-void

    .line 3041
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3042
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 3043
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3043
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    monitor-exit v0

    return-void

    .line 3050
    :cond_34
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3052
    monitor-exit v0

    .line 3053
    return-void

    .line 3052
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_42

    throw v1
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 3366
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3367
    return-void

    .line 3369
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3370
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3371
    monitor-exit v0

    return-void

    .line 3373
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_25

    .line 3375
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_17
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_20

    .line 3377
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3378
    nop

    .line 3379
    .end local v1    # "ident":J
    monitor-exit v0

    .line 3380
    return-void

    .line 3377
    .restart local v1    # "ident":J
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3379
    .end local v1    # "ident":J
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    throw v1
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 12
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2626
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2627
    return v1

    .line 2629
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2630
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2632
    .local v2, "ident":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_65

    .line 2633
    :try_start_13
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v5, :cond_27

    if-eqz p1, :cond_27

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2634
    invoke-interface {v5}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_62

    if-eq v5, v6, :cond_53

    .line 2639
    :cond_27
    :try_start_27
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 2640
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring showSoftInput of uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_4d} :catch_5c
    .catchall {:try_start_27 .. :try_end_4d} :catchall_62

    .line 2641
    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_62

    .line 2652
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2641
    return v1

    .line 2645
    :cond_52
    nop

    .line 2649
    :cond_53
    :try_start_53
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v1

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_62

    .line 2652
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2649
    return v1

    .line 2643
    :catch_5c
    move-exception v5

    .line 2644
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    .line 2652
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2644
    return v1

    .line 2650
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    .line 2652
    :catchall_65
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .registers 10

    .line 1978
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1979
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1982
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1b

    .line 1985
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 1991
    :cond_1b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1992
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_c5

    .line 1996
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 1998
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 1999
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2000
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, 0x10402d1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2002
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_intent"

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2004
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v3, 0x40800005    # 4.0000024f

    invoke-direct {p0, v2, p0, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 2005
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2006
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2007
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2008
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2011
    :try_start_7c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v4, 0x7db

    invoke-interface {v2, v3, v4, v6}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V

    .line 2013
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-nez v2, :cond_95

    .line 2014
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v4, 0x2c000001

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2016
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_95} :catch_96

    .line 2020
    :cond_95
    goto :goto_97

    .line 2019
    :catch_96
    move-exception v1

    .line 2021
    :goto_97
    new-instance v1, Lcom/android/internal/view/InputBindResult;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v1

    .line 2026
    :cond_a7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2027
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    sget-object v1, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 1993
    :cond_c5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 15
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p4, "missingMethods"    # I
    .param p5, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p6, "controlFlags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1857
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1858
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1861
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1862
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_57

    .line 1867
    if-nez p5, :cond_3c

    .line 1868
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring startInput with null EditorInfo. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 1874
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1884
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_48} :catch_4a

    return-object v1

    .line 1887
    :cond_49
    goto :goto_4b

    .line 1886
    :catch_4a
    move-exception v1

    .line 1889
    :goto_4b
    move-object v1, p0

    move-object v2, v0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    return-object v1

    .line 1863
    :cond_57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .registers 18
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "controlFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I
    .param p10, "unverifiedTargetSdkVersion"    # I

    .line 2798
    if-eqz p3, :cond_7

    .line 2799
    invoke-direct/range {p0 .. p10}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .local v0, "result":Lcom/android/internal/view/InputBindResult;
    goto :goto_13

    .line 2803
    .end local v0    # "result":Lcom/android/internal/view/InputBindResult;
    :cond_7
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p8

    move/from16 v4, p9

    move-object v5, p7

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 2806
    .restart local v0    # "result":Lcom/android/internal/view/InputBindResult;
    :goto_13
    if-nez v0, :cond_47

    .line 2808
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    invoke-static {p1}, Lcom/android/internal/view/InputMethodClient;->getStartInputReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " windowFlags=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-static {p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2808
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 2814
    :cond_47
    move-object v3, p7

    return-object v0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    .registers 24
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "missingMethods"    # I
    .param p4, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p5, "controlFlags"    # I
    .param p6, "startInputReason"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1900
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 1901
    sget-object v3, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v3

    .line 1904
    :cond_d
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1906
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    sget-object v3, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v3

    .line 1911
    :cond_3e
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/MiuiSecurityInputMethodHelper;->mayChangeInputMethodLocked(Landroid/view/inputmethod/EditorInfo;)Z

    .line 1913
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/4 v4, 0x1

    if-eq v3, v1, :cond_64

    .line 1915
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 1918
    invoke-virtual {v0, v4}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 1923
    iget-boolean v3, v0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v3, :cond_64

    .line 1924
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0xbcc

    .line 1925
    iget-boolean v7, v0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 1924
    invoke-virtual {v5, v6, v7, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1930
    :cond_64
    iget v3, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1931
    iget v3, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v3, :cond_6f

    iput v4, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1932
    :cond_6f
    iput-object v1, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1933
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 1934
    move/from16 v5, p3

    iput v5, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 1935
    iput-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1938
    iget-object v6, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v6, :cond_fe

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 1939
    iget-object v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const/4 v7, 0x0

    if-eqz v6, :cond_9d

    .line 1942
    move/from16 v6, p5

    and-int/lit16 v8, v6, 0x100

    if-eqz v8, :cond_96

    move v7, v4

    nop

    :cond_96
    move/from16 v8, p6

    invoke-virtual {v0, v8, v7}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v4

    return-object v4

    .line 1945
    :cond_9d
    move/from16 v6, p5

    move/from16 v8, p6

    iget-boolean v9, v0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v9, :cond_102

    .line 1946
    iget-object v9, v0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v9, :cond_be

    .line 1949
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 1950
    new-instance v4, Lcom/android/internal/view/InputBindResult;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v7, v0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v10, v4

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v4

    .line 1954
    :cond_be
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v13, 0xbb8

    add-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-gez v9, :cond_dd

    .line 1963
    new-instance v4, Lcom/android/internal/view/InputBindResult;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v7, v0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v10, v4

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v4

    .line 1968
    :cond_dd
    const/16 v9, 0x7d00

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v11, v10, v7

    .line 1969
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v4, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    .line 1968
    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_102

    .line 1974
    :cond_fe
    move/from16 v6, p5

    move/from16 v8, p6

    :cond_102
    :goto_102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;

    move-result-object v4

    return-object v4
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .line 3174
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3175
    return v1

    .line 3177
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3178
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 3179
    monitor-exit v0

    return v1

    .line 3181
    :cond_13
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3182
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3181
    const/4 v5, 0x1

    invoke-virtual {v2, p2, v3, v4, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v2

    .line 3184
    .local v2, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v2, :cond_2a

    .line 3185
    monitor-exit v0

    return v1

    .line 3187
    :cond_2a
    iget-object v1, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3189
    monitor-exit v0

    return v5

    .line 3190
    .end local v2    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_37

    throw v1
.end method

.method public switchToPreviousInputMethod(Landroid/os/IBinder;)Z
    .registers 18
    .param p1, "token"    # Landroid/os/IBinder;

    move-object/from16 v1, p0

    .line 3102
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 3103
    return v2

    .line 3105
    :cond_a
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3106
    :try_start_d
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v0

    .line 3108
    .local v0, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_20

    .line 3109
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 3109
    .local v4, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_21

    .line 3111
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_20
    const/4 v4, 0x0

    .line 3113
    .restart local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_21
    const/4 v5, 0x0

    .line 3114
    .local v5, "targetLastImiId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 3115
    .local v6, "subtypeId":I
    if-eqz v0, :cond_53

    if-eqz v4, :cond_53

    .line 3116
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3117
    .local v7, "imiIdIsSame":Z
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3118
    .local v8, "lastSubtypeHash":I
    iget-object v9, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v9, :cond_3f

    const/4 v9, -0x1

    goto :goto_45

    .line 3119
    :cond_3f
    iget-object v9, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    .line 3122
    .local v9, "currentSubtypeHash":I
    :goto_45
    if-eqz v7, :cond_49

    if-eq v8, v9, :cond_53

    .line 3123
    :cond_49
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 3124
    invoke-static {v4, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v10

    move v6, v10

    .line 3128
    .end local v7    # "imiIdIsSame":Z
    .end local v8    # "lastSubtypeHash":I
    .end local v9    # "currentSubtypeHash":I
    :cond_53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c8

    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3129
    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_c8

    .line 3133
    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 3134
    .local v7, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v7, :cond_c8

    .line 3135
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 3136
    .local v9, "N":I
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v10, :cond_7f

    .line 3137
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_85

    .line 3138
    :cond_7f
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    .line 3139
    .local v10, "locale":Ljava/lang/String;
    :goto_85
    move v11, v6

    move-object v6, v5

    move v5, v2

    .line 3139
    .local v5, "i":I
    .local v6, "targetLastImiId":Ljava/lang/String;
    .local v11, "subtypeId":I
    :goto_88
    if-ge v5, v9, :cond_ca

    .line 3140
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3141
    .local v12, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    if-lez v13, :cond_c5

    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v13

    if-eqz v13, :cond_c5

    .line 3142
    iget-object v13, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3144
    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "keyboard"

    .line 3143
    invoke-static {v13, v14, v15, v10, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 3146
    .local v13, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v13, :cond_c5

    .line 3147
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 3148
    nop

    .line 3149
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v14

    .line 3148
    invoke-static {v12, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v14

    move v11, v14

    .line 3150
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 3151
    goto :goto_ca

    .line 3139
    .end local v12    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_c5
    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    .line 3159
    .end local v7    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "N":I
    .end local v10    # "locale":Ljava/lang/String;
    .end local v11    # "subtypeId":I
    .local v5, "targetLastImiId":Ljava/lang/String;
    .local v6, "subtypeId":I
    :cond_c8
    move v11, v6

    move-object v6, v5

    .line 3159
    .end local v5    # "targetLastImiId":Ljava/lang/String;
    .local v6, "targetLastImiId":Ljava/lang/String;
    .restart local v11    # "subtypeId":I
    :cond_ca
    :goto_ca
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_ce
    .catchall {:try_start_d .. :try_end_ce} :catchall_db

    if-nez v5, :cond_d7

    .line 3164
    move-object/from16 v5, p1

    :try_start_d2
    invoke-direct {v1, v5, v6, v11}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3165
    monitor-exit v3

    return v8

    .line 3167
    :cond_d7
    move-object/from16 v5, p1

    monitor-exit v3

    return v2

    .line 3169
    .end local v0    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "targetLastImiId":Ljava/lang/String;
    .end local v11    # "subtypeId":I
    :catchall_db
    move-exception v0

    move-object/from16 v5, p1

    :goto_de
    monitor-exit v3
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_e0

    throw v0

    :catchall_e0
    move-exception v0

    goto :goto_de
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 10
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1530
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1534
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_e0

    .line 1535
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    .line 1536
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1537
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1538
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1539
    invoke-virtual {v4, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    .line 1538
    xor-int/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1540
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1541
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1542
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1543
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v4, 0x0

    if-eqz v3, :cond_4e

    .line 1544
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1546
    :cond_4e
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 1547
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v5, 0x11200fc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1549
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v3, :cond_6d

    .line 1550
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 1554
    :cond_6d
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1555
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v3, v2}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1557
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1558
    .local v3, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1562
    const-string v5, "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1563
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1565
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 1566
    .local v5, "defaultImiId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v1

    .line 1567
    .local v6, "imeSelectedOnBoot":Z
    if-nez v6, :cond_b3

    move v4, v1

    nop

    :cond_b3
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1568
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1569
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1570
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1571
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1572
    invoke-virtual {v7}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    .line 1570
    invoke-static {v1, v4, v2, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1574
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMiuiSecurityInputMethodHelper:Lcom/android/server/MiuiSecurityInputMethodHelper;

    invoke-virtual {v1}, Lcom/android/server/MiuiSecurityInputMethodHelper;->onSystemRunningLocked()V
    :try_end_d4
    .catchall {:try_start_3 .. :try_end_d4} :catchall_e2

    .line 1577
    :try_start_d4
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_d7
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_d7} :catch_d8
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_e2

    .line 1580
    goto :goto_e0

    .line 1578
    :catch_d8
    move-exception v1

    .line 1579
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_d9
    const-string v4, "InputMethodManagerService"

    const-string v7, "Unexpected exception"

    invoke-static {v4, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1582
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "currentUserId":I
    .end local v3    # "broadcastFilter":Landroid/content/IntentFilter;
    .end local v5    # "defaultImiId":Ljava/lang/String;
    .end local v6    # "imeSelectedOnBoot":Z
    :cond_e0
    :goto_e0
    monitor-exit v0

    .line 1583
    return-void

    .line 1582
    :catchall_e2
    move-exception v1

    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_d9 .. :try_end_e4} :catchall_e2

    throw v1
.end method

.method unbindCurrentClientLocked(I)V
    .registers 8
    .param p1, "unbindClientReason"    # I

    .line 1776
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4e

    .line 1779
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1780
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1781
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1e

    .line 1782
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1787
    :cond_1e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1789
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1791
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v1, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 1792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 1796
    :cond_4e
    return-void
.end method

.method unbindCurrentMethodLocked(Z)V
    .registers 6
    .param p1, "savePosition"    # Z

    .line 2111
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2112
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2113
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2116
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_19

    .line 2117
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2118
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2121
    :cond_19
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 2124
    :try_start_1e
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 2126
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->saveLastInputMethodWindowForTransition()V

    .line 2128
    :cond_2b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-interface {v0, v3, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_32} :catch_33

    .line 2130
    goto :goto_34

    .line 2129
    :catch_33
    move-exception v0

    .line 2131
    :goto_34
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2134
    :cond_36
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2135
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2136
    return-void
.end method

.method updateCurrentProfileIds()V
    .registers 4

    .line 1510
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1511
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1510
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1512
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .registers 2
    .param p1, "enabledMayChange"    # Z

    .line 2490
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 2492
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .registers 14
    .param p1, "enabledMayChange"    # Z

    .line 2495
    const/4 v0, 0x4

    if-eqz p1, :cond_4b

    .line 2496
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2497
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 2500
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2502
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_16
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x8000

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2504
    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 2502
    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2505
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_46

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v5, v0, :cond_46

    .line 2511
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2513
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2514
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    .line 2511
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_46} :catch_47

    .line 2517
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_46
    goto :goto_48

    .line 2516
    :catch_47
    move-exception v4

    .line 2497
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2524
    .end local v1    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "i":I
    :cond_4b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 2526
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2527
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 2529
    :cond_63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 2531
    :try_start_69
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_72} :catch_73

    .line 2535
    goto :goto_8e

    .line 2532
    :catch_73
    move-exception v0

    .line 2533
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown input method from prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2534
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2536
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_8e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_97

    .line 2539
    :cond_94
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2545
    :goto_97
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2547
    return-void
.end method

.method public updateKeyboardFromSettingsLocked()V
    .registers 3

    .line 2550
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 2551
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Lmiui/app/AlertDialog;

    .line 2553
    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2554
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x102028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2556
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2558
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_28
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .line 2227
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2228
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2229
    monitor-exit v0

    return-void

    .line 2231
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_66

    .line 2233
    .local v1, "ident":J
    const/4 v3, 0x0

    if-nez p3, :cond_20

    .line 2235
    :try_start_12
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_60

    .line 2236
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_60

    .line 2258
    :catchall_1e
    move-exception v3

    goto :goto_5c

    .line 2238
    :cond_20
    if-eqz p2, :cond_60

    .line 2240
    const/4 v4, 0x0

    move-object v5, v4

    .line 2243
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    :try_start_24
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2244
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2246
    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    .line 2245
    invoke-interface {v7, p2, v3, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2244
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3a} :catch_3c
    .catchall {:try_start_24 .. :try_end_3a} :catchall_1e

    move-object v5, v3

    .line 2249
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_3d

    .line 2247
    :catch_3c
    move-exception v3

    .line 2250
    :goto_3d
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_60

    .line 2251
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v10, 0x0

    .line 2252
    if-eqz v5, :cond_4d

    .line 2253
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    .line 2251
    :cond_4d
    move-object v11, v4

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2254
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_1e

    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    goto :goto_60

    .line 2258
    :goto_5c
    :try_start_5c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_60
    :goto_60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2259
    nop

    .line 2260
    .end local v1    # "ident":J
    monitor-exit v0

    .line 2261
    return-void

    .line 2260
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_66

    throw v1
.end method
