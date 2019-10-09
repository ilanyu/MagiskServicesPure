.class Lcom/android/server/policy/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    }
.end annotation


# static fields
.field private static final BOOT_ALARM_INTENT_SERVICE:Ljava/lang/String; = "com.miui.powercenter.provider.BootAlarmIntentService"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHUTDOWN_ALARM_CLOCK_OFFSET:Ljava/lang/String; = "shutdown_alarm_clock_offset"

.field private static final SHUTDOWN_ALARM_SERVICE_NAME:Ljava/lang/String; = "com.android.deskclock.util.ShutdownAlarm"

.field private static final TAG:Ljava/lang/String; = "MiuiGlobalActions"

.field private static final WAKE_ALARM_TIME_OFFSET:I = 0x78


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/Binder;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private final mContext:Landroid/content/Context;

.field private final mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private mHandler:Landroid/os/Handler;

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

.field private mRotation:I

.field private mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    .line 121
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$1;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 329
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$3;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 339
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$4;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$5;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 359
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MiuiGlobalActions$6;-><init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 369
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$7;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 109
    new-instance v0, Lmiui/maml/ResourceManager;

    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    const-string v2, "/system/media/theme/default/powermenu"

    invoke-direct {v1, v2}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    .line 110
    new-instance v0, Lmiui/maml/ScreenElementRoot;

    new-instance v1, Lmiui/maml/ScreenContext;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v1, v2, v3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    invoke-direct {v0, v1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->load()Z

    .line 114
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->init()V

    .line 116
    const-string/jumbo v0, "statusbar"

    .line 117
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 118
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/GlobalActionsProvider;

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MiuiGlobalActions;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiGlobalActions;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiGlobalActions;->sendAction(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/IPowerManager;
    .registers 1

    .line 82
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/MiuiGlobalActions;)Lmiui/maml/ScreenElementRoot;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/MiuiGlobalActions;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 82
    iget v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRotation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 82
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 82
    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V

    return-void
.end method

.method private static getPowerManager()Landroid/os/IPowerManager;
    .registers 1

    .line 150
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method private isInLockTaskMode()Z
    .registers 4

    .line 218
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 219
    .local v1, "activityManager":Landroid/app/IActivityManager;
    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_10

    if-eqz v2, :cond_f

    const/4 v0, 0x1

    nop

    :cond_f
    return v0

    .line 220
    .end local v1    # "activityManager":Landroid/app/IActivityManager;
    :catch_10
    move-exception v1

    .line 221
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 223
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method private loadMamlView()Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    .registers 10

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0}, Lmiui/maml/data/Variables;->reset()V

    .line 161
    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    .line 164
    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 162
    invoke-static {v0, v1, v2}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 165
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v5, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const-wide/16 v7, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;-><init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    .line 166
    .local v0, "retView":Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    return-object v0
.end method

