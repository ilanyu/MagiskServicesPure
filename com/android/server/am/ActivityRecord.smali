.class final Lcom/android/server/am/ActivityRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityRecord.java"

# interfaces
.implements Lcom/android/server/wm/AppWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityRecord$Token;,
        Lcom/android/server/am/ActivityRecord$PreferredAppsTask;,
        Lcom/android/server/am/ActivityRecord$StateTransition;
    }
.end annotation


# static fields
.field static final ACTIVITY_ICON_SUFFIX:Ljava/lang/String; = "_activity_icon_"

.field private static final ATTR_COMPONENTSPECIFIED:Ljava/lang/String; = "component_specified"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_LAUNCHEDFROMPACKAGE:Ljava/lang/String; = "launched_from_package"

.field private static final ATTR_LAUNCHEDFROMUID:Ljava/lang/String; = "launched_from_uid"

.field private static final ATTR_RESOLVEDTYPE:Ljava/lang/String; = "resolved_type"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final LEGACY_RECENTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui.recents"

.field private static final SHOW_ACTIVITY_START_TIME:Z = true

.field static final STARTING_WINDOW_NOT_SHOWN:I = 0x0

.field static final STARTING_WINDOW_REMOVED:I = 0x2

.field static final STARTING_WINDOW_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_PERSISTABLEBUNDLE:Ljava/lang/String; = "persistable_bundle"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field public static mPerfFirstDraw:Landroid/util/BoostFramework;


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field appInfo:Landroid/content/pm/ApplicationInfo;

.field appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field final appToken:Landroid/view/IApplicationToken$Stub;

.field compat:Landroid/content/res/CompatibilityInfo;

.field private final componentSpecified:Z

.field configChangeFlags:I

.field connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field cpuTimeAtResume:J

.field private createTime:J

.field deferRelaunchUntilPaused:Z

.field delayedResume:Z

.field displayStartTime:J

.field finishing:Z

.field forceNewConfig:Z

.field frontOfTask:Z

.field frozenBeforeDestroy:Z

.field fullscreen:Z

.field fullyDrawnStartTime:J

.field hasBeenLaunched:Z

.field final hasWallpaper:Z

.field haveState:Z

.field icicle:Landroid/os/Bundle;

.field private icon:I

.field idle:Z

.field immersive:Z

.field private inHistory:Z

.field final info:Landroid/content/pm/ActivityInfo;

.field final intent:Landroid/content/Intent;

.field isColdStart:Z

.field private keysPaused:Z

.field private labelRes:I

.field lastLaunchTime:J

.field lastVisibleTime:J

.field launchCount:I

.field launchFailed:Z

.field launchMode:I

.field launchTickTime:J

.field final launchedFromPackage:Ljava/lang/String;

.field final launchedFromPid:I

.field final launchedFromUid:I

.field launching:Z

.field lockTaskLaunchMode:I

.field private logo:I

.field mClientVisibilityDeferred:Z

.field private mDeferHidingClient:Z

.field mDisableDummyVisible:Z

.field private mHorizontalSizeConfigurations:[I

.field mIsCastMode:Z

.field mIsDummyVisible:Z

.field mIsLastFrame:Z

.field private mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastReportedDisplayId:I

.field private mLastReportedMultiWindowMode:Z

.field private mLastReportedPictureInPictureMode:Z

.field mLaunchTaskBehind:Z

.field private mMiuiConfigFlag:I

.field private mPerf:Landroid/util/BoostFramework;

.field public mPerf_iop:Landroid/util/BoostFramework;

.field private final mRecentTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord$StateTransition;",
            ">;"
        }
    .end annotation
.end field

.field mRotationAnimationHint:I

.field private mShowWhenLocked:Z