.method private sendAction(I)V
    .registers 4
    .param p1, "toggleId"    # I

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method private updateVariables()V
    .registers 22

    .line 175
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v3

    :goto_15
    move v4, v0

    .line 176
    .local v4, "isAirplaneModeOn":Z
    iget-object v0, v1, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    .line 177
    .local v5, "variables":Lmiui/maml/data/Variables;
    const-string v0, "airplane_mode"

    if-eqz v4, :cond_23

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_25

    :cond_23
    const-wide/16 v10, 0x0

    :goto_25
    invoke-static {v0, v5, v10, v11}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 178
    iget-object v0, v1, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v10, 0x4

    if-ne v0, v10, :cond_33

    move v0, v2

    goto :goto_34

    :cond_33
    move v0, v3

    :goto_34
    move v10, v0

    .line 179
    .local v10, "isEnabled":Z
    const-string/jumbo v0, "silent_mode"

    if-eqz v10, :cond_3d

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_3f

    :cond_3d
    const-wide/16 v11, 0x0

    :goto_3f
    invoke-static {v0, v5, v11, v12}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 180
    const-string/jumbo v0, "show_emergency"

    const-string v11, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_54

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_56

    :cond_54
    const-wide/16 v11, 0x0

    :goto_56
    invoke-static {v0, v5, v11, v12}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 185
    :try_start_59
    iget-object v0, v1, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v11, "shutdown_alarm_clock_offset"

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "settingValue":Ljava/lang/String;
    if-eqz v0, :cond_6d

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6c} :catch_70

    goto :goto_6f

    :cond_6d
    const-wide/16 v11, 0x78

    .line 190
    .end local v0    # "settingValue":Ljava/lang/String;
    .local v11, "offset":J
    :goto_6f
    goto :goto_89

    .line 187
    .end local v11    # "offset":J
    :catch_70
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v11, 0x78

    .line 189
    .restart local v11    # "offset":J
    const-string v13, "MiuiGlobalActions"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get deskclock ShutdownAlarm error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_89
    const-string/jumbo v0, "shutdown_info"

    const/4 v13, 0x0

    invoke-static {v0, v5, v13}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 192
    iget-object v0, v1, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "security"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 193
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    if-eqz v0, :cond_ec

    .line 194
    const/4 v13, 0x1

    .line 195
    .local v13, "isShutDownAlarm":Z
    const-string v14, "com.android.deskclock.util.ShutdownAlarm"

    invoke-virtual {v0, v14}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v14

    .line 196
    .local v14, "time":J
    const-string v6, "com.miui.powercenter.provider.BootAlarmIntentService"

    invoke-virtual {v0, v6}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 197
    .local v6, "autoBootTime":J
    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-eqz v18, :cond_bd

    cmp-long v18, v6, v16

    if-lez v18, :cond_bb

    add-long v18, v14, v11

    cmp-long v18, v6, v18

    if-gez v18, :cond_bb

    goto :goto_bd

    .line 201
    :cond_bb
    add-long/2addr v14, v11

    goto :goto_bf

    .line 198
    :cond_bd
    :goto_bd
    move-wide v14, v6

    .line 199
    const/4 v13, 0x0

    .line 203
    :goto_bf
    cmp-long v16, v14, v16

    if-lez v16, :cond_ec

    .line 204
    iget-object v8, v1, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_cb

    const v9, 0x110b0082

    goto :goto_ce

    .line 205
    :cond_cb
    const v9, 0x110b0081

    .line 204
    :goto_ce
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "format":Ljava/lang/String;
    const-wide/16 v16, 0x3e8

    move/from16 v20, v4

    mul-long v3, v14, v16

    .line 206
    .end local v4    # "isAirplaneModeOn":Z
    .local v20, "isAirplaneModeOn":Z
    invoke-static {v3, v4, v2}, Lmiui/date/DateUtils;->formatRelativeTime(JZ)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "timeStr":Ljava/lang/String;
    const-string/jumbo v4, "shutdown_info"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v2, v9

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 207
    .end local v3    # "timeStr":Ljava/lang/String;
    .end local v6    # "autoBootTime":J
    .end local v8    # "format":Ljava/lang/String;
    .end local v13    # "isShutDownAlarm":Z
    .end local v14    # "time":J
    goto :goto_ee

    .line 211
    .end local v20    # "isAirplaneModeOn":Z
    .restart local v4    # "isAirplaneModeOn":Z
    :cond_ec
    move/from16 v20, v4

    .line 211
    .end local v4    # "isAirplaneModeOn":Z
    .restart local v20    # "isAirplaneModeOn":Z
    :goto_ee
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/MiuiGlobalActions;->isInLockTaskMode()Z

    move-result v2

    .line 212
    .local v2, "isInLockTaskMode":Z
    const-string v3, "hide_airplane_mode"

    if-eqz v2, :cond_f9

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_fb

    :cond_f9
    const-wide/16 v6, 0x0

    :goto_fb
    invoke-static {v3, v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 213
    const-string v3, "hide_silent_mode"

    if-eqz v2, :cond_105

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_107

    :cond_105
    const-wide/16 v6, 0x0

    :goto_107
    invoke-static {v3, v5, v6, v7}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 214
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v0, :cond_3c

    .line 313
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->cleanUp(Z)V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    .line 322
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string v3, "android"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_38

    .line 325
    goto :goto_3c

    .line 323
    :catch_38
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3c
    :goto_3c
    return-void
.end method

.method public showDialog(ZZ)V
    .registers 13
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->isGlobalActionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 232
    return-void

    .line 235
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.xiaomi.system.devicelock.locked"

    const/4 v2, 0x0

    .line 235
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 237
    return-void

    .line 240
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v0, :cond_22

    return-void

    .line 242
    :cond_22
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 243
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRotation:I

    .line 245
    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->loadMamlView()Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    .line 246
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setSystemUiVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v2, Lcom/android/server/policy/MiuiGlobalActions$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiGlobalActions$2;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setFocusableInTouchMode(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->requestFocus()Z

    .line 266
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 268
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7e8

    const v8, 0x1018104

    const/4 v9, 0x3

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 278
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x8002

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 280
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 282
    const-string v3, "MiuiGlobalActions"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 284
    const v3, 0x110e0002

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 285
    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->isMamlBlurWindow()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 286
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 287
    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 289
    :cond_9a
    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 298
    iget-object v4, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    iget-object v4, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    .line 301
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 300
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    :try_start_d7
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/high16 v4, 0x10000

    iget-object v5, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string v6, "android"

    invoke-interface {v2, v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_e2} :catch_e3

    .line 308
    goto :goto_e7

    .line 306
    :catch_e3
    move-exception v2

    .line 307
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 309
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_e7
    return-void
.end method