.field private mSmallestSizeConfigurations:[I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStartingWindowState:I

.field private mState:Lcom/android/server/am/ActivityStack$ActivityState;

.field mTaskOverlay:Z

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTurnScreenOn:Z

.field public mUxPerf:Landroid/util/BoostFramework;

.field private mVerticalSizeConfigurations:[I

.field mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

.field newIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field final noDisplay:Z

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field nowVisible:Z

.field final packageName:Ljava/lang/String;

.field pauseTime:J

.field pendingOptions:Landroid/app/ActivityOptions;

.field pendingResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field pendingVoiceInteractionStart:Z

.field perfActivityBoostHandler:I

.field persistentState:Landroid/os/PersistableBundle;

.field pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field preserveWindowOnDeferredRelaunch:Z

.field final processName:Ljava/lang/String;

.field final realActivity:Landroid/content/ComponentName;

.field realComponentName:Ljava/lang/String;

.field private realTheme:I

.field final requestCode:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field final resolvedType:Ljava/lang/String;

.field resultTo:Lcom/android/server/am/ActivityRecord;

.field final resultWho:Ljava/lang/String;

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field returningOptions:Landroid/app/ActivityOptions;

.field final rootVoiceInteraction:Z

.field final service:Lcom/android/server/am/ActivityManagerService;

.field final shortComponentName:Ljava/lang/String;

.field sleeping:Z

.field private startTime:J

.field final stateNotNeeded:Z

.field stopped:Z

.field stringName:Ljava/lang/String;

.field supportsEnterPipOnTaskSwitch:Z

.field private task:Lcom/android/server/am/TaskRecord;

.field final taskAffinity:Ljava/lang/String;

.field taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field private theme:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;

.field final userId:I

.field visible:Z

.field visibleIgnoringKeyguard:Z

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private windowFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 387
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V
    .registers 37
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_caller"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "_launchedFromPid"    # I
    .param p4, "_launchedFromUid"    # I
    .param p5, "_launchedFromPackage"    # Ljava/lang/String;
    .param p6, "_intent"    # Landroid/content/Intent;
    .param p7, "_resolvedType"    # Ljava/lang/String;
    .param p8, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p9, "_configuration"    # Landroid/content/res/Configuration;
    .param p10, "_resultTo"    # Lcom/android/server/am/ActivityRecord;
    .param p11, "_resultWho"    # Ljava/lang/String;
    .param p12, "_reqCode"    # I
    .param p13, "_componentSpecified"    # Z
    .param p14, "_rootVoiceInteraction"    # Z
    .param p15, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p16, "options"    # Landroid/app/ActivityOptions;
    .param p17, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p16

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 279
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/server/am/ActivityRecord;->createTime:J

    .line 340
    new-instance v1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 354
    const/4 v11, 0x0

    iput v11, v6, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    .line 355
    iput-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 374
    const/4 v12, 0x0

    iput-object v12, v6, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 375
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    .line 376
    iput-object v12, v6, Lcom/android/server/am/ActivityRecord;->mPerf_iop:Landroid/util/BoostFramework;

    .line 383
    iput v0, v6, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 392
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 393
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mRecentTransitions:Ljava/util/ArrayList;

    .line 400
    iput-object v12, v6, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    .line 403
    const/4 v13, 0x1

    iput v13, v6, Lcom/android/server/am/ActivityRecord;->mMiuiConfigFlag:I

    .line 947
    move-object/from16 v14, p1

    iput-object v14, v6, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 948
    new-instance v0, Lcom/android/server/am/ActivityRecord$Token;

    invoke-direct {v0, v6, v8}, Lcom/android/server/am/ActivityRecord$Token;-><init>(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 949
    iput-object v9, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 950
    move/from16 v15, p3

    iput v15, v6, Lcom/android/server/am/ActivityRecord;->launchedFromPid:I

    .line 951
    move/from16 v5, p4

    iput v5, v6, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 952
    move-object/from16 v4, p5

    iput-object v4, v6, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 953
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 954
    iput-object v8, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 955
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 957
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    .line 958
    move-object/from16 v3, p7

    iput-object v3, v6, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 959
    move/from16 v2, p13

    iput-boolean v2, v6, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    .line 960
    move/from16 v1, p14

    iput-boolean v1, v6, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    .line 961
    new-instance v0, Landroid/util/MergedConfiguration;

    move-object/from16 v12, p9

    invoke-direct {v0, v12}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 962
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 963
    move-object/from16 v13, p11

    iput-object v13, v6, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 964
    move/from16 v11, p12

    iput v11, v6, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 965
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "ActivityRecord ctor"

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 967
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 968
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 969
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 970
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 971
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 972
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 973
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 974
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 975
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 976
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 977
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 978
    move-object/from16 v1, p15

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 982
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 987
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v0, :cond_f3

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 988
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget v0, v9, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v0, :cond_f3

    iget v0, v9, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e7

    goto :goto_f3

    .line 993
    :cond_e7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    goto :goto_f9

    .line 991
    :cond_f3
    :goto_f3
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 995
    :goto_f9
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 996
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_105

    const/4 v0, 0x1

    goto :goto_106

    :cond_105
    const/4 v0, 0x0

    :goto_106
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 997
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 998
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 999
    iget v0, v9, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 1000
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_126

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    if-nez v0, :cond_126

    .line 1001
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1002
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1003
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iput v1, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    .line 1005
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_126
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->icon:I

    .line 1006
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->logo:I

    .line 1007
    invoke-virtual/range {p8 .. p8}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 1008
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 1009
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    if-nez v0, :cond_151

    .line 1010
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_14c

    .line 1011
    const v0, 0x1030005

    goto :goto_14f

    :cond_14c
    const v0, 0x103006b

    :goto_14f
    iput v0, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    .line 1013
    :cond_151
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/high16 v17, 0x1000000

    if-eqz v0, :cond_15f

    .line 1014
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    or-int v0, v0, v17

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    .line 1016
    :cond_15f
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_17e

    if-eqz v7, :cond_17e

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_179

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_17e

    .line 1019
    :cond_179
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_182

    .line 1021
    :cond_17e
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 1024
    :goto_182
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/high16 v3, 0x800000

    if-eqz v0, :cond_18f

    .line 1025
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1028
    :cond_18f
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1029
    iget v0, v9, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->launchMode:I

    .line 1031
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v6, Lcom/android/server/am/ActivityRecord;->realTheme:I

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    iget v7, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1, v3, v4, v7}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v7

    .line 1034
    .local v7, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v7, :cond_1cb

    .line 1035
    iget-object v0, v7, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 1036
    iget-object v0, v7, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v1, 0xe

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    .line 1037
    iget-object v0, v7, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    goto :goto_1d0

    .line 1039
    :cond_1cb
    const/4 v3, 0x0

    iput-boolean v3, v6, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    .line 1040
    iput-boolean v3, v6, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    .line 1043
    :goto_1d0
    move-object v0, v6

    move v1, v2

    move v2, v5

    const/high16 v16, 0x800000

    move-object v3, v8

    move-object v4, v10

    move-object/from16 v5, p17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 1045
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1e4

    const/4 v0, 0x1

    goto :goto_1e5

    :cond_1e4
    const/4 v0, 0x0

    :goto_1e5
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->immersive:Z

    .line 1047
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v0, :cond_1ed

    .line 1048
    const/4 v0, 0x0

    goto :goto_1f3

    :cond_1ed
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_1f3
    iput-object v0, v6, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 1050
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v16

    if-eqz v0, :cond_1fd

    const/4 v0, 0x1

    goto :goto_1fe

    :cond_1fd
    const/4 v0, 0x0

    :goto_1fe
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    .line 1051
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int v0, v0, v17

    if-eqz v0, :cond_208

    const/4 v0, 0x1

    goto :goto_209

    :cond_208
    const/4 v0, 0x0

    :goto_209
    iput-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    .line 1053
    iget v0, v9, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 1054
    iget v0, v9, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    .line 1055
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_228

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_225

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_228

    .line 1057
    :cond_225
    const/4 v0, 0x0

    iput v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    .line 1060
    :cond_228
    const/4 v0, 0x3

    if-eqz v10, :cond_260

    .line 1061
    iput-object v10, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1062
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v1

    iput-boolean v1, v6, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1065
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getMiuiConfigFlag()I

    move-result v1

    iput v1, v6, Lcom/android/server/am/ActivityRecord;->mMiuiConfigFlag:I

    .line 1067
    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v1

    .line 1069
    .local v1, "rotationAnimation":I
    if-ltz v1, :cond_243

    .line 1070
    iput v1, v6, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 1072
    :cond_243
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v2

    .line 1073
    .local v2, "usageReport":Landroid/app/PendingIntent;
    if-eqz v2, :cond_252

    .line 1074
    new-instance v3, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v3, v2}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v3, v6, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1076
    :cond_252
    iget-object v3, v6, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result v3

    .line 1077
    .local v3, "useLockTask":Z
    if-eqz v3, :cond_260

    iget v4, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    if-nez v4, :cond_260

    .line 1078
    iput v0, v6, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    .line 1082
    .end local v1    # "rotationAnimation":I
    .end local v2    # "usageReport":Landroid/app/PendingIntent;
    .end local v3    # "useLockTask":Z
    :cond_260
    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_26b

    .line 1083
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, v6, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    .line 1085
    :cond_26b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    if-ne v1, v0, :cond_299

    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_299

    .line 1086
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    .line 1087
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    .line 1088
    if-eqz v10, :cond_29e

    .line 1089
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v1

    .line 1090
    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v2

    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v3

    invoke-virtual/range {p16 .. p16}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v4

    .line 1089
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setRecentsItemCoordinates(IIII)V

    goto :goto_29e

    .line 1093
    :cond_299
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    .line 1096
    :cond_29e
    :goto_29e
    return-void
.end method

.method static activityResumedLocked(Landroid/os/IBinder;)V
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 2101
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2103
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c

    .line 2104
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2105
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 2107
    :cond_c
    return-void
.end method

.method private addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .registers 3
    .param p1, "intent"    # Lcom/android/internal/content/ReferrerIntent;

    .line 1624
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1627
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    return-void
.end method

.method private allowTaskSnapshot()Z
    .registers 5

    .line 3172
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3173
    return v1

    .line 3179
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_24

    .line 3180
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3181
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_21

    invoke-static {v2}, Lcom/android/server/am/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 3182
    const/4 v1, 0x0

    return v1

    .line 3179
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 3185
    .end local v0    # "i":I
    :cond_24
    return v1
.end method

.method private canLaunchAssistActivity(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1315
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 1316
    .local v0, "assistComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_f

    .line 1317
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1319
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 1298
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_26

    if-nez p1, :cond_a

    goto :goto_26

    .line 1303
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    .line 1304
    .local v0, "recentTasks":Lcom/android/server/am/RecentTasks;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lcom/android/server/am/RecentTasks;->isCallerRecents(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1305
    return v1

    .line 1308
    :cond_1b
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1

    .line 1300
    .end local v0    # "recentTasks":Lcom/android/server/am/RecentTasks;
    :cond_26
    :goto_26
    return v1
.end method

.method private checkEnterPictureInPictureAppOpsState()Z
    .registers 6

    .line 1552
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    const/16 v2, 0x43

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_18

    if-nez v1, :cond_17

    const/4 v0, 0x1

    nop

    :cond_17
    return v0

    .line 1554
    :catch_18
    move-exception v1

    .line 1557
    return v0
.end method

.method private computeBounds(Landroid/graphics/Rect;)V
    .registers 16
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 2746
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2747
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 2748
    .local v0, "maxAspectRatio":F
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2749
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_a9

    if-eqz v1, :cond_a9

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_a9

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_a9

    .line 2750
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto/16 :goto_a9

    .line 2758
    :cond_2a
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 2759
    return-void

    .line 2766
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2767
    .local v2, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2768
    .local v3, "containingAppWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2769
    .local v4, "containingAppHeight":I
    move v5, v3

    .line 2770
    .local v5, "maxActivityWidth":I
    move v6, v4

    .line 2774
    .local v6, "maxActivityHeight":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    .line 2775
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 2776
    .local v7, "containingRatio":F
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v3, v4, :cond_5c

    .line 2777
    move v10, v9

    goto :goto_5d

    :cond_5c
    move v10, v8

    .line 2778
    .local v10, "currentOrientation":I
    :goto_5d
    cmpl-float v11, v7, v0

    if-lez v11, :cond_6e

    .line 2780
    const/high16 v11, 0x3f000000    # 0.5f

    if-ge v3, v4, :cond_6a

    .line 2783
    int-to-float v12, v5

    mul-float/2addr v12, v0

    add-float/2addr v12, v11

    float-to-int v6, v12

    goto :goto_6e

    .line 2787
    :cond_6a
    int-to-float v12, v6

    mul-float/2addr v12, v0

    add-float/2addr v12, v11

    float-to-int v5, v12

    .line 2790
    :cond_6e
    :goto_6e
    if-gt v3, v5, :cond_8b

    if-gt v4, v6, :cond_8b

    .line 2799
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 2800
    .local v11, "overrideBounds":Landroid/graphics/Rect;
    if-eqz v11, :cond_87

    .line 2801
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_84

    .line 2802
    move v8, v9

    nop

    .line 2803
    .local v8, "overrideOrientation":I
    :cond_84
    if-eq v8, v10, :cond_87

    .line 2804
    return-void

    .line 2808
    .end local v8    # "overrideOrientation":I
    :cond_87
    invoke-virtual {p1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2810
    return-void

    .line 2817
    .end local v11    # "overrideBounds":Landroid/graphics/Rect;
    :cond_8b
    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iget v11, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v6

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v12, v8, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2819
    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getNavBarPosition()I

    move-result v8

    if-ne v8, v9, :cond_a8

    .line 2821
    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 2822
    iget v8, v2, Landroid/graphics/Rect;->right:I

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 2824
    :cond_a8
    return-void

    .line 2755
    .end local v2    # "appBounds":Landroid/graphics/Rect;
    .end local v3    # "containingAppWidth":I
    .end local v4    # "containingAppHeight":I
    .end local v5    # "maxActivityWidth":I
    .end local v6    # "maxActivityHeight":I
    .end local v7    # "containingRatio":F
    .end local v10    # "currentOrientation":I
    :cond_a9
    :goto_a9
    return-void
.end method

.method private static createImageFilename(JI)Ljava/lang/String;
    .registers 5
    .param p0, "createTime"    # J
    .param p2, "taskId"    # I

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_activity_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private crossesHorizontalSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private static crossesSizeThreshold([III)Z
    .registers 7
    .param p0, "thresholds"    # [I
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 663
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 664
    return v0

    .line 666
    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_17

    .line 667
    aget v3, p0, v1

    .line 668
    .local v3, "threshold":I
    if-ge p1, v3, :cond_f

    if-ge p2, v3, :cond_13

    :cond_f
    if-lt p1, v3, :cond_14

    if-ge p2, v3, :cond_14

    .line 670
    :cond_13
    return v2

    .line 666
    .end local v3    # "threshold":I
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 673
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method private crossesSmallestSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 644
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private crossesVerticalSizeThreshold(II)Z
    .registers 4
    .param p1, "firstDp"    # I
    .param p2, "secondDp"    # I

    .line 640
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    invoke-static {v0, p1, p2}, Lcom/android/server/am/ActivityRecord;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p0, "token"    # Landroid/os/IBinder;

    .line 917
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/am/ActivityRecord$Token;

    # invokes: Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/ActivityRecord$Token;->access$000(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 918
    :catch_8
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad activity token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    const/4 v1, 0x0

    return-object v1
.end method

.method private getConfigurationChanges(Landroid/content/res/Configuration;)I
    .registers 7
    .param p1, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 3052
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3053
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 3056
    .local v1, "changes":I
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_28

    .line 3057
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->crossesHorizontalSizeThreshold(II)Z

    move-result v2

    if-nez v2, :cond_23

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3059
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->crossesVerticalSizeThreshold(II)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    const/4 v2, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v2, 0x1

    .line 3061
    .local v2, "crosses":Z
    :goto_24
    if-nez v2, :cond_28

    .line 3062
    and-int/lit16 v1, v1, -0x401

    .line 3065
    .end local v2    # "crosses":Z
    :cond_28
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_38

    .line 3066
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3067
    .local v2, "oldSmallest":I
    iget v3, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3068
    .local v3, "newSmallest":I
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/ActivityRecord;->crossesSmallestSizeThreshold(II)Z

    move-result v4

    if-nez v4, :cond_38

    .line 3069
    and-int/lit16 v1, v1, -0x801

    .line 3073
    .end local v2    # "oldSmallest":I
    .end local v3    # "newSmallest":I
    :cond_38
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_41

    .line 3074
    const v2, -0x20000001

    and-int/2addr v1, v2

    .line 3077
    :cond_41
    return v1
.end method

.method static getStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStack;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 2543
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2544
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_b

    .line 2545
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2547
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 7
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "onlyRoot"    # Z

    .line 2525
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2526
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 2527
    return v1

    .line 2529
    :cond_8
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2530
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2531
    .local v3, "activityNdx":I
    if-ltz v3, :cond_1e

    if-eqz p1, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v4

    if-le v3, v4, :cond_1b

    goto :goto_1e

    .line 2534
    :cond_1b
    iget v1, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    return v1

    .line 2532
    :cond_1e
    :goto_1e
    return v1
.end method

.method private getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;
    .registers 3

    .line 2467
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_1f

    .line 2468
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2470
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2471
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1c

    .line 2472
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 2474
    :cond_1c
    if-eqz v1, :cond_1f

    .line 2475
    return-object v1

    .line 2478
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    return-object p0
.end method

.method private isHomeIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1282
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    const-string v0, "android.intent.category.HOME"

    .line 1283
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1284
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 1285
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1286
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1282
    :goto_2d
    return v1
.end method

.method static isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p0, "token"    # Landroid/os/IBinder;

    .line 2538
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2539
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method private static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 3308
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static isMainIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1290
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    const-string v0, "android.intent.category.LAUNCHER"

    .line 1291
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1292
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 1293
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1294
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 1290
    :goto_2d
    return v1
.end method

.method private isProcessRunning()Z
    .registers 5

    .line 3161
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3162
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_17

    .line 3163
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3165
    :cond_17
    if-eqz v0, :cond_1f

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method private static isResizeOnlyChange(I)Z
    .registers 2
    .param p0, "change"    # I

    .line 3081
    and-int/lit16 v0, p0, -0xd81

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .registers 6
    .param p1, "changes"    # I
    .param p2, "lastReportedConfig"    # Landroid/content/res/Configuration;

    .line 3043
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3044
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    const/16 v1, 0x200

    if-ne p1, v1, :cond_14

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 3045
    invoke-static {p2}, Lcom/android/server/am/ActivityRecord;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eq v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 3044
    :goto_15
    return v1
.end method

.method private reportLaunchTimeLocked(J)V
    .registers 25
    .param p1, "curTime"    # J

    move-object/from16 v7, p0

    .line 2312
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v0

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 2312
    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchTimeTracker;->getEntry(I)Lcom/android/server/am/LaunchTimeTracker$Entry;

    move-result-object v8

    .line 2314
    .local v8, "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    if-nez v8, :cond_13

    .line 2315
    return-void

    .line 2317
    :cond_13
    iget-wide v0, v7, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    sub-long v9, p1, v0

    .line 2318
    .local v9, "thisTime":J
    iget-wide v0, v8, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-eqz v0, :cond_24

    .line 2319
    iget-wide v0, v8, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    sub-long v0, p1, v0

    goto :goto_25

    :cond_24
    move-wide v0, v9

    :goto_25
    move-wide v4, v0

    .line 2321
    .local v4, "totalTime":J
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_86

    .line 2322
    iget-object v1, v8, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchFromPackage:Ljava/lang/String;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2323
    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchStartTime()J

    move-result-wide v16

    iget-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    .line 2322
    move/from16 v18, v0

    move-object v0, v7

    move v12, v2

    move v11, v3

    move-wide/from16 v2, v16

    move-wide/from16 v19, v4

    move-wide/from16 v4, p1

    .line 2322
    .end local v4    # "totalTime":J
    .local v19, "totalTime":J
    move v13, v6

    move/from16 v6, v18

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->addActivityLaunchTime(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;JJZ)V

    .line 2324
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v13

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v0, v15

    .line 2326
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v12

    move-wide/from16 v5, v19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2326
    .end local v19    # "totalTime":J
    .local v5, "totalTime":J
    aput-object v1, v0, v14

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7a

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_7b

    :cond_7a
    move v3, v11

    :goto_7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2324
    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->reportActivityLaunchTime([Ljava/lang/Object;)V

    goto :goto_8a

    .line 2330
    .end local v5    # "totalTime":J
    .restart local v4    # "totalTime":J
    :cond_86
    move v12, v2

    move v11, v3

    move v13, v6

    move-wide v5, v4

    .line 2330
    .end local v4    # "totalTime":J
    .restart local v5    # "totalTime":J
    :goto_8a
    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2331
    const/16 v0, 0x7539

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2332
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v2, v1, v15

    .line 2333
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v14

    .line 2331
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2334
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2335
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2336
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2340
    cmp-long v1, v9, v5

    if-eqz v1, :cond_104

    .line 2341
    const-string v1, " (total "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2343
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_110

    .line 2345
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    long-to-int v3, v5

    invoke-virtual {v1, v12, v11, v2, v3}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    goto :goto_110

    .line 2348
    :cond_104
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_110

    .line 2349
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    long-to-int v3, v9

    invoke-virtual {v1, v12, v11, v2, v3}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 2352
    :cond_110
    :goto_110
    const-string v1, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    move-object v2, v7

    move-wide v3, v9

    move-wide v11, v5

    .line 2354
    .end local v5    # "totalTime":J
    .local v11, "totalTime":J
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 2355
    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-nez v0, :cond_12d

    .line 2356
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    .line 2358
    :cond_12d
    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    if-eqz v0, :cond_13d

    .line 2359
    sget-object v0, Lcom/android/server/am/ActivityRecord;->mPerfFirstDraw:Landroid/util/BoostFramework;

    const/16 v1, 0x1042

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    long-to-int v3, v9

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2361
    :cond_13d
    nop

    .line 2364
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 2365
    iput-wide v0, v8, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    .line 2366
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_156

    iget v0, v7, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    if-lez v0, :cond_156

    .line 2367
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->mPerf:Landroid/util/BoostFramework;

    iget v1, v7, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    invoke-virtual {v0, v1}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 2368
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 2370
    :cond_156
    return-void
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;
    .registers 39
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3226
    const/4 v1, 0x0

    .line 3227
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 3228
    .local v2, "persistentState":Landroid/os/PersistableBundle;
    const/4 v3, 0x0

    .line 3229
    .local v3, "launchedFromUid":I
    const/4 v4, 0x0

    .line 3230
    .local v4, "launchedFromPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3231
    .local v5, "resolvedType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3232
    .local v6, "componentSpecified":Z
    const/4 v7, 0x0

    .line 3233
    .local v7, "userId":I
    const-wide/16 v8, -0x1

    .line 3234
    .local v8, "createTime":J
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    .line 3235
    .local v10, "outerDepth":I
    new-instance v11, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v11}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 3237
    .local v11, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 3237
    .local v12, "attrNdx":I
    :goto_1a
    if-ltz v12, :cond_a4

    .line 3238
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 3239
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    .line 3242
    .local v15, "attrValue":Ljava/lang/String;
    const-string v13, "id"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 3243
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 3237
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v15    # "attrValue":Ljava/lang/String;
    .local v33, "intent":Landroid/content/Intent;
    .local v34, "persistentState":Landroid/os/PersistableBundle;
    :goto_30
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    goto :goto_9b

    .line 3244
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v34    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v14    # "attrName":Ljava/lang/String;
    .restart local v15    # "attrValue":Ljava/lang/String;
    :cond_35
    const-string/jumbo v13, "launched_from_uid"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 3245
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_30

    .line 3246
    :cond_43
    const-string/jumbo v13, "launched_from_package"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4e

    .line 3247
    move-object v4, v15

    goto :goto_30

    .line 3248
    :cond_4e
    const-string/jumbo v13, "resolved_type"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_59

    .line 3249
    move-object v5, v15

    goto :goto_30

    .line 3250
    :cond_59
    const-string v13, "component_specified"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_66

    .line 3251
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_30

    .line 3252
    :cond_66
    const-string/jumbo v13, "user_id"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_74

    .line 3253
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_30

    .line 3254
    :cond_74
    const-string/jumbo v13, "task_description_"

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_81

    .line 3255
    invoke-virtual {v11, v14, v15}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 3257
    :cond_81
    const-string v13, "ActivityManager"

    move-object/from16 v33, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3257
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v33    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v2

    const-string v2, "Unknown ActivityRecord attribute="

    .line 3257
    .end local v2    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v34    # "persistentState":Landroid/os/PersistableBundle;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    .end local v14    # "attrName":Ljava/lang/String;
    .end local v15    # "attrValue":Ljava/lang/String;
    :goto_9b
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    const/4 v13, 0x1

    goto/16 :goto_1a

    .line 3262
    .end local v12    # "attrNdx":I
    .end local v33    # "intent":Landroid/content/Intent;
    .end local v34    # "persistentState":Landroid/os/PersistableBundle;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "persistentState":Landroid/os/PersistableBundle;
    :cond_a4
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    :cond_a8
    :goto_a8
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v13, v12

    .line 3262
    .local v13, "event":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_101

    const/4 v12, 0x3

    if-ne v13, v12, :cond_bd

    .line 3263
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-lt v12, v10, :cond_ba

    goto :goto_bd

    .line 3283
    :cond_ba
    move/from16 v35, v10

    goto :goto_103

    .line 3264
    :cond_bd
    :goto_bd
    const/4 v12, 0x2

    if-ne v13, v12, :cond_a8

    .line 3265
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 3268
    .local v12, "name":Ljava/lang/String;
    const-string v15, "intent"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d3

    .line 3269
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    .line 3280
    .end local v10    # "outerDepth":I
    .end local v12    # "name":Ljava/lang/String;
    .local v35, "outerDepth":I
    :goto_d0
    move/from16 v35, v10

    goto :goto_fd

    .line 3272
    .end local v35    # "outerDepth":I
    .restart local v10    # "outerDepth":I
    .restart local v12    # "name":Ljava/lang/String;
    :cond_d3
    const-string/jumbo v15, "persistable_bundle"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e1

    .line 3273
    invoke-static/range {p0 .. p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_d0

    .line 3277
    :cond_e1
    const-string v15, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v10

    const-string/jumbo v10, "restoreActivity: unexpected name="

    .line 3277
    .end local v10    # "outerDepth":I
    .restart local v35    # "outerDepth":I
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3280
    .end local v12    # "name":Ljava/lang/String;
    :goto_fd
    nop

    .line 3262
    move/from16 v10, v35

    goto :goto_a8

    .line 3283
    .end local v35    # "outerDepth":I
    .restart local v10    # "outerDepth":I
    :cond_101
    move/from16 v35, v10

    .line 3283
    .end local v10    # "outerDepth":I
    .restart local v35    # "outerDepth":I
    :goto_103
    if-eqz v1, :cond_16e

    .line 3287
    move-object/from16 v10, p1

    iget-object v12, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3288
    .local v12, "service":Lcom/android/server/am/ActivityManagerService;
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 3288
    move-object v14, v10

    move-object v15, v1

    move-object/from16 v16, v5

    move/from16 v19, v7

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v32

    .line 3290
    .local v32, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v32, :cond_14e

    .line 3294
    new-instance v33, Lcom/android/server/am/ActivityRecord;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 3296
    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v14, v33

    move-object v15, v12

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v32

    move/from16 v27, v6

    move-object/from16 v29, v10

    invoke-direct/range {v14 .. v31}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 3300
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    iput-object v2, v14, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 3301
    iput-object v11, v14, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3302
    iput-wide v8, v14, Lcom/android/server/am/ActivityRecord;->createTime:J

    .line 3304
    return-object v14

    .line 3291
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_14e
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restoreActivity resolver error. Intent="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resolvedType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 3284
    .end local v12    # "service":Lcom/android/server/am/ActivityManagerService;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_16e
    move-object/from16 v10, p1

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restoreActivity error intent="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 684
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_b

    goto :goto_21

    .line 695
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 696
    invoke-static {p1, p2}, Landroid/app/servertransaction/MoveToDisplayItem;->obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;

    move-result-object v3

    .line 695
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_1f

    .line 699
    goto :goto_20

    .line 697
    :catch_1f
    move-exception v0

    .line 700
    :goto_20
    return-void

    .line 688
    :cond_21
    :goto_21
    return-void
.end method

.method private scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 703
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_b

    goto :goto_21

    .line 713
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 714
    invoke-static {p1}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;->obtain(Landroid/content/res/Configuration;)Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    move-result-object v3

    .line 713
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_1f

    .line 717
    goto :goto_20

    .line 715
    :catch_1f
    move-exception v0

    .line 718
    :goto_20
    return-void

    .line 707
    :cond_21
    :goto_21
    return-void
.end method

.method private scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 741
    invoke-static {v3, p1}, Landroid/app/servertransaction/MultiWindowModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/MultiWindowModeChangeItem;

    move-result-object v3

    .line 740
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 745
    goto :goto_17

    .line 743
    :catch_16
    move-exception v0

    .line 746
    :goto_17
    return-void
.end method

.method private schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 771
    invoke-static {v3, p1}, Landroid/app/servertransaction/PipModeChangeItem;->obtain(ZLandroid/content/res/Configuration;)Landroid/app/servertransaction/PipModeChangeItem;

    move-result-object v3

    .line 770
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 775
    goto :goto_17

    .line 773
    :catch_16
    move-exception v0

    .line 776
    :goto_17
    return-void
.end method

.method private setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "componentSpecified"    # Z
    .param p2, "launchedFromUid"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "options"    # Landroid/app/ActivityOptions;
    .param p5, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "activityType":I
    const/4 v1, 0x4

    if-eqz p1, :cond_a

    invoke-direct {p0, p2, p5}, Lcom/android/server/am/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1326
    :cond_a
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1328
    const/4 v0, 0x2

    .line 1330
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v2, v1, :cond_24

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    .line 1333
    :cond_24
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_5e

    .line 1335
    :cond_2a
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.recents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 1336
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_5d

    .line 1338
    :cond_4b
    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    if-ne v2, v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1339
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1340
    const/4 v0, 0x4

    goto :goto_5e

    .line 1337
    :cond_5d
    :goto_5d
    const/4 v0, 0x3

    .line 1342
    :cond_5e
    :goto_5e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1343
    return-void
.end method

.method private setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "global"    # Landroid/content/res/Configuration;
    .param p2, "override"    # Landroid/content/res/Configuration;

    .line 2701
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2702
    return-void
.end method

.method private shouldPauseWhenBecomingVisible()Z
    .registers 6

    .line 2065
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2066
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_1c

    goto :goto_52

    .line 2071
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2072
    .local v0, "positionInTask":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4a

    .line 2075
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_34

    .line 2077
    return v3

    .line 2080
    :cond_34
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 2081
    .local v2, "activityAbove":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_49

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v4, :cond_49

    .line 2084
    return v3

    .line 2086
    :cond_49
    return v1

    .line 2073
    .end local v2    # "activityAbove":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity not found in its task"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2067
    .end local v0    # "positionInTask":I
    :cond_52
    :goto_52
    return v1
.end method

.method private shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "changes"    # I
    .param p2, "changesConfig"    # Landroid/content/res/Configuration;

    .line 3022
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    .line 3023
    .local v0, "configChanged":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    .line 3029
    .local v1, "onlyVrUiModeChanged":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1a

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_1a

    .line 3032
    or-int/lit16 v0, v0, 0x200

    .line 3035
    :cond_1a
    not-int v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return v2
.end method

.method private static startingWindowStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 427
    packed-switch p0, :pswitch_data_20

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 433
    :pswitch_16
    const-string v0, "STARTING_WINDOW_REMOVED"

    return-object v0

    .line 431
    :pswitch_19
    const-string v0, "STARTING_WINDOW_SHOWN"

    return-object v0

    .line 429
    :pswitch_1c
    const-string v0, "STARTING_WINDOW_NOT_SHOWN"

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method private supportsResizeableMultiWindow()Z
    .registers 2

    .line 1461
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1462
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1465
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1466
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 1461
    :goto_2f
    return v0
.end method

.method private updateOverrideConfiguration()V
    .registers 8

    .line 2706
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 2707
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityRecord;->computeBounds(Landroid/graphics/Rect;)V

    .line 2709
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2710
    return-void

    .line 2713
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2718
    .local v0, "updatedBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->matchParentBounds()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2719
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2723
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2724
    return-void
.end method

.method private updateTaskDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1842
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iput-object p1, v0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 1843
    return-void
.end method


# virtual methods
.method final activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 9
    .param p1, "newIcicle"    # Landroid/os/Bundle;
    .param p2, "newPersistentState"    # Landroid/os/PersistableBundle;
    .param p3, "description"    # Ljava/lang/CharSequence;

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2175
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const/16 v3, 0x68

    if-eq v1, v2, :cond_28

    .line 2176
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2178
    return-void

    .line 2180
    :cond_28
    const/4 v1, 0x0

    if-eqz p2, :cond_34

    .line 2181
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 2182
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 2186
    :cond_34
    const/4 v2, 0x1

    if-eqz p1, :cond_40

    .line 2189
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2190
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 2191
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 2192
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    .line 2194
    :cond_40
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v1, :cond_74

    .line 2196
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2197
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2198
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v3, "activityStoppedLocked"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2200
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppStopped()V

    .line 2202
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_5f

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_74

    .line 2205
    :cond_5f
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v1, :cond_6f

    .line 2206
    const-string/jumbo v1, "stop-config"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 2207
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_74

    .line 2209
    :cond_6f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2213
    :cond_74
    :goto_74
    return-void
.end method

.method addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 13
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;

    .line 1597
    new-instance v6, Lcom/android/server/am/ActivityResult;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityResult;-><init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1599
    .local v0, "r":Lcom/android/server/am/ActivityResult;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez v1, :cond_16

    .line 1600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1602
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    return-void
.end method

.method applyOptionsLocked()V
    .registers 16

    .line 1680
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_285

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1681
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_285

    .line 1682
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    .line 1683
    .local v0, "animationType":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_286

    .line 1780
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_278

    .line 1768
    :sswitch_30
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1769
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1770
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v6

    .line 1768
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionLaunchFromHome(IIII)V

    .line 1771
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_278

    .line 1772
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1773
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1774
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1775
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1772
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_278

    .line 1763
    :sswitch_89
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1764
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v3

    .line 1763
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 1765
    goto/16 :goto_278

    .line 1760
    :sswitch_98
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionStartCrossProfileApps()V

    .line 1761
    goto/16 :goto_278

    .line 1694
    :sswitch_a1
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1695
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1696
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v6

    .line 1694
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1697
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_278

    .line 1698
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1699
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1700
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1701
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1698
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_278

    .line 1732
    :sswitch_fa
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimSpecs()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    .line 1733
    .local v3, "specs":[Landroid/view/AppTransitionAnimationSpec;
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1734
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getSpecsFuture()Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v4

    .line 1735
    .local v4, "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/16 v5, 0x8

    if-eqz v4, :cond_11d

    .line 1736
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1737
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v7

    if-ne v0, v5, :cond_117

    goto :goto_118

    .line 1736
    :cond_117
    move v1, v2

    :goto_118
    invoke-virtual {v6, v4, v7, v1}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_278

    .line 1739
    :cond_11d
    const/16 v6, 0x9

    if-ne v0, v6, :cond_138

    if-eqz v3, :cond_138

    .line 1741
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1742
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1743
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v6

    .line 1741
    invoke-virtual {v1, v3, v5, v6, v2}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    goto/16 :goto_278

    .line 1745
    :cond_138
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1746
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1747
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v9

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v10

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1748
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v11

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v12

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1749
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v13

    if-ne v0, v5, :cond_164

    .line 1745
    move v14, v1

    goto :goto_166

    .line 1749
    :cond_164
    nop

    .line 1745
    move v14, v2

    :goto_166
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 1751
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_278

    .line 1752
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1753
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1754
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1755
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1752
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_278

    .line 1717
    .end local v3    # "specs":[Landroid/view/AppTransitionAnimationSpec;
    .end local v4    # "specsFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :sswitch_1a3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1a8

    move v9, v1

    goto :goto_1a9

    :cond_1a8
    move v9, v2

    .line 1718
    .local v9, "scaleUp":Z
    :goto_1a9
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 1719
    .local v1, "buffer":Landroid/graphics/GraphicBuffer;
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1720
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1721
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v8

    .line 1719
    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 1723
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_278

    if-eqz v1, :cond_278

    .line 1724
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1725
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1726
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1727
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v10

    add-int/2addr v8, v10

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1724
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_278

    .line 1705
    .end local v1    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v9    # "scaleUp":Z
    :sswitch_200
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1706
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1707
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v6

    .line 1705
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionScaleUp(IIII)V

    .line 1708
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_278

    .line 1709
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1710
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1711
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1712
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1709
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_278

    .line 1687
    :sswitch_258
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1688
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1689
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1690
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1691
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getOnAnimationStartListener()Landroid/os/IRemoteCallback;

    move-result-object v6

    .line 1687
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 1692
    nop

    .line 1784
    :cond_278
    :goto_278
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_280

    .line 1785
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    goto :goto_285

    .line 1788
    :cond_280
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->clearAllPendingOptions()V

    .line 1791
    .end local v0    # "animationType":I
    :cond_285
    :goto_285
    return-void

    :sswitch_data_286
    .sparse-switch
        0x1 -> :sswitch_258
        0x2 -> :sswitch_200
        0x3 -> :sswitch_1a3
        0x4 -> :sswitch_1a3
        0x8 -> :sswitch_fa
        0x9 -> :sswitch_fa
        0xb -> :sswitch_a1
        0xc -> :sswitch_98
        0xd -> :sswitch_89
        0x64 -> :sswitch_30
        0x65 -> :sswitch_258
    .end sparse-switch
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 10
    .param p1, "displayId"    # I

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1482
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    :goto_a
    move v4, v1

    goto :goto_11

    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v1

    goto :goto_a

    .line 1484
    .local v4, "resizeable":Z
    :goto_11
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPid:I

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    return v1
.end method

.method canShowWhenLocked()Z
    .registers 3

    .line 3329
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3330
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->containsShowWhenLockedWindow(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 3329
    :goto_19
    return v0
.end method

.method canTurnScreenOn()Z
    .registers 4

    .line 3345
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3346
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 3347
    invoke-virtual {v0, p0, v2, v2}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 3346
    :goto_13
    return v2
.end method

.method changeWindowTranslucency(Z)Z
    .registers 6
    .param p1, "toOpaque"    # Z

    .line 1368
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-ne v0, p1, :cond_6

    .line 1369
    const/4 v0, 0x0

    return v0

    .line 1373
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    const/4 v2, 0x1

    if-eqz p1, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    const/4 v3, -0x1

    :goto_10
    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1375
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 1376
    return v2
.end method

.method checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "beforeStopping"    # Z

    .line 1495
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1496
    return v1

    .line 1500
    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1501
    return v1

    .line 1505
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1506
    return v1

    .line 1509
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isKeyguardLocked()Z

    move-result v0

    .line 1510
    .local v0, "isKeyguardLocked":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskModeState()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v1

    .line 1511
    .local v2, "isCurrentAppLocked":Z
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    .line 1512
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v4, :cond_38

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->hasPinnedStack()Z

    move-result v5

    if-eqz v5, :cond_38

    move v5, v3

    goto :goto_39

    :cond_38
    move v5, v1

    .line 1515
    .local v5, "hasPinnedStack":Z
    :goto_39
    if-nez v0, :cond_3f

    if-nez v2, :cond_3f

    move v6, v3

    goto :goto_40

    :cond_3f
    move v6, v1

    .line 1518
    .local v6, "isNotLockedOrOnKeyguard":Z
    :goto_40
    if-eqz p2, :cond_45

    if-eqz v5, :cond_45

    .line 1519
    return v1

    .line 1522
    :cond_45
    sget-object v7, Lcom/android/server/am/ActivityRecord$2;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_76

    goto :goto_74

    .line 1539
    :pswitch_53
    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_74

    .line 1540
    if-eqz v6, :cond_5d

    if-nez v5, :cond_5d

    move v1, v3

    nop

    :cond_5d
    return v1

    .line 1533
    :pswitch_5e
    if-eqz v6, :cond_68

    if-nez v5, :cond_68

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_68

    move v1, v3

    nop

    :cond_68
    return v1

    .line 1526
    :pswitch_69
    if-nez v2, :cond_73

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez v7, :cond_71

    if-nez p2, :cond_73

    :cond_71
    move v1, v3

    nop

    :cond_73
    return v1

    .line 1543
    :cond_74
    :goto_74
    return v1

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_69
        :pswitch_5e
        :pswitch_5e
        :pswitch_53
    .end packed-switch
.end method

.method clearOptionsLocked()V
    .registers 2

    .line 1798
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    .line 1799
    return-void
.end method

.method clearOptionsLocked(Z)V
    .registers 3
    .param p1, "withAbort"    # Z

    .line 1802
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    .line 1803
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1805
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1806
    return-void
.end method

.method clearVoiceSessionLocked()V
    .registers 2

    .line 2604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2606
    return-void
.end method

.method completeResumeLocked()V
    .registers 8

    .line 2115
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2116
    .local v0, "wasVisible":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2117
    if-nez v0, :cond_c

    .line 2119
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 2121
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2123
    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2124
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2126
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2127
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2128
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_34

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_34

    .line 2129
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 2132
    :cond_34
    :try_start_34
    new-instance v4, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;

    invoke-direct {v4, p0, v2}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_3f

    .line 2135
    goto :goto_56

    .line 2133
    :catch_3f
    move-exception v1

    .line 2134
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_56
    :goto_56
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_5f

    .line 2139
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2143
    :cond_5f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2145
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2147
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2149
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2154
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_8a

    .line 2155
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_8e

    .line 2157
    :cond_8a
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 2160
    :goto_8e
    iput-object v2, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2162
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 2163
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v3, "turnScreenOnFlag"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    goto :goto_a2

    .line 2168
    :cond_9f
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    .line 2170
    :goto_a2
    return-void
.end method

.method continueLaunchTickingLocked()Z
    .registers 6

    .line 2226
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2227
    return v1

    .line 2230
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2231
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_11

    .line 2232
    return v1

    .line 2235
    :cond_11
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2236
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2237
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2238
    const/4 v2, 0x1

    return v2
.end method

.method createWindowContainer()V
    .registers 23

    .line 1111
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v0, :cond_92

    .line 1116
    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1118
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v16

    .line 1121
    .local v16, "taskController":Lcom/android/server/wm/TaskWindowContainerController;
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1123
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->updateOverrideConfiguration()V

    .line 1125
    new-instance v13, Lcom/android/server/wm/AppWindowContainerController;

    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const v4, 0x7fffffff

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget-boolean v6, v14, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    move v7, v15

    goto :goto_30

    :cond_2f
    move v7, v1

    :goto_30
    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_3c

    move v9, v15

    goto :goto_3d

    :cond_3c
    move v9, v1

    :goto_3d
    iget-boolean v10, v14, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    move-result v11

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v3, v14, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    .line 1130
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v0

    const-wide/32 v17, 0xf4240

    mul-long v17, v17, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move/from16 v19, v3

    move-object v3, v14

    move-object/from16 v20, v13

    move/from16 v13, v19

    move/from16 v19, v15

    move-wide/from16 v14, v17

    invoke-direct/range {v0 .. v15}, Lcom/android/server/wm/AppWindowContainerController;-><init>(Lcom/android/server/wm/TaskWindowContainerController;Landroid/view/IApplicationToken;Lcom/android/server/wm/AppWindowContainerListener;IIZZIZZZIIJ)V

    move-object/from16 v1, v20

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    .line 1133
    iget v1, v0, Lcom/android/server/am/ActivityRecord;->mMiuiConfigFlag:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_76

    .line 1134
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->mMiuiConfigFlag:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowContainerController;->setMiuiConfigFlag(I)V

    .line 1138
    :cond_76
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    new-instance v2, Lcom/android/server/am/ActivityRecord$1;

    invoke-direct {v2, v0}, Lcom/android/server/am/ActivityRecord$1;-><init>(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowContainerController;->registerGestureCallback(Lcom/android/server/wm/AppWindowContainerController$GestureCallback;)V

    .line 1223
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->inMultiWindowMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1230
    return-void

    .line 1112
    .end local v16    # "taskController":Lcom/android/server/wm/TaskWindowContainerController;
    :cond_92
    move-object v0, v14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already created for r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrer"    # Ljava/lang/String;

    .line 1641
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1641
    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1643
    new-instance v0, Lcom/android/internal/content/ReferrerIntent;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1644
    .local v0, "rintent":Lcom/android/internal/content/ReferrerIntent;
    const/4 v1, 0x1

    .line 1645
    .local v1, "unsent":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    goto :goto_26

    :cond_25
    move v2, v3

    .line 1651
    .local v2, "isTopActivityWhileSleeping":Z
    :goto_26
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_34

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_34

    if-eqz v2, :cond_94

    :cond_34
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_94

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_94

    .line 1654
    :try_start_3e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1655
    .local v5, "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v9, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_5a

    .line 1657
    move v3, v4

    goto :goto_5b

    .line 1656
    :cond_5a
    nop

    .line 1657
    :goto_5b
    invoke-static {v5, v3}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    .line 1656
    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_62} :catch_7c
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_62} :catch_64

    .line 1658
    const/4 v1, 0x0

    .line 1663
    .end local v5    # "ar":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/ReferrerIntent;>;"
    :goto_63
    goto :goto_94

    .line 1661
    :catch_64
    move-exception v3

    .line 1662
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/NullPointerException;
    goto :goto_94

    .line 1659
    :catch_7c
    move-exception v3

    .line 1660
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown sending new intent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_63

    .line 1665
    :cond_94
    :goto_94
    if-eqz v1, :cond_99

    .line 1666
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    .line 1668
    :cond_99
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 441
    .local v0, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 444
    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frontOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 449
    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "realActivity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_e8

    .line 454
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "baseDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "resDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    :cond_bf
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "dataDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_e8

    .line 460
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "splitDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    :cond_e8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 466
    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_122

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 471
    :cond_122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 472
    const-string v2, " labelRes=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    const-string v2, " icon=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1ba

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    :cond_1ba
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_1db

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    :cond_1db
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_1e3

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_205

    .line 486
    :cond_1e3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 487
    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 490
    :cond_205
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v2, :cond_2fd

    .line 491
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "iconFilename":Ljava/lang/String;
    if-nez v2, :cond_221

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_221

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 493
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    if-eqz v3, :cond_2fd

    .line 494
    :cond_221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "taskDescription:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    const-string v3, " label=\""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    const-string v3, " icon="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_266

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_269

    .line 499
    :cond_266
    const-string/jumbo v3, "null"

    .line 497
    :goto_269
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    const-string v3, " iconResource="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string v3, " iconFilename="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    const-string v3, " primaryColor="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " backgroundColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " statusBarColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " navigationBarColor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    .end local v2    # "iconFilename":Ljava/lang/String;
    :cond_2fd
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_30f

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 515
    :cond_30f
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_368

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_368

    .line 516
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_329
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_368

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 518
    .local v3, "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    if-eqz v3, :cond_33e

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_33f

    :cond_33e
    const/4 v4, 0x0

    .line 519
    .local v4, "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_33f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  - "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    if-nez v4, :cond_350

    .line 521
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_367

    .line 523
    :cond_350
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 526
    .end local v3    # "wpir":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "pir":Lcom/android/server/am/PendingIntentRecord;
    :goto_367
    goto :goto_329

    .line 528
    :cond_368
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_3aa

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3aa

    .line 529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    move v2, v3

    .line 530
    .local v2, "i":I
    :goto_37e
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3aa

    .line 531
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 532
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  - "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 533
    if-nez v4, :cond_39f

    .line 534
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a7

    .line 536
    :cond_39f
    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v3, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_3a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_37e

    .line 540
    .end local v2    # "i":I
    :cond_3aa
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3bc

    .line 541
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 543
    :cond_3bc
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_3c5

    .line 544
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 546
    :cond_3c5
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v2, :cond_3ce

    .line 547
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 549
    :cond_3ce
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 550
    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 551
    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f9

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3fe

    .line 553
    :cond_3f9
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 554
    :goto_3fe
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 555
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "haveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 556
    const-string v2, " icicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 558
    const-string v2, " stopped="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 559
    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 560
    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 561
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 562
    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 563
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 564
    const-string v2, " mIsCastMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 565
    const-string v2, " mIsLastFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->mIsLastFrame:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 566
    const-string v2, " sleeping="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 567
    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 568
    const-string v2, " mStartingWindowState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    invoke-static {v2}, Lcom/android/server/am/ActivityRecord;->startingWindowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "fullscreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 571
    const-string v2, " noDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 572
    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 573
    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 574
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "frozenBeforeDestroy="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 575
    const-string v2, " forceNewConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 576
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_504

    .line 579
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    const-string/jumbo v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 583
    :cond_504
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_510

    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_542

    .line 584
    :cond_510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "displayStartTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_524

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_529

    .line 586
    :cond_524
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 587
    :goto_529
    const-string v2, " startTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_53a

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_53f

    .line 589
    :cond_53a
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 590
    :goto_53f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 592
    :cond_542
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 593
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 594
    .local v2, "waitingVisible":Z
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_556

    if-nez v2, :cond_556

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_585

    .line 595
    :cond_556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "waitingVisible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 596
    const-string v3, " nowVisible="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 597
    const-string v3, " lastVisibleTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_57d

    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_582

    .line 599
    :cond_57d
    iget-wide v3, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    invoke-static {v3, v4, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 600
    :goto_582
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 602
    :cond_585
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v3, :cond_5a3

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mDeferHidingClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    :cond_5a3
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-nez v3, :cond_5ab

    iget v3, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    if-eqz v3, :cond_5c6

    .line 606
    :cond_5ab
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "deferRelaunchUntilPaused="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 607
    const-string v3, " configChangeFlags="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 608
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    :cond_5c6
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v3, :cond_5d7

    .line 611
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "connections="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 613
    :cond_5d7
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_684

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mLastReportedMultiWindowMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mLastReportedPictureInPictureMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v3

    if-eqz v3, :cond_65f

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "supportsPictureInPicture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    :cond_65f
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_684

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "maxAspectRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    :cond_684
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "realComponentName="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method ensureActivityConfiguration(IZ)Z
    .registers 4
    .param p1, "globalChanges"    # I
    .param p2, "preserveWindow"    # Z

    .line 2827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    move-result v0

    return v0
.end method

.method ensureActivityConfiguration(IZZ)Z
    .registers 13
    .param p1, "globalChanges"    # I
    .param p2, "preserveWindow"    # Z
    .param p3, "ignoreStopState"    # Z

    .line 2847
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2848
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 2851
    return v2

    .line 2855
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    .line 2858
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2859
    return v2

    .line 2862
    :cond_13
    if-nez p3, :cond_22

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v4, :cond_21

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v4, :cond_22

    .line 2865
    :cond_21
    return v2

    .line 2874
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isRecentsStackLaunchBehind()Z

    move-result v1

    if-nez v1, :cond_30

    .line 2878
    return v2

    .line 2884
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    .line 2885
    .local v1, "newDisplayId":I
    iget v4, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedDisplayId:I

    if-eq v4, v1, :cond_3a

    move v4, v2

    goto :goto_3b

    :cond_3a
    move v4, v3

    .line 2886
    .local v4, "displayChanged":Z
    :goto_3b
    if-eqz v4, :cond_3f

    .line 2887
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedDisplayId:I

    .line 2890
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->updateOverrideConfiguration()V

    .line 2896
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v6}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2897
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_60

    iget-boolean v5, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v5, :cond_60

    if-nez v4, :cond_60

    .line 2900
    return v2

    .line 2908
    :cond_60
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v5

    .line 2911
    .local v5, "changes":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 2913
    .local v6, "newMergedOverrideConfig":Landroid/content/res/Configuration;
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2915
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_7a

    .line 2921
    return v2

    .line 2924
    :cond_7a
    if-nez v5, :cond_8a

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v7, :cond_8a

    .line 2929
    if-eqz v4, :cond_86

    .line 2930
    invoke-direct {p0, v1, v6}, Lcom/android/server/am/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_89

    .line 2932
    :cond_86
    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2934
    :goto_89
    return v2

    .line 2943
    :cond_8a
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_ea

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_95

    goto :goto_ea

    .line 2958
    :cond_95
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v5, v7}, Lcom/android/server/am/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_af

    iget-boolean v7, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v7, :cond_a2

    goto :goto_af

    .line 3003
    :cond_a2
    if-eqz v4, :cond_a8

    .line 3004
    invoke-direct {p0, v1, v6}, Lcom/android/server/am/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;)V

    goto :goto_ab

    .line 3006
    :cond_a8
    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3008
    :goto_ab
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3010
    return v2

    .line 2960
    :cond_af
    :goto_af
    iget v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v7, v5

    iput v7, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 2961
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v7, p1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2962
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2963
    invoke-static {v5}, Lcom/android/server/am/ActivityRecord;->isResizeOnlyChange(I)Z

    move-result v7

    and-int/2addr p2, v7

    .line 2964
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_e4

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v7, :cond_cb

    goto :goto_e4

    .line 2968
    :cond_cb
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_d6

    .line 2973
    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 2974
    iput-boolean p2, p0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 2975
    return v2

    .line 2976
    :cond_d6
    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_e0

    .line 2988
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_e9

    .line 2992
    :cond_e0
    invoke-virtual {p0, v3, p2}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_e9

    .line 2967
    :cond_e4
    :goto_e4
    const-string v7, "config"

    invoke-virtual {v0, p0, v2, v7}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 2996
    :goto_e9
    return v3

    .line 2946
    :cond_ea
    :goto_ea
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2947
    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 2948
    return v2
.end method

.method finishLaunchTickingLocked()V
    .registers 4

    .line 2242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 2243
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2244
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_11

    .line 2245
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2247
    :cond_11
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 3
    .param p1, "index"    # I

    .line 786
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method getDisplay()Lcom/android/server/am/ActivityDisplay;
    .registers 3

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1364
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getDisplayId()I
    .registers 3

    .line 2554
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2555
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_8

    .line 2556
    const/4 v1, -0x1

    return v1

    .line 2558
    :cond_8
    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    return v1
.end method

.method getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;
    .registers 2

    .line 1794
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->forTargetActivity()Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 791
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method getRealTheme()I
    .registers 2

    .line 800
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->realTheme:I

    return v0
.end method

.method getRequestedOrientation()I
    .registers 2

    .line 2658
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    return v0
.end method

.method getStack()Lcom/android/server/am/ActivityStack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getStackId()I
    .registers 2

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method getState()Lcom/android/server/am/ActivityStack$ActivityState;
    .registers 2

    .line 1937
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    return-object v0
.end method

.method getTask()Lcom/android/server/am/TaskRecord;
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getTurnScreenOnFlag()Z
    .registers 2

    .line 3351
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    return v0
.end method

.method getUid()I
    .registers 2

    .line 3312
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .registers 3

    .line 1588
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_d

    .line 1589
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1591
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;
    .registers 2

    .line 1107
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    return-object v0
.end method

.method handleAlreadyVisible()Z
    .registers 5

    .line 2090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 2092
    :try_start_4
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_17

    .line 2093
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18

    .line 2096
    :cond_17
    goto :goto_19

    .line 2095
    :catch_18
    move-exception v1

    .line 2097
    :goto_19
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_21

    const/4 v0, 0x1

    nop

    :cond_21
    return v0
.end method

.method hasDismissKeyguardWindows()Z
    .registers 3

    .line 1570
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->containsDismissKeyguardWindow(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method isAlwaysFocusable()Z
    .registers 3

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method isConfigurationCompatible(Landroid/content/res/Configuration;)Z
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2728
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_b

    .line 2729
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    goto :goto_f

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 2730
    .local v0, "orientation":I
    :goto_f
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_1c

    .line 2732
    return v2

    .line 2734
    :cond_1c
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_28

    .line 2736
    return v2

    .line 2738
    :cond_28
    return v3
.end method

.method final isDestroyable()Z
    .registers 4

    .line 2562
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_a

    goto :goto_2b

    .line 2566
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2567
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eq p0, v2, :cond_2a

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p0, v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v2, :cond_23

    goto :goto_2a

    .line 2572
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_28

    .line 2574
    return v1

    .line 2576
    :cond_28
    const/4 v1, 0x1

    return v1

    .line 2570
    :cond_2a
    :goto_2a
    return v1

    .line 2564
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2b
    :goto_2b
    return v1
.end method

.method isFocusable()Z
    .registers 3

    .line 1405
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v0

    return v0
.end method

.method isInHistory()Z
    .registers 2

    .line 1390
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    return v0
.end method

.method isInStackLocked()Z
    .registers 3

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1395
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isInterestingToUserLocked()Z
    .registers 3

    .line 2500
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method isNoHistory()Z
    .registers 3

    .line 3193
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method isNonResizableOrForcedResizable()Z
    .registers 4

    .line 1419
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v0, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method isPersistable()Z
    .registers 3

    .line 1399
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1401
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1399
    :goto_20
    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1412
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 1411
    :goto_21
    return v0
.end method

.method isResolverActivity()Z
    .registers 3

    .line 925
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isResolverOrChildActivity()Z
    .registers 5

    .line 929
    const-string v0, "android"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 930
    return v1

    .line 933
    :cond_c
    :try_start_c
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 934
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 933
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_22} :catch_23

    return v0

    .line 935
    :catch_23
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method

.method final isSleeping()Z
    .registers 3

    .line 1631
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1632
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_11
    return v1
.end method

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 3
    .param p1, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1944
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 4
    .param p1, "state1"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1951
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 5
    .param p1, "state1"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1958
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p3, v0, :cond_d

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

.method isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z
    .registers 6
    .param p1, "state1"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "state2"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "state3"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p4, "state4"    # Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p3, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p4, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method isTopRunningActivity()Z
    .registers 2

    .line 3355
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "windowPid"    # I

    .line 2448
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2449
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object v4, v1

    .line 2450
    .local v4, "anrActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v3, v1

    .line 2451
    .local v3, "anrApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v1, p2, :cond_20

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v5

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v2

    .line 2453
    .local v1, "windowFromSameProcessAsActivity":Z
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2454
    if-eqz v1, :cond_31

    .line 2455
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 2459
    :cond_31
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p2, v5, p1}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v5

    :goto_3f
    return v2

    .line 2453
    .end local v1    # "windowFromSameProcessAsActivity":Z
    .end local v3    # "anrApp":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "anrActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method makeClientVisible()V
    .registers 7

    .line 2039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 2041
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    .line 2042
    invoke-static {v4}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v4

    .line 2041
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2043
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->shouldPauseWhenBecomingVisible()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2046
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v2, "makeVisibleIfNeeded"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2047
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v5, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 2048
    invoke-static {v4, v0, v5, v0}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    .line 2047
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_3d

    .line 2053
    :cond_3c
    goto :goto_5a

    .line 2051
    :catch_3d
    move-exception v0

    .line 2052
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending visibility update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2054
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void
.end method

.method makeFinishingLocked()V
    .registers 2

    .line 1574
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 1575
    return-void

    .line 1577
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 1578
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_f

    .line 1579
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 1582
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1a

    .line 1583
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1585
    :cond_1a
    return-void
.end method

.method makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reportToClient"    # Z

    .line 2004
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_c

    if-ne p0, p1, :cond_d

    .line 2007
    :cond_c
    return-void

    .line 2013
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2015
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_11
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1f

    .line 2016
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2017
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2019
    :cond_1f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2020
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2021
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2022
    if-eqz p2, :cond_30

    .line 2023
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->makeClientVisible()V

    goto :goto_32

    .line 2025
    :cond_30
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 2028
    :goto_32
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2029
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_40} :catch_41

    .line 2033
    goto :goto_5e

    .line 2030
    :catch_41
    move-exception v1

    .line 2032
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown making visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2034
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    .line 2035
    return-void
.end method

.method public mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2256
    if-eqz p1, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method notifyAppResumed(Z)V
    .registers 3
    .param p1, "wasStopped"    # Z

    .line 1970
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppResumed(Z)V

    .line 1971
    return-void
.end method

.method notifyStartFromRecents()V
    .registers 2

    .line 1873
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_9

    .line 1874
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->notifyStartFromRecents()V

    .line 1876
    :cond_9
    return-void
.end method

.method notifyUnknownVisibilityLaunched()V
    .registers 2

    .line 1977
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_9

    .line 1978
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->notifyUnknownVisibilityLaunched()V

    .line 1980
    :cond_9
    return-void
.end method

.method public okToShowLocked()Z
    .registers 4

    .line 2485
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2486
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEncryptionAware()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2487
    return v1

    .line 2490
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2491
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2492
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x1

    .line 2490
    :goto_35
    return v1
.end method

.method public onStartingWindowDrawn(J)V
    .registers 6
    .param p1, "timestamp"    # J

    .line 2374
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2375
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    .line 2376
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 2375
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyStartingWindowDrawn(IJ)V

    .line 2377
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2378
    return-void

    .line 2377
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsDrawn(J)V
    .registers 8
    .param p1, "timestamp"    # J

    .line 2382
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2383
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyWindowsDrawn(IJ)V

    .line 2385
    iget-wide v1, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    .line 2386
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    .line 2388
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2389
    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->startTime:J

    .line 2390
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2391
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_31

    .line 2392
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    .line 2394
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2395
    return-void

    .line 2394
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsGone()V
    .registers 3

    .line 2436
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2438
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 2439
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2440
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2441
    return-void

    .line 2440
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWindowsVisible()V
    .registers 6

    .line 2399
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2400
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2402
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v1, :cond_5b

    .line 2403
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 2404
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    .line 2406
    iget-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->isStoppingNoHistoryActivity()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_2f

    .line 2424
    :cond_28
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;

    goto :goto_56

    .line 2411
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2412
    .local v1, "size":I
    if-lez v1, :cond_55

    .line 2413
    nop

    .local v2, "i":I
    :goto_3a
    if-ge v2, v1, :cond_49

    .line 2414
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 2415
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2413
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2418
    .end local v2    # "i":I
    :cond_49
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2419
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2421
    .end local v1    # "size":I
    :cond_55
    nop

    .line 2427
    :goto_56
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2429
    :cond_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_82

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2431
    const-string v0, "Timeline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeline: Activity_windows_visible id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    return-void

    .line 2429
    :catchall_82
    move-exception v1

    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method pauseKeyDispatchingLocked()V
    .registers 2

    .line 1822
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_10

    .line 1823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 1825
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_10

    .line 1826
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->pauseKeyDispatching()V

    .line 1829
    :cond_10
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 3359
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V

    .line 3360
    return-void
.end method

.method relaunchActivityLocked(ZZ)V
    .registers 10
    .param p1, "andResume"    # Z
    .param p2, "preserveWindow"    # Z

    .line 3086
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSuppressResizeConfigChanges:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 3087
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3088
    return-void

    .line 3091
    :cond_c
    const/4 v0, 0x0

    .line 3092
    .local v0, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v2, 0x0

    .line 3093
    .local v2, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p1, :cond_14

    .line 3094
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3095
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3101
    :cond_14
    if-eqz p1, :cond_19

    const/16 v3, 0x7543

    goto :goto_1b

    .line 3104
    :cond_19
    const/16 v3, 0x7544

    :goto_1b
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_28

    :cond_27
    move v5, v1

    :goto_28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 3101
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3108
    if-eqz p1, :cond_51

    .line 3109
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->onForegroundActivityChangedLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3112
    :cond_51
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 3118
    :try_start_56
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 3119
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3120
    iget v3, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    new-instance v4, Landroid/util/MergedConfiguration;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 3122
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 3123
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3120
    invoke-static {v0, v2, v3, v4, p2}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v3

    .line 3126
    .local v3, "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    if-eqz p1, :cond_7f

    .line 3127
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v4

    invoke-static {v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    .line 3127
    .local v4, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_83

    .line 3129
    .end local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_7f
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 3131
    .restart local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_83
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 3132
    .local v5, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v5, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 3133
    invoke-virtual {v5, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3134
    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_9c} :catch_9d

    .line 3140
    .end local v3    # "callbackItem":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    goto :goto_9e

    .line 3138
    :catch_9d
    move-exception v3

    .line 3142
    :goto_9e
    if-eqz p1, :cond_b4

    .line 3146
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3147
    iput-object v3, p0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3148
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/am/AppWarnings;->onResumeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3149
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_c5

    .line 3151
    :cond_b4
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3152
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v4, "relaunchActivityLocked"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3155
    :goto_c5
    iput v1, p0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3156
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 3157
    iput-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    .line 3158
    return-void
.end method

.method removeOrphanedStartingWindow(Z)V
    .registers 4
    .param p1, "behindFullscreenActivity"    # Z

    .line 2650
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    if-eqz p1, :cond_f

    .line 2652
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    .line 2653
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 2655
    :cond_f
    return-void
.end method

.method removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 7
    .param p1, "from"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 1607
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_38

    .line 1608
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_38

    .line 1609
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityResult;

    .line 1610
    .local v1, "r":Lcom/android/server/am/ActivityResult;
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_1b

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1611
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_1b
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 1612
    if-eqz p2, :cond_2b

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1614
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_22
    iget-object v2, v1, Lcom/android/server/am/ActivityResult;->mResultWho:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1616
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_2b
    iget v2, v1, Lcom/android/server/am/ActivityResult;->mRequestCode:I

    if-eq v2, p3, :cond_30

    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    goto :goto_35

    .line 1618
    .restart local v1    # "r":Lcom/android/server/am/ActivityResult;
    :cond_30
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1608
    .end local v1    # "r":Lcom/android/server/am/ActivityResult;
    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1621
    .end local v0    # "i":I
    :cond_38
    return-void
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .line 1815
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_c

    .line 1816
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 1817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 1819
    :cond_c
    return-void
.end method

.method removeWindowContainer()V
    .registers 3

    .line 1234
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v0, :cond_5

    .line 1235
    return-void

    .line 1239
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1241
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowContainerController;->removeContainer(I)V

    .line 1242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    .line 1243
    return-void
.end method

.method reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V
    .registers 8
    .param p1, "newTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1250
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1251
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    if-eq v0, p1, :cond_70

    .line 1259
    if-eqz v0, :cond_52

    if-eqz p1, :cond_52

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v1, v2, :cond_13

    goto :goto_52

    .line 1260
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is in a different stack ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") than the parent of r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1266
    :cond_52
    :goto_52
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/AppWindowContainerController;->reparent(Lcom/android/server/wm/TaskWindowContainerController;I)V

    .line 1270
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1272
    .local v1, "prevStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_68

    .line 1273
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 1276
    :cond_68
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1278
    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1279
    return-void

    .line 1252
    .end local v1    # "prevStack":Lcom/android/server/am/ActivityStack;
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already the parent of r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reportFullyDrawnLocked(Z)V
    .registers 16
    .param p1, "restoredFromBundle"    # Z

    .line 2273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2274
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 2275
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->reportLaunchTimeLocked(J)V

    .line 2277
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v2

    .line 2278
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    .line 2277
    invoke-virtual {v2, v3}, Lcom/android/server/am/LaunchTimeTracker;->getEntry(I)Lcom/android/server/am/LaunchTimeTracker$Entry;

    move-result-object v2

    .line 2279
    .local v2, "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_a1

    if-eqz v2, :cond_a1

    .line 2280
    iget-wide v6, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    sub-long v6, v0, v6

    .line 2281
    .local v6, "thisTime":J
    iget-wide v8, v2, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_34

    .line 2282
    iget-wide v8, v2, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    sub-long v8, v0, v8

    goto :goto_35

    :cond_34
    move-wide v8, v6

    .line 2284
    .local v8, "totalTime":J
    :goto_35
    const-wide/16 v10, 0x40

    const-string v3, "drawing"

    const/4 v12, 0x0

    invoke-static {v10, v11, v3, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2285
    const/16 v3, 0x755a

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2286
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const/4 v11, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x2

    iget-object v13, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v13, v10, v11

    const/4 v11, 0x3

    .line 2287
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    const/4 v11, 0x4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v11

    .line 2285
    invoke-static {v3, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2288
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2289
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2290
    const-string v10, "Fully drawn "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    iget-object v10, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    const-string v10, ": "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2293
    invoke-static {v6, v7, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2294
    cmp-long v10, v6, v8

    if-eqz v10, :cond_95

    .line 2295
    const-string v10, " (total "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2297
    const-string v10, ")"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    :cond_95
    const-string v10, "ActivityManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    nop

    .line 2304
    iput-wide v4, v2, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    .line 2306
    .end local v6    # "thisTime":J
    .end local v8    # "totalTime":J
    :cond_a1
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionReportedDrawn(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2308
    iput-wide v4, p0, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 2309
    return-void
.end method

.method resumeKeyDispatchingLocked()V
    .registers 2

    .line 1832
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_10

    .line 1833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->keysPaused:Z

    .line 1835
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_10

    .line 1836
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->resumeKeyDispatching()V

    .line 1839
    :cond_10
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3198
    const-string v0, "id"

    iget-wide v1, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3199
    const-string/jumbo v0, "launched_from_uid"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3200
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 3201
    const-string/jumbo v0, "launched_from_package"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3203
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 3204
    const-string/jumbo v0, "resolved_type"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3206
    :cond_30
    const-string v0, "component_specified"

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->componentSpecified:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3207
    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3209
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_50

    .line 3210
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3213
    :cond_50
    const-string v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3214
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3215
    const-string v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3217
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_7a

    .line 3218
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3219
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3220
    const-string/jumbo v0, "persistable_bundle"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3222
    :cond_7a
    return-void
.end method

.method setCastMode(Z)V
    .registers 3
    .param p1, "enterCast"    # Z

    .line 1879
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    if-ne v0, p1, :cond_5

    .line 1880
    return-void

    .line 1882
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-eqz v0, :cond_10

    .line 1883
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    .line 1884
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->setCastMode(Z)V

    .line 1886
    :cond_10
    return-void
.end method

.method setDeferHidingClient(Z)V
    .registers 3
    .param p1, "deferHidingClient"    # Z

    .line 1846
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-ne v0, p1, :cond_5

    .line 1847
    return-void

    .line 1849
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    .line 1850
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_13

    .line 1853
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 1855
    :cond_13
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 2680
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->setDisablePreviewScreenshots(Z)V

    .line 2681
    return-void
.end method

.method setDummyVisible(ZZ)V
    .registers 5
    .param p1, "dummyVisible"    # Z
    .param p2, "reallyVisible"    # Z

    .line 1864
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    if-ne v0, p1, :cond_5

    .line 1865
    return-void

    .line 1868
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    .line 1869
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/AppWindowContainerController;->setDummyVisible(ZZZ)V

    .line 1870
    return-void
.end method

.method setLastFrame(Z)V
    .registers 3
    .param p1, "isLastFrame"    # Z

    .line 1889
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mIsLastFrame:Z

    if-ne v0, p1, :cond_5

    .line 1890
    return-void

    .line 1892
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mIsLastFrame:Z

    .line 1893
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setLastFrame(Z)V

    .line 1894
    return-void
.end method

.method setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 4
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 2696
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2697
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2696
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2698
    return-void
.end method

.method setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2688
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2689
    return-void
.end method

.method setProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1099
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 1101
    .local v0, "root":Lcom/android/server/am/ActivityRecord;
    :goto_e
    if-ne v0, p0, :cond_15

    .line 1102
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->setRootProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1104
    :cond_15
    return-void
.end method

.method setRequestedOrientation(I)V
    .registers 7
    .param p1, "requestedOrientation"    # I

    .line 2662
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    .line 2663
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2664
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    .line 2666
    .local v1, "displayConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2667
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    .line 2666
    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/android/server/wm/AppWindowContainerController;->setOrientation(IILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    .line 2668
    .local v2, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_29

    .line 2669
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2670
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p0, v4, v0}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2672
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2675
    :cond_29
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    .line 2677
    return-void
.end method

.method setShowWhenLocked(Z)V
    .registers 5
    .param p1, "showWhenLocked"    # Z

    .line 3316
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mShowWhenLocked:Z

    .line 3317
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3319
    return-void
.end method

.method setSizeConfigurations([I[I[I)V
    .registers 4
    .param p1, "horizontalSizeConfiguration"    # [I
    .param p2, "verticalSizeConfigurations"    # [I
    .param p3, "smallestSizeConfigurations"    # [I

    .line 678
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->mHorizontalSizeConfigurations:[I

    .line 679
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord;->mVerticalSizeConfigurations:[I

    .line 680
    iput-object p3, p0, Lcom/android/server/am/ActivityRecord;->mSmallestSizeConfigurations:[I

    .line 681
    return-void
.end method

.method setSleeping(Z)V
    .registers 3
    .param p1, "_sleeping"    # Z

    .line 2504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    .line 2505
    return-void
.end method

.method setSleeping(ZZ)V
    .registers 7
    .param p1, "_sleeping"    # Z
    .param p2, "force"    # Z

    .line 2508
    if-nez p2, :cond_7

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    if-ne v0, p1, :cond_7

    .line 2509
    return-void

    .line 2511
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4d

    .line 2513
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, p1}, Landroid/app/IApplicationThread;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 2514
    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2515
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2517
    :cond_2d
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->sleeping:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2f} :catch_30

    .line 2520
    goto :goto_4d

    .line 2518
    :catch_30
    move-exception v0

    .line 2519
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when sleeping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2522
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return-void
.end method

.method setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 5
    .param p1, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1914
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p1, v0, :cond_5

    .line 1917
    return-void

    .line 1920
    :cond_5
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1924
    .local v0, "parent":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_10

    .line 1925
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/am/TaskRecord;->onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1931
    :cond_10
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p1, v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isSleeping()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 1932
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->notifyAppStopping()V

    .line 1934
    :cond_1f
    return-void
.end method

.method setTask(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 813
    return-void
.end method

.method setTask(Lcom/android/server/am/TaskRecord;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reparenting"    # Z

    .line 822
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 823
    return-void

    .line 826
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 827
    .local v0, "oldStack":Lcom/android/server/am/ActivityStack;
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 831
    .local v1, "newStack":Lcom/android/server/am/ActivityStack;
    :goto_15
    if-eq v0, v1, :cond_23

    .line 832
    if-nez p2, :cond_1e

    if-eqz v0, :cond_1e

    .line 833
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 836
    :cond_1e
    if-eqz v1, :cond_23

    .line 837
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStack;->onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V

    .line 841
    :cond_23
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 843
    if-nez p2, :cond_2a

    .line 844
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->onParentChanged()V

    .line 846
    :cond_2a
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 7
    .param p1, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2586
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 2587
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_34

    .line 2588
    iget-wide v2, p0, Lcom/android/server/am/ActivityRecord;->createTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v0

    .line 2589
    .local v0, "iconFilename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2591
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 2592
    .local v3, "iconFilePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 2593
    invoke-virtual {p1, v3}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2595
    .end local v0    # "iconFilename":Ljava/lang/String;
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "iconFile":Ljava/io/File;
    .end local v3    # "iconFilePath":Ljava/lang/String;
    :cond_34
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2596
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .line 1346
    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 1347
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 1349
    :cond_f
    return-void
.end method

.method setTurnScreenOn(Z)V
    .registers 2
    .param p1, "turnScreenOn"    # Z

    .line 3334
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->mTurnScreenOn:Z

    .line 3335
    return-void
.end method

.method setVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 1858
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppWindowContainerController;->setVisibility(ZZ)V

    .line 1859
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;)V

    .line 1860
    return-void
.end method

.method setVisible(Z)V
    .registers 4
    .param p1, "newVisible"    # Z

    .line 1900
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-ne v0, p1, :cond_5

    .line 1901
    return-void

    .line 1904
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1905
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mDeferHidingClient:Z

    .line 1906
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 1907
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1908
    return-void
.end method

.method setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 3
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2599
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 2601
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .registers 3
    .param p1, "willCloseOrEnterPip"    # Z

    .line 875
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->setWillCloseOrEnterPip(Z)V

    .line 876
    return-void
.end method

.method shouldBeVisibleIgnoringKeyguard(Z)Z
    .registers 5
    .param p1, "behindFullscreenActivity"    # Z

    .line 1989
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1990
    return v1

    .line 1995
    :cond_8
    if-eqz p1, :cond_23

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v0, :cond_23

    .line 1996
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z

    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    .line 1995
    :goto_24
    return v1
.end method

.method showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "taskSwitch"    # Z

    .line 2609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZZ)V

    .line 2610
    return-void
.end method

.method showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZZ)V
    .registers 28
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "taskSwitch"    # Z
    .param p4, "fromRecents"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2614
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    if-nez v2, :cond_9

    .line 2615
    return-void

    .line 2617
    :cond_9
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_e

    .line 2619
    return-void

    .line 2623
    :cond_e
    const/4 v2, 0x0

    .line 2624
    .local v2, "optionalLabelRes":I
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityStackInjector;->getStartingWindowLabel(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2626
    .local v3, "label":Ljava/lang/CharSequence;
    if-nez v3, :cond_25

    .line 2627
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/server/am/ActivityStackInjector;->getStartingWindowLabelRes(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)I

    move-result v2

    .line 2631
    :cond_25
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2632
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    .line 2633
    .local v4, "compatInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 2636
    if-nez v3, :cond_3b

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2637
    move-object v10, v5

    goto :goto_3c

    :cond_3b
    move-object v10, v3

    :goto_3c
    if-nez v3, :cond_46

    if-nez v2, :cond_44

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move v11, v9

    goto :goto_47

    :cond_44
    move v11, v2

    goto :goto_47

    :cond_46
    const/4 v11, 0x0

    :goto_47
    iget v12, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    .line 2640
    if-eqz v1, :cond_53

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_51
    move-object v15, v9

    goto :goto_55

    :cond_53
    const/4 v9, 0x0

    goto :goto_51

    :goto_55
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->isProcessRunning()Z

    move-result v18

    .line 2641
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->allowTaskSnapshot()Z

    move-result v19

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2642
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v9

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v5

    const/4 v1, 0x1

    if-lt v9, v5, :cond_7d

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v5

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v9

    if-gt v5, v9, :cond_7d

    .line 2633
    move/from16 v20, v1

    goto :goto_80

    .line 2642
    :cond_7d
    nop

    .line 2633
    const/16 v20, 0x0

    :goto_80
    move-object v9, v4

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v21, p4

    invoke-virtual/range {v6 .. v21}, Lcom/android/server/wm/AppWindowContainerController;->addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z

    move-result v5

    .line 2644
    .local v5, "shown":Z
    if-eqz v5, :cond_8f

    .line 2645
    iput v1, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    .line 2647
    :cond_8f
    return-void
.end method

.method public startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "configChanges"    # I

    .line 2260
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2261
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AppWindowContainerController;->startFreezingScreen(I)V

    .line 2263
    :cond_b
    return-void
.end method

.method startLaunchTickingLocked()V
    .registers 5

    .line 2216
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    .line 2217
    return-void

    .line 2219
    :cond_5
    iget-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 2220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 2221
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    .line 2223
    :cond_16
    return-void
.end method

.method public stopFreezingScreenLocked(Z)V
    .registers 3
    .param p1, "force"    # Z

    .line 2266
    if-nez p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz v0, :cond_e

    .line 2267
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2268
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowContainerController;->stopFreezingScreen(Z)V

    .line 2270
    :cond_e
    return-void
.end method

.method supportsFreeform()Z
    .registers 2

    .line 1450
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_22

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1454
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->inFreeFormBlackList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1450
    :goto_23
    return v0
.end method

.method supportsPictureInPicture()Z
    .registers 2

    .line 1427
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1428
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1427
    :goto_17
    return v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 1439
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_14

    .line 1440
    invoke-direct {p0}, Lcom/android/server/am/ActivityRecord;->supportsResizeableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1439
    :goto_15
    return v0
.end method

.method takeFromHistory()V
    .registers 2

    .line 1380
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_15

    .line 1381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1382
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    .line 1383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1385
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 1387
    :cond_15
    return-void
.end method

.method takeOptionsLocked()Landroid/app/ActivityOptions;
    .registers 3

    .line 1809
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1810
    .local v0, "opts":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1811
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3364
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 3365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v1, :cond_19

    const/4 v1, -0x1

    goto :goto_1d

    :cond_19
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3366
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_27

    const-string v1, " f}"

    goto :goto_2a

    :cond_27
    const-string/jumbo v1, "}"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3365
    return-object v0

    .line 3368
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3369
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3371
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    iget v1, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3373
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3374
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityRecord;->stringName:Ljava/lang/String;

    .line 3376
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 631
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 632
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 633
    return-void
.end method

.method updateMultiWindowMode()V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_17

    goto :goto_36

    .line 725
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 727
    return-void

    .line 731
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->inMultiWindowMode()Z

    move-result v0

    .line 732
    .local v0, "inMultiWindowMode":Z
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_35

    .line 733
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 734
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 736
    :cond_35
    return-void

    .line 722
    .end local v0    # "inMultiWindowMode":Z
    :cond_36
    :goto_36
    return-void
.end method

.method updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 1671
    if-eqz p1, :cond_d

    .line 1672
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_b

    .line 1673
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 1675
    :cond_b
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    .line 1677
    :cond_d
    return-void
.end method

.method updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p2, "forceUpdate"    # Z

    .line 749
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_17

    goto :goto_3a

    .line 753
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 754
    .local v0, "inPictureInPictureMode":Z
    :goto_22
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne v0, v1, :cond_28

    if-eqz p2, :cond_39

    .line 757
    :cond_28
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 760
    iput-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 761
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/TaskRecord;->computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 763
    .local v1, "newConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->schedulePictureInPictureModeChanged(Landroid/content/res/Configuration;)V

    .line 764
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityRecord;->scheduleMultiWindowModeChanged(Landroid/content/res/Configuration;)V

    .line 766
    .end local v1    # "newConfig":Landroid/content/res/Configuration;
    :cond_39
    return-void

    .line 750
    .end local v0    # "inPictureInPictureMode":Z
    :cond_3a
    :goto_3a
    return-void
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3380
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3381
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3382
    iget v2, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3383
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3384
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3385
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3388
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3389
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 3390
    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3391
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->mState:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack$ActivityState;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3392
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->visible:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3393
    iget-boolean v2, p0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3394
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_47

    .line 3395
    const-wide v2, 0x10500000006L

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3397
    :cond_47
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3398
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3399
    return-void
.end method
