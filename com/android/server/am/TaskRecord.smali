.class Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "TaskRecord.java"

# interfaces
.implements Lcom/android/server/wm/TaskWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskRecord$TaskRecordFactory;,
        Lcom/android/server/am/TaskRecord$TaskActivitiesReport;,
        Lcom/android/server/am/TaskRecord$ReparentMoveStackMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_IS_AVAILABLE:Ljava/lang/String; = "is_available"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field mResizeMode:I

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/am/ProcessRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStack:Lcom/android/server/am/ActivityStack;

.field private mSupportsPictureInPicture:Z

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field private mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZIIZ)V
    .registers 50
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_userId"    # I
    .param p13, "_effectiveUid"    # I
    .param p14, "_lastDescription"    # Ljava/lang/String;
    .param p16, "lastTimeMoved"    # J
    .param p18, "neverRelinquishIdentity"    # Z
    .param p19, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p20, "taskAffiliation"    # I
    .param p21, "prevTaskId"    # I
    .param p22, "nextTaskId"    # I
    .param p23, "taskAffiliationColor"    # I
    .param p24, "callingUid"    # I
    .param p25, "callingPackage"    # Ljava/lang/String;
    .param p26, "resizeMode"    # I
    .param p27, "supportsPictureInPicture"    # Z
    .param p28, "_realActivitySuspended"    # Z
    .param p29, "userSetupComplete"    # Z
    .param p30, "minWidth"    # I
    .param p31, "minHeight"    # I
    .param p32, "_isAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZIIZ)V"
        }
    .end annotation

    .local p15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 255
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 257
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 261
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 275
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 284
    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 288
    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 295
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 297
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 305
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 306
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 307
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 312
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 320
    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 323
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 395
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 396
    iput v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 397
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 398
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 399
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 400
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 401
    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 402
    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 403
    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 404
    move/from16 v8, p28

    iput-boolean v8, v0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 405
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 406
    move/from16 v10, p9

    iput-boolean v10, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 409
    move/from16 v11, p32

    iput-boolean v11, v0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 410
    move/from16 v12, p10

    iput-boolean v12, v0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 411
    move/from16 v13, p11

    iput-boolean v13, v0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 412
    move/from16 v14, p12

    iput v14, v0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 413
    move/from16 v15, p29

    iput-boolean v15, v0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 414
    move/from16 v2, p13

    iput v2, v0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 416
    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 417
    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 418
    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 419
    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 420
    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 421
    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 422
    move/from16 v2, p23

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 423
    move/from16 v2, p21

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 424
    move/from16 v2, p22

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 425
    move/from16 v2, p24

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 426
    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 427
    move/from16 v2, p26

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 428
    move/from16 v2, p27

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 429
    move/from16 v2, p30

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 430
    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 431
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_ec

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_ec

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 434
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 435
    const/4 v2, 0x4

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 438
    :cond_ec
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 355
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 255
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 257
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 261
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 275
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 284
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 295
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 297
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 305
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 306
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 307
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 312
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 320
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 323
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 356
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 357
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 358
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 360
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 361
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 362
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 363
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 365
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 366
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 367
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 368
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 370
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 372
    iget v1, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 373
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 372
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 375
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 376
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 377
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 378
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 332
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 255
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 257
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 261
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 275
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 284
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 295
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 297
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 305
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 306
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 307
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 312
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 320
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 323
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 333
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 334
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 335
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 337
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 338
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 339
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 340
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 342
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 343
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 344
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 345
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 347
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 348
    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1723
    if-nez p1, :cond_3

    .line 1724
    return-void

    .line 1726
    :cond_3
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1727
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1731
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1732
    const/4 v2, -0x1

    if-ne v0, v2, :cond_16

    .line 1733
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1735
    :cond_16
    if-ne v1, v2, :cond_1e

    .line 1736
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1739
    :cond_1e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_28

    move v2, v4

    goto :goto_29

    :cond_28
    move v2, v3

    .line 1740
    .local v2, "adjustWidth":Z
    :goto_29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_31

    move v3, v4

    nop

    .line 1741
    .local v3, "adjustHeight":Z
    :cond_31
    if-nez v2, :cond_36

    if-nez v3, :cond_36

    .line 1742
    return-void

    .line 1745
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1746
    .local v4, "configBounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_53

    .line 1747
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4e

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_4e

    .line 1748
    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->left:I

    goto :goto_53

    .line 1752
    :cond_4e
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 1755
    :cond_53
    :goto_53
    if-eqz v3, :cond_6c

    .line 1756
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_67

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_67

    .line 1757
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->top:I

    goto :goto_6c

    .line 1761
    :cond_67
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1764
    :cond_6c
    :goto_6c
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1583
    const/4 v0, 0x1

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_54

    .line 1587
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v3

    .line 1588
    .local v1, "landscape":Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1589
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3b

    .line 1590
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1591
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    if-ne v1, v4, :cond_37

    goto :goto_39

    .line 1590
    :cond_37
    move v0, v3

    goto :goto_3a

    .line 1591
    :cond_39
    :goto_39
    nop

    .line 1590
    :goto_3a
    return v0

    .line 1593
    :cond_3b
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_42

    if-nez v1, :cond_49

    :cond_42
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_52

    if-nez v1, :cond_52

    .line 1596
    :cond_49
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->supportsFreeform()Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_52

    .line 1593
    :cond_50
    move v0, v3

    goto :goto_53

    .line 1596
    :cond_52
    :goto_52
    nop

    .line 1593
    :goto_53
    return v0

    .line 1585
    .end local v1    # "landscape":Z
    .end local v2    # "configBounds":Landroid/graphics/Rect;
    :cond_54
    :goto_54
    return v0
.end method

.method private closeRecentsChain()V
    .registers 3

    .line 1026
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_b

    .line 1027
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1029
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_16

    .line 1030
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1032
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1033
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1034
    return-void
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .registers 11
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2280
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .registers 13
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2274
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2261
    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    if-nez v0, :cond_c

    .line 2262
    new-instance v0, Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;-><init>()V

    invoke-static {v0}, Lcom/android/server/am/TaskRecord;->setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V

    .line 2264
    :cond_c
    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    return-object v0
.end method

.method private isResizeable(Z)Z
    .registers 3
    .param p1, "checkSupportsPip"    # Z

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_1a

    .line 1541
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1537
    :goto_23
    return v0
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .registers 3
    .param p0, "sourceWindowingMode"    # I
    .param p1, "targetWindowingMode"    # I

    .line 799
    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .registers 3
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2285
    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 9
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 835
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 836
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    goto :goto_17

    .line 838
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v0, :cond_17

    .line 839
    return-void

    .line 842
    :cond_17
    :goto_17
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_23

    .line 847
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 849
    :cond_23
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 852
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_59

    .line 853
    if-eqz p1, :cond_4a

    .line 857
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3e

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 858
    :cond_3e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 859
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 860
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 864
    :cond_4a
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 865
    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_54

    :cond_53
    move-object v3, v0

    :goto_54
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 866
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_8c

    .line 868
    :cond_59
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_7d

    .line 871
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 872
    .local v4, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 873
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 874
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 877
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 878
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 879
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 880
    .end local v4    # "targetIntent":Landroid/content/Intent;
    goto :goto_8c

    .line 881
    :cond_7d
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 882
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 883
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 887
    .end local v3    # "targetComponent":Landroid/content/ComponentName;
    :goto_8c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_92

    move v0, v2

    goto :goto_98

    :cond_92
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 888
    .local v0, "intentFlags":I
    :goto_98
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_9f

    .line 891
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 893
    :cond_9f
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 894
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_be

    move v3, v1

    goto :goto_bf

    :cond_be
    move v3, v2

    :goto_bf
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 896
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_ca

    .line 898
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_de

    .line 899
    :cond_ca
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_dc

    .line 904
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_d9

    .line 905
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_de

    .line 907
    :cond_d9
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_de

    .line 910
    :cond_dc
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 912
    :goto_de
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 913
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 915
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_101

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_101

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 916
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 917
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 920
    :cond_101
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1506
    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 1507
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1508
    return-void

    .line 1511
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 1512
    .local v1, "pkg":Ljava/lang/String;
    :goto_12
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    .line 1513
    .local v2, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    packed-switch v3, :pswitch_data_42

    goto :goto_40

    .line 1528
    :pswitch_1e
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1529
    const/4 v0, 0x2

    nop

    :cond_28
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_40

    .line 1524
    :pswitch_2b
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1525
    goto :goto_40

    .line 1520
    :pswitch_2f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1521
    goto :goto_40

    .line 1515
    :pswitch_33
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1516
    const/4 v0, 0x3

    nop

    :cond_3d
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 1517
    nop

    .line 1534
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 924
    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_13

    .line 925
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 926
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_18

    .line 928
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 929
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 931
    :goto_18
    return-void
.end method

.method static setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V
    .registers 1
    .param p0, "factory"    # Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    .line 2268
    sput-object p0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    .line 2269
    return-void
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1228
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1229
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1250
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1251
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_28

    if-ne v0, p0, :cond_9

    goto :goto_28

    .line 1252
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add r= to task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_28
    :goto_28
    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1259
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3d

    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_3d

    .line 1261
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1264
    :cond_3d
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1265
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    if-nez v1, :cond_4e

    .line 1270
    invoke-virtual {p2, v2}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1272
    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setActivityType(I)V

    .line 1273
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 1274
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 1275
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 1277
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1278
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v2

    .line 1277
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    goto :goto_7d

    .line 1281
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    .line 1284
    :goto_7d
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1286
    .local v1, "size":I
    if-ne p1, v1, :cond_97

    if-lez v1, :cond_97

    .line 1287
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1288
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_97

    .line 1291
    add-int/lit8 p1, p1, -0x1

    .line 1295
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_97
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1296
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1299
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 1300
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1304
    :cond_af
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1305
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    .line 1306
    .local v2, "appController":Lcom/android/server/wm/AppWindowContainerController;
    if-eqz v2, :cond_bd

    .line 1309
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V

    .line 1314
    :cond_bd
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 1315
    return-void
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1232
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 1233
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6
    .param p1, "taskSwitch"    # Z

    .line 1962
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 1963
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1964
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_1b

    .line 1965
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1962
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1968
    .end local v0    # "activityNdx":I
    :cond_1e
    return-void
.end method

.method autoRemoveFromRecents()Z
    .registers 2

    .line 1380
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_11

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

.method canBeLaunchedOnDisplay(I)Z
    .registers 9
    .param p1, "displayId"    # I

    .line 1571
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v3

    .line 1571
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method cancelWindowTransition()V
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->cancelWindowTransition()V

    .line 805
    return-void
.end method

.method clearAllPendingOptions()V
    .registers 4

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_13

    .line 1988
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    .line 1987
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1990
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method clearRootProcess()V
    .registers 2

    .line 1980
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e

    .line 1981
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    .line 1984
    :cond_e
    return-void
.end method

.method computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .registers 11
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .line 1773
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1774
    .local v0, "newOverrideConfig":Landroid/content/res/Configuration;
    if-eqz p1, :cond_3a

    .line 1775
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1776
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1777
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1778
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_26

    move v6, v5

    goto :goto_27

    :cond_26
    move v6, v4

    :goto_27
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_31

    move v7, v5

    goto :goto_32

    :cond_31
    move v7, v4

    :goto_32
    move-object v1, p0

    move-object v2, v0

    move-object v4, p2

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1782
    :cond_3a
    return-object v0
.end method

.method computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 23
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "insetBounds"    # Landroid/graphics/Rect;
    .param p4, "overrideWidth"    # Z
    .param p5, "overrideHeight"    # Z

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 1866
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1867
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1869
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->unset()V

    .line 1870
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 1872
    .local v14, "parentConfig":Landroid/content/res/Configuration;
    iget v1, v14, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const v2, 0x3bcccccd    # 0.00625f

    mul-float v15, v1, v2

    .line 1874
    .local v15, "density":F
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_75

    .line 1875
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v16

    .line 1876
    .local v16, "stackController":Lcom/android/server/wm/StackWindowController;
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v11

    .line 1876
    move-object/from16 v1, v16

    move-object v2, v13

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v15

    move-object v9, v12

    move-object v10, v14

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/StackWindowController;->adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;I)V

    .line 1879
    .end local v16    # "stackController":Lcom/android/server/wm/StackWindowController;
    nop

    .line 1883
    iget v1, v12, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v12, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v1, v2, :cond_4d

    .line 1884
    const/4 v1, 0x1

    goto :goto_4e

    .line 1885
    :cond_4d
    const/4 v1, 0x2

    :goto_4e
    iput v1, v12, Landroid/content/res/Configuration;->orientation:I

    .line 1890
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-int v1, v1

    .line 1891
    .local v1, "compatScreenWidthDp":I
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    float-to-int v2, v2

    .line 1894
    .local v2, "compatScreenHeightDp":I
    const/16 v3, 0x24

    .line 1895
    .local v3, "sl":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1896
    .local v4, "longSize":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1897
    .local v5, "shortSize":I
    const/16 v6, 0x24

    invoke-static {v6, v4, v5}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v6

    iput v6, v12, Landroid/content/res/Configuration;->screenLayout:I

    .line 1898
    return-void

    .line 1880
    .end local v1    # "compatScreenWidthDp":I
    .end local v2    # "compatScreenHeightDp":I
    .end local v3    # "sl":I
    .end local v4    # "longSize":I
    .end local v5    # "shortSize":I
    :cond_75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected stack when calculating override config"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method createWindowContainer(ZZ)V
    .registers 16
    .param p1, "onTop"    # Z
    .param p2, "showForAllUsers"    # Z

    .line 445
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_28

    .line 450
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 451
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v12, Lcom/android/server/wm/TaskWindowContainerController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 452
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iget-boolean v8, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    iget-object v11, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v1, v12

    move-object v3, p0

    move-object v6, v0

    move v9, p1

    move v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskWindowContainerController;-><init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;IZZZLandroid/app/ActivityManager$TaskDescription;)V

    .line 451
    invoke-virtual {p0, v12}, Lcom/android/server/am/TaskRecord;->setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V

    .line 455
    return-void

    .line 446
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1993
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1994
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1995
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1996
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1997
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 1999
    :cond_3e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_5e

    .line 2003
    :cond_5a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_68

    .line 2001
    :cond_5e
    :goto_5e
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_97

    .line 2007
    :cond_70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2009
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2012
    :cond_97
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_c0

    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2014
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2016
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2017
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2019
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_c0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_e5

    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2021
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2023
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_e5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_fb

    .line 2027
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2028
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2030
    :cond_fb
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_111

    .line 2031
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2032
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    :cond_111
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_123

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_123

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_123

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_150

    .line 2035
    :cond_123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2036
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2037
    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2038
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2040
    :cond_150
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_161

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_161

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_161

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18f

    .line 2042
    :cond_161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2043
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2044
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2045
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    :cond_18f
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v1, :cond_1a6

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a6

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_1a6

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_1a6

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_206

    .line 2050
    :cond_1a6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2051
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2052
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2053
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_1cd

    .line 2054
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1da

    .line 2056
    :cond_1cd
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2058
    :goto_1da
    const-string v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2059
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2060
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_1f4

    .line 2061
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_201

    .line 2063
    :cond_1f4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2065
    :goto_201
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    :cond_206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2068
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_21f

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_21f

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_240

    .line 2069
    :cond_21f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2070
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2071
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2073
    :cond_240
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_252

    .line 2074
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2076
    :cond_252
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_264

    .line 2077
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2079
    :cond_264
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hasBeenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportsPictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " supportsSplitScreenWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2088
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1611
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1612
    .local v0, "realActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "activityNdx":I
    :goto_a
    if-ltz v1, :cond_25

    .line 1613
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1614
    .local v2, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_19

    .line 1615
    goto :goto_22

    .line 1617
    :cond_19
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1618
    return-object v2

    .line 1612
    .end local v2    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1621
    .end local v1    # "activityNdx":I
    :cond_25
    const/4 v1, 0x0

    return-object v1
.end method

.method findEffectiveRootIndex()I
    .registers 6

    .line 1698
    const/4 v0, 0x0

    .line 1699
    .local v0, "effectiveNdx":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1700
    .local v1, "topActivityNdx":I
    const/4 v2, 0x0

    .local v2, "activityNdx":I
    :goto_a
    if-gt v2, v1, :cond_26

    .line 1701
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1702
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_19

    .line 1703
    goto :goto_23

    .line 1705
    :cond_19
    move v0, v2

    .line 1706
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_23

    .line 1707
    goto :goto_26

    .line 1700
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1710
    .end local v2    # "activityNdx":I
    :cond_26
    :goto_26
    return v0
.end method

.method public getActivityType()I
    .registers 4

    .line 1238
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 1239
    .local v0, "applicationType":I
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1d

    .line 1242
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    return v1

    .line 1240
    :cond_1d
    :goto_1d
    return v0
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1127
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2a

    .line 1128
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_2a

    .line 1129
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1130
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_27

    .line 1131
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1135
    .end local v0    # "activityNdx":I
    :cond_2a
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 2

    .line 1074
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    :goto_9
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p1, "index"    # I

    .line 1010
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 1005
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getInactiveDuration()J
    .registers 5

    .line 822
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    .line 1944
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1945
    return-object v1

    .line 1948
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 1949
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    if-eq v0, v2, :cond_31

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_31

    .line 1955
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1956
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 1958
    :cond_2e
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 1954
    :cond_31
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    :cond_3e
    return-object v1
.end method

.method getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V
    .registers 6
    .param p1, "reportOut"    # Lcom/android/server/am/TaskRecord$TaskActivitiesReport;

    .line 1156
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->reset()V

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_48

    .line 1158
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1159
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1a

    .line 1160
    goto :goto_45

    .line 1163
    :cond_1a
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    .line 1166
    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    .line 1168
    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_30

    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1169
    :cond_30
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    .line 1172
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1174
    :cond_35
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_45

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_45

    .line 1176
    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    .line 1157
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1179
    .end local v0    # "i":I
    :cond_48
    return-void
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 1015
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .line 1079
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1080
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1081
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 1082
    nop

    .line 1079
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1084
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    return-object v1

    .line 1086
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 5
    .param p1, "reducedResolution"    # Z

    .line 814
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
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

    .line 962
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .registers 2

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 1090
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "includeOverlays"    # Z

    .line 1094
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_21

    .line 1095
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1096
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1e

    if-nez p1, :cond_1d

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1d

    .line 1097
    goto :goto_1e

    .line 1099
    :cond_1d
    return-object v1

    .line 1094
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1101
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 592
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->getBounds(Landroid/graphics/Rect;)V

    .line 593
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-object v0
.end method

.method isClearingToReuseTask()Z
    .registers 2

    .line 1603
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 1545
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 938
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 942
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 943
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isVisible()Z
    .registers 5

    .line 1117
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1118
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1119
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_17

    .line 1120
    return v1

    .line 1117
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1123
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 1491
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_2a

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1496
    :pswitch_1a
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1495
    :pswitch_1d
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 1494
    :pswitch_20
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1493
    :pswitch_23
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1492
    :pswitch_26
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .line 1217
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAtTop(Lcom/android/server/wm/AppWindowContainerController;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 1225
    return-void
.end method

.method okToShowLocked()Z
    .registers 3

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1184
    :goto_16
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1845
    .local v0, "parent":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_9

    .line 1846
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1848
    :cond_9
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v0

    .line 1853
    .local v0, "wasInMultiWindowMode":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_14

    .line 1855
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    .line 1858
    :cond_14
    return-void
.end method

.method protected onParentChanged()V
    .registers 2

    .line 1020
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 1021
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 1022
    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .registers 4
    .param p1, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 484
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 485
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 8
    .param p1, "excludeFinishing"    # Z

    .line 1362
    const/4 v0, 0x0

    .line 1363
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    const/4 v3, 0x0

    if-ltz v1, :cond_25

    .line 1364
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1365
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_1b

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1b

    .line 1366
    goto :goto_22

    .line 1368
    :cond_1b
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_20

    .line 1369
    return v3

    .line 1371
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 1363
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1373
    .end local v1    # "i":I
    :cond_25
    if-lez v0, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    return v2
.end method

.method final performClearTaskAtIndexLocked(IZLjava/lang/String;)V
    .registers 13
    .param p1, "activityNdx"    # I
    .param p2, "pauseImmediately"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 1389
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1390
    .local v0, "numActivities":I
    :goto_6
    if-ge p1, v0, :cond_3b

    .line 1391
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1392
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_15

    .line 1393
    goto :goto_38

    .line 1395
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_26

    .line 1397
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 1398
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1399
    add-int/lit8 p1, p1, -0x1

    .line 1400
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 1401
    :cond_26
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v6, p3

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1403
    add-int/lit8 p1, p1, -0x1

    .line 1404
    add-int/lit8 v0, v0, -0x1

    .line 1390
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_38
    :goto_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1407
    :cond_3b
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1420
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1421
    .local v0, "result":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1422
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 15
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .line 1437
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1438
    .local v0, "numActivities":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "activityNdx":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_7c

    .line 1439
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1440
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_18

    .line 1441
    goto :goto_79

    .line 1443
    :cond_18
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1445
    move-object v4, v3

    .line 1447
    .local v4, "ret":Lcom/android/server/am/ActivityRecord;
    :goto_23
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_55

    .line 1448
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1449
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_35

    .line 1450
    goto :goto_54

    .line 1452
    :cond_35
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 1453
    .local v5, "opts":Landroid/app/ActivityOptions;
    if-eqz v5, :cond_3e

    .line 1454
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1456
    :cond_3e
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "clear-task-stack"

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1458
    add-int/lit8 v1, v1, -0x1

    .line 1459
    add-int/lit8 v0, v0, -0x1

    .line 1447
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_54
    :goto_54
    goto :goto_23

    .line 1466
    :cond_55
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v5, :cond_78

    const/high16 v5, 0x20000000

    and-int/2addr v5, p2

    if-nez v5, :cond_78

    .line 1468
    invoke-static {p2}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    if-nez v5, :cond_78

    .line 1469
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_78

    .line 1470
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_77

    .line 1471
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "clear-task-top"

    const/4 v10, 0x0

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1474
    :cond_77
    return-object v2

    .line 1478
    :cond_78
    return-object v4

    .line 1438
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_79
    :goto_79
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1482
    .end local v1    # "activityNdx":I
    :cond_7c
    return-object v2
.end method

.method performClearTaskLocked()V
    .registers 3

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1414
    const-string v0, "clear-task-all"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1415
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 1416
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reparenting"    # Z

    .line 1327
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p0, :cond_46

    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 1334
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1c

    .line 1336
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 1338
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1339
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1342
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1346
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1349
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1350
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1352
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 1353
    return v1

    .line 1328
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeTaskActivitiesLocked(ZLjava/lang/String;)V
    .registers 4
    .param p1, "pauseImmediately"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1487
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    .line 1488
    return-void
.end method

.method removeWindowContainer()V
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 472
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->removeContainer()V

    .line 473
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 476
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 478
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 479
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    .line 480
    return-void
.end method

.method removedFromRecents()V
    .registers 4

    .line 1037
    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 1038
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_f

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 1040
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1043
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    .line 1046
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    .line 1047
    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZLjava/lang/String;)Z
    .registers 15
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 620
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z
    .registers 36
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "position"    # I
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 646
    move-object/from16 v13, p7

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 647
    .local v14, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 648
    .local v15, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 649
    .local v12, "sourceStack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7fffffff

    if-ne v3, v0, :cond_23

    move v0, v9

    goto :goto_24

    :cond_23
    move v0, v8

    :goto_24
    invoke-virtual {v14, v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 651
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    if-ne v7, v12, :cond_2b

    .line 652
    return v8

    .line 654
    :cond_2b
    iget v0, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 655
    return v8

    .line 658
    :cond_34
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    .line 659
    .local v11, "toStackWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 661
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_4a

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/server/am/TaskRecord;->replaceWindowsOnTaskMove(II)Z

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v9

    goto :goto_4b

    :cond_4a
    move v0, v8

    :goto_4b
    move/from16 v16, v0

    .line 663
    .local v16, "mightReplaceWindow":Z
    if-eqz v16, :cond_54

    .line 672
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v15, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 675
    :cond_54
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 676
    move/from16 v17, v9

    .line 678
    .local v17, "kept":Z
    :try_start_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_279

    move-object/from16 v18, v0

    .line 679
    .local v18, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v8, v18

    if-eqz v8, :cond_7d

    .end local v18    # "r":Lcom/android/server/am/ActivityRecord;
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    :try_start_63
    invoke-virtual {v14, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, v8, :cond_7d

    move v0, v9

    goto :goto_7e

    .line 768
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_71
    move-exception v0

    move/from16 v24, v3

    move-object v9, v7

    move-object v7, v10

    move v8, v11

    move-object/from16 v23, v12

    move-object v10, v2

    move-object v2, v14

    goto/16 :goto_283

    .line 680
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7d
    const/4 v0, 0x0

    :goto_7e
    move/from16 v18, v0

    .line 681
    .local v18, "wasFocused":Z
    if-eqz v8, :cond_8a

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_86
    .catchall {:try_start_63 .. :try_end_86} :catchall_71

    if-ne v0, v8, :cond_8a

    move v0, v9

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    move-object/from16 v19, v10

    move v10, v0

    .line 682
    .local v10, "wasResumed":Z
    .local v19, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_a3

    :try_start_90
    iget-object v0, v12, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_96

    if-ne v0, v8, :cond_a3

    move v0, v9

    goto :goto_a4

    .line 768
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v18    # "wasFocused":Z
    :catchall_96
    move-exception v0

    move-object v10, v2

    move/from16 v24, v3

    move-object v9, v7

    move v8, v11

    move-object/from16 v23, v12

    move-object v2, v14

    move-object/from16 v7, v19

    goto/16 :goto_283

    .line 682
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v18    # "wasFocused":Z
    :cond_a3
    const/4 v0, 0x0

    :goto_a4
    move/from16 v20, v11

    move v11, v0

    .line 687
    .local v11, "wasPaused":Z
    .local v20, "toStackWindowingMode":I
    if-eqz v8, :cond_c5

    :try_start_a9
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 688
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_b7

    if-ne v0, v8, :cond_c5

    move v0, v9

    goto :goto_c6

    .line 768
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    :catchall_b7
    move-exception v0

    move-object v10, v2

    move/from16 v24, v3

    move-object v9, v7

    move-object/from16 v23, v12

    move-object v2, v14

    move-object/from16 v7, v19

    move/from16 v8, v20

    goto/16 :goto_283

    .line 688
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v18    # "wasFocused":Z
    :cond_c5
    const/4 v0, 0x0

    :goto_c6
    move/from16 v21, v0

    .line 691
    .local v21, "wasFront":Z
    const/4 v9, 0x0

    :try_start_c9
    invoke-virtual {v7, v1, v3, v9}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_26c

    move v3, v0

    .line 695
    .end local p2    # "position":I
    .local v3, "position":I
    :try_start_ce
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v9
    :try_end_d4
    .catchall {:try_start_ce .. :try_end_d4} :catchall_25e

    if-nez v4, :cond_d8

    const/4 v2, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v2, 0x0

    :goto_d9
    :try_start_d9
    invoke-virtual {v0, v9, v3, v2}, Lcom/android/server/wm/TaskWindowContainerController;->reparent(Lcom/android/server/wm/StackWindowController;IZ)V

    .line 698
    if-eqz v4, :cond_e8

    const/4 v2, 0x1

    if-ne v4, v2, :cond_e6

    if-nez v18, :cond_e8

    if-eqz v21, :cond_e6

    goto :goto_e8

    :cond_e6
    const/4 v0, 0x0

    goto :goto_e9

    :cond_e8
    :goto_e8
    const/4 v0, 0x1

    :goto_e9
    move v2, v0

    .line 701
    .local v2, "moveStackToFront":Z
    if-eqz v2, :cond_ef

    .line 702
    nop

    .line 701
    const/4 v0, 0x2

    goto :goto_f1

    .line 702
    :cond_ef
    nop

    .line 701
    const/4 v0, 0x1

    :goto_f1
    invoke-virtual {v12, v1, v13, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 703
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v3, v9, v13}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V

    .line 706
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0
    :try_end_fc
    .catchall {:try_start_d9 .. :try_end_fc} :catchall_250

    move/from16 v24, v3

    const/4 v3, 0x5

    .end local v3    # "position":I
    .local v24, "position":I
    if-eq v0, v3, :cond_11e

    .line 707
    :try_start_101
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    if-ne v0, v3, :cond_11e

    .line 709
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v9, 0x1

    invoke-virtual {v0, v3, v9}, Lcom/android/server/wm/StackWindowController;->setMiuiConfigFlag(IZ)V

    goto :goto_120

    .line 768
    .end local v2    # "moveStackToFront":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    :catchall_111
    move-exception v0

    move-object v9, v7

    move-object/from16 v23, v12

    move-object v2, v14

    move-object/from16 v7, v19

    move/from16 v8, v20

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .local v2, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v8, "toStackWindowingMode":I
    .local v9, "toStack":Lcom/android/server/am/ActivityStack;
    .local v23, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_11a
    move-object/from16 v10, p1

    goto/16 :goto_283

    .line 712
    .end local v9    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v2, "moveStackToFront":Z
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v18    # "wasFocused":Z
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    .restart local v21    # "wasFront":Z
    :cond_11e
    const/4 v3, 0x2

    const/4 v9, 0x1

    :goto_120
    if-eqz p6, :cond_125

    .line 714
    invoke-virtual {v14, v1, v12}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_125
    .catchall {:try_start_101 .. :try_end_125} :catchall_111

    .line 719
    :cond_125
    :try_start_125
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_127
    .catchall {:try_start_125 .. :try_end_127} :catchall_243

    if-eqz v0, :cond_134

    .line 721
    :try_start_129
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v9, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v3, v9}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_132} :catch_133
    .catchall {:try_start_129 .. :try_end_132} :catchall_111

    .line 723
    goto :goto_134

    .line 722
    :catch_133
    move-exception v0

    .line 728
    :cond_134
    :goto_134
    if-eqz v8, :cond_14e

    .line 729
    move-object v3, v7

    .end local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v3, "toStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v22, v8

    const/4 v9, 0x0

    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .local v22, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v25, v14

    const/4 v14, 0x1

    move v9, v2

    .end local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v25, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    move-object/from16 v23, v12

    move-object v12, v13

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :try_start_141
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_145

    goto :goto_156

    .line 768
    .end local v2    # "moveStackToFront":Z
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_145
    move-exception v0

    move-object v9, v3

    move-object/from16 v7, v19

    .end local v3    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .end local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v2, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v8, "toStackWindowingMode":I
    .restart local v9    # "toStack":Lcom/android/server/am/ActivityStack;
    :goto_149
    move/from16 v8, v20

    :goto_14b
    move-object/from16 v2, v25

    goto :goto_11a

    .line 732
    .end local v9    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v2, "moveStackToFront":Z
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v18    # "wasFocused":Z
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    .restart local v21    # "wasFront":Z
    :cond_14e
    move-object v3, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v12

    move-object/from16 v25, v14

    const/4 v14, 0x1

    .end local v7    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v3    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    :goto_156
    if-nez v5, :cond_173

    .line 733
    :try_start_158
    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;
    :try_end_15e
    .catchall {:try_start_158 .. :try_end_15e} :catchall_167

    move-object/from16 v7, v19

    :try_start_160
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_164

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_175

    .line 768
    .end local v2    # "moveStackToFront":Z
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_164
    move-exception v0

    move-object v9, v3

    goto :goto_149

    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_167
    move-exception v0

    move-object/from16 v7, v19

    move-object v9, v3

    move/from16 v8, v20

    move-object/from16 v2, v25

    move-object/from16 v10, p1

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_283

    .line 738
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "moveStackToFront":Z
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v18    # "wasFocused":Z
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "wasFront":Z
    .restart local v22    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_173
    move-object/from16 v7, v19

    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_175
    :try_start_175
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->prepareFreezingTaskBounds()V
    :try_end_178
    .catchall {:try_start_175 .. :try_end_178} :catchall_239

    .line 741
    const/4 v0, 0x3

    move/from16 v8, v20

    if-ne v8, v0, :cond_17f

    .end local v20    # "toStackWindowingMode":I
    .local v8, "toStackWindowingMode":I
    move v0, v14

    goto :goto_180

    :cond_17f
    const/4 v0, 0x0

    .line 743
    .local v0, "toStackSplitScreenPrimary":Z
    :goto_180
    :try_start_180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 744
    .local v9, "configBounds":Landroid/graphics/Rect;
    if-eq v8, v14, :cond_18d

    const/4 v12, 0x4

    if-ne v8, v12, :cond_18a

    goto :goto_18d

    .line 749
    :cond_18a
    move/from16 v26, v2

    goto :goto_1ab

    .line 746
    :cond_18d
    :goto_18d
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-static {v9, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_195
    .catchall {:try_start_180 .. :try_end_195} :catchall_231

    if-nez v12, :cond_1a9

    .line 747
    :try_start_197
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-nez v16, :cond_19e

    goto :goto_19f

    :cond_19e
    const/4 v14, 0x0

    :goto_19f
    move/from16 v26, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2, v14, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v12

    .end local v2    # "moveStackToFront":Z
    .local v26, "moveStackToFront":Z
    move/from16 v17, v12

    goto :goto_1fb

    .line 749
    .end local v26    # "moveStackToFront":Z
    .restart local v2    # "moveStackToFront":Z
    :cond_1a9
    move/from16 v26, v2

    .end local v2    # "moveStackToFront":Z
    .restart local v26    # "moveStackToFront":Z
    :goto_1ab
    const/4 v2, 0x5

    if-ne v8, v2, :cond_1d8

    .line 752
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/util/MiuiMultiWindowUtils;->getFreeformRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    .line 753
    .local v2, "bounds":Landroid/graphics/Rect;
    if-nez v2, :cond_1c6

    .line 754
    iget-object v12, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v1, v14}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    .line 755
    move-object v2, v9

    goto :goto_1c7

    .line 757
    :cond_1c6
    const/4 v14, 0x0

    :goto_1c7
    if-nez v16, :cond_1cb

    const/4 v12, 0x1

    goto :goto_1cc

    :cond_1cb
    const/4 v12, 0x0

    :goto_1cc
    const/4 v14, 0x2

    invoke-virtual {v1, v2, v14, v12, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v12

    move/from16 v17, v12

    .line 758
    .end local v2    # "bounds":Landroid/graphics/Rect;
    goto :goto_1fb

    .line 768
    .end local v0    # "toStackSplitScreenPrimary":Z
    .end local v9    # "configBounds":Landroid/graphics/Rect;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "moveStackToFront":Z
    :catchall_1d4
    move-exception v0

    move-object v9, v3

    goto/16 :goto_14b

    .line 758
    .restart local v0    # "toStackSplitScreenPrimary":Z
    .restart local v9    # "configBounds":Landroid/graphics/Rect;
    .restart local v10    # "wasResumed":Z
    .restart local v11    # "wasPaused":Z
    .restart local v18    # "wasFocused":Z
    .restart local v21    # "wasFront":Z
    .restart local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "moveStackToFront":Z
    :cond_1d8
    const/4 v14, 0x2

    if-nez v0, :cond_1dd

    if-ne v8, v14, :cond_1fb

    .line 759
    :cond_1dd
    if-eqz v0, :cond_1ea

    const/4 v2, 0x1

    if-ne v4, v2, :cond_1eb

    .line 762
    iget-object v12, v1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V
    :try_end_1e9
    .catchall {:try_start_197 .. :try_end_1e9} :catchall_1d4

    goto :goto_1eb

    .line 764
    :cond_1ea
    const/4 v2, 0x1

    :cond_1eb
    :goto_1eb
    :try_start_1eb
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v12

    if-nez v16, :cond_1f3

    move v14, v2

    goto :goto_1f4

    :cond_1f3
    const/4 v14, 0x0

    :goto_1f4
    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2, v14, v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v12
    :try_end_1f9
    .catchall {:try_start_1eb .. :try_end_1f9} :catchall_231

    move/from16 v17, v12

    .line 768
    .end local v0    # "toStackSplitScreenPrimary":Z
    .end local v9    # "configBounds":Landroid/graphics/Rect;
    .end local v10    # "wasResumed":Z
    .end local v11    # "wasPaused":Z
    .end local v18    # "wasFocused":Z
    .end local v21    # "wasFront":Z
    .end local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "moveStackToFront":Z
    :cond_1fb
    :goto_1fb
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 769
    nop

    .line 771
    if-eqz v16, :cond_20b

    .line 775
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez v17, :cond_207

    const/4 v2, 0x1

    goto :goto_208

    :cond_207
    const/4 v2, 0x0

    :goto_208
    invoke-virtual {v15, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 778
    :cond_20b
    if-nez v6, :cond_21d

    .line 781
    if-nez v16, :cond_211

    const/4 v0, 0x1

    goto :goto_212

    :cond_211
    const/4 v0, 0x0

    :goto_212
    move-object/from16 v2, v25

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 782
    .end local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v2, "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_220

    .line 786
    .end local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    :cond_21d
    move-object/from16 v2, v25

    const/4 v9, 0x0

    .end local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    :goto_220
    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {v2, v1, v0, v9, v3}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 789
    if-ne v10, v3, :cond_22e

    const/16 v27, 0x1

    goto :goto_230

    :cond_22e
    move/from16 v27, v9

    :goto_230
    return v27

    .line 768
    .end local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    :catchall_231
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v10, p1

    move-object v9, v3

    .end local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    goto/16 :goto_283

    .end local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v8    # "toStackWindowingMode":I
    .restart local v20    # "toStackWindowingMode":I
    .restart local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    :catchall_239
    move-exception v0

    move/from16 v8, v20

    move-object/from16 v2, v25

    move-object/from16 v10, p1

    move-object v9, v3

    .end local v20    # "toStackWindowingMode":I
    .end local v25    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v8    # "toStackWindowingMode":I
    goto/16 :goto_283

    .end local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v3    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    :catchall_243
    move-exception v0

    move-object v3, v7

    move-object/from16 v23, v12

    move-object v2, v14

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v10, p1

    move-object v9, v3

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .restart local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v3    # "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_283

    .end local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v8    # "toStackWindowingMode":I
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "position":I
    .local v3, "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    :catchall_250
    move-exception v0

    move/from16 v24, v3

    move-object v3, v7

    move-object/from16 v23, v12

    move-object v2, v14

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v10, p1

    goto :goto_26a

    :catchall_25e
    move-exception v0

    move-object v10, v2

    move/from16 v24, v3

    move-object v3, v7

    move-object/from16 v23, v12

    move-object v2, v14

    move-object/from16 v7, v19

    move/from16 v8, v20

    .local v9, "toStack":Lcom/android/server/am/ActivityStack;
    :goto_26a
    move-object v9, v3

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .restart local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v3, "toStack":Lcom/android/server/am/ActivityStack;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v24    # "position":I
    goto :goto_283

    .end local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v3    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "toStackWindowingMode":I
    .end local v9    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "position":I
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .restart local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "toStackWindowingMode":I
    .restart local p2    # "position":I
    :catchall_26c
    move-exception v0

    move-object v10, v2

    move-object v9, v7

    move-object/from16 v23, v12

    move-object v2, v14

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v24, v3

    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v19    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "toStackWindowingMode":I
    .restart local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v9    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto :goto_283

    .end local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local v8    # "toStackWindowingMode":I
    .end local v9    # "toStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .local v7, "toStack":Lcom/android/server/am/ActivityStack;
    .local v10, "topActivity":Lcom/android/server/am/ActivityRecord;
    .local v11, "toStackWindowingMode":I
    .restart local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    :catchall_279
    move-exception v0

    move-object v9, v7

    move-object v7, v10

    move v8, v11

    move-object/from16 v23, v12

    move-object v10, v2

    move-object v2, v14

    move/from16 v24, v3

    .end local v10    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "toStackWindowingMode":I
    .end local v12    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .end local p2    # "position":I
    .restart local v2    # "supervisor":Lcom/android/server/am/ActivityStackSupervisor;
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "toStackWindowingMode":I
    .restart local v9    # "toStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .restart local v24    # "position":I
    :goto_283
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z
    .registers 16
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    .line 601
    if-eqz p2, :cond_7

    const v0, 0x7fffffff

    :goto_5
    move v3, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :goto_9
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    .registers 17
    .param p1, "preferredStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toTop"    # Z
    .param p3, "moveStackMode"    # I
    .param p4, "animate"    # Z
    .param p5, "deferResume"    # Z
    .param p6, "schedulePictureInPictureModeChange"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 612
    if-eqz p2, :cond_7

    const v0, 0x7fffffff

    :goto_5
    move v3, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :goto_9
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 514
    goto :goto_21

    .line 512
    :catch_8
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Note: WMS has a Freeform taskId, but AMS\'s taskId is different. taskId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_21
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .registers 13
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "resizeMode"    # I
    .param p3, "preserveWindow"    # Z
    .param p4, "deferResume"    # Z

    .line 519
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 522
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_33

    .line 523
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not resizeable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_e7

    .line 524
    nop

    .line 582
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 524
    return v1

    .line 529
    :cond_33
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    move v0, v1

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 530
    .local v0, "forced":Z
    :goto_3b
    :try_start_3b
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_e7

    if-eqz v3, :cond_4c

    if-nez v0, :cond_4c

    .line 532
    nop

    .line 582
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 532
    return v1

    .line 535
    :cond_4c
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v3, :cond_6a

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 540
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_61

    .line 542
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_e7

    .line 544
    :cond_61
    nop

    .line 582
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 544
    return v1

    .line 547
    :cond_6a
    :try_start_6a
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeTask_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v1

    .line 564
    .local v1, "updatedConfig":Z
    const/4 v5, 0x1

    .line 565
    .local v5, "kept":Z
    if-eqz v1, :cond_ac

    .line 566
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 567
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_ac

    if-nez p4, :cond_ac

    .line 568
    invoke-virtual {v6, v2, p3}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v5, v7

    .line 570
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 572
    if-nez v5, :cond_ac

    .line 573
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 577
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_ac
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    .line 579
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b4
    .catchall {:try_start_6a .. :try_end_b4} :catchall_e7

    .line 580
    nop

    .line 582
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 580
    return v5

    .line 548
    .end local v1    # "updatedConfig":Z
    .end local v5    # "kept":Z
    :cond_bd
    :try_start_bd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e7
    .catchall {:try_start_bd .. :try_end_e7} :catchall_e7

    .line 582
    .end local v0    # "forced":Z
    :catchall_e7
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method resizeWindowContainer()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    .line 589
    return-void
.end method

.method returnsToHomeStack()Z
    .registers 4

    .line 947
    const v0, 0x10004000

    .line 948
    .local v0, "returnHomeFlags":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x10004000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2177
    const-string/jumbo v0, "task_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2178
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1d

    .line 2179
    const-string/jumbo v0, "real_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    :cond_1d
    const-string/jumbo v0, "real_activity_suspended"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2182
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_39

    .line 2183
    const-string/jumbo v0, "orig_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2189
    :cond_39
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 2190
    const-string v0, "affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 2192
    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    const-string v1, "@"

    :goto_5a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_71

    .line 2194
    :cond_5e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 2195
    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_6e

    :cond_6c
    const-string v1, "@"

    :goto_6e
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2197
    :cond_71
    :goto_71
    const-string/jumbo v0, "root_has_reset"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2198
    const-string v0, "auto_remove_recents"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2199
    const-string v0, "asked_compat_mode"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2200
    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2201
    const-string/jumbo v0, "user_setup_complete"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2202
    const-string v0, "effective_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2203
    const-string/jumbo v0, "last_time_moved"

    iget-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2204
    const-string/jumbo v0, "never_relinquish_identity"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2205
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_de

    .line 2206
    const-string/jumbo v0, "last_description"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2208
    :cond_de
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_e7

    .line 2209
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2211
    :cond_e7
    const-string/jumbo v0, "task_affiliation_color"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2212
    const-string/jumbo v0, "task_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2213
    const-string/jumbo v0, "prev_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2214
    const-string/jumbo v0, "next_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2215
    const-string v0, "calling_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2216
    const-string v0, "calling_package"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_12b

    const-string v1, ""

    goto :goto_12d

    :cond_12b
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    :goto_12d
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2217
    const-string/jumbo v0, "resize_mode"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2218
    const-string/jumbo v0, "supports_picture_in_picture"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    .line 2219
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 2218
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2220
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_158

    .line 2221
    const-string/jumbo v0, "non_fullscreen_bounds"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2222
    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 2221
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2224
    :cond_158
    const-string/jumbo v0, "min_width"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2225
    const-string/jumbo v0, "min_height"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2226
    const-string/jumbo v0, "persist_task_version"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2228
    const-string/jumbo v0, "is_available"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2230
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_19a

    .line 2231
    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2232
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2233
    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2236
    :cond_19a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1ad

    .line 2237
    const-string v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2238
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2239
    const-string v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2242
    :cond_1ad
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2243
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2244
    .local v1, "numActivities":I
    const/4 v3, 0x0

    .line 2244
    .local v3, "activityNdx":I
    :goto_1b4
    if-ge v3, v1, :cond_1e8

    .line 2245
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2246
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v5, :cond_1e8

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_1e8

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2247
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    if-ne v5, v6, :cond_1d8

    if-lez v3, :cond_1d8

    .line 2251
    goto :goto_1e8

    .line 2253
    :cond_1d8
    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2254
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2255
    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2244
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b4

    .line 2257
    .end local v3    # "activityNdx":I
    :cond_1e8
    :goto_1e8
    return-void
.end method

.method final setFrontOfTask()V
    .registers 8

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "foundFront":Z
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1192
    .local v1, "numActivities":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "activityNdx":I
    .local v3, "foundFront":Z
    :goto_a
    const/4 v4, 0x1

    if-ge v0, v1, :cond_25

    .line 1193
    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1194
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_20

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1c

    goto :goto_20

    .line 1197
    :cond_1c
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1199
    const/4 v3, 0x1

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_22

    .line 1195
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20
    :goto_20
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1192
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1202
    .end local v0    # "activityNdx":I
    :cond_25
    if-nez v3, :cond_33

    if-lez v1, :cond_33

    .line 1205
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1207
    :cond_33
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 827
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 828
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 829
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 830
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    .line 831
    return-void
.end method

.method setLockTaskAuth()V
    .registers 2

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    .line 1503
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .line 957
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 958
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 959
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .line 952
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 953
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 954
    return-void
.end method

.method setResizeMode(I)V
    .registers 5
    .param p1, "resizeMode"    # I

    .line 488
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_5

    .line 489
    return-void

    .line 491
    :cond_5
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 492
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setResizeable(I)V

    .line 493
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 494
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 495
    return-void
.end method

.method setRootProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1971
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    .line 1972
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1973
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_19

    .line 1974
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    .line 1975
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    :cond_19
    return-void
.end method

.method setStack(Lcom/android/server/am/ActivityStack;)V
    .registers 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 970
    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 971
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task must be added as a Stack child first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    .line 974
    .local v0, "oldStack":Lcom/android/server/am/ActivityStack;
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    .line 979
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_34

    .line 980
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1f
    if-ltz v1, :cond_34

    .line 981
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 983
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2a

    .line 984
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 987
    :cond_2a
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_31

    .line 988
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityStack;->onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V

    .line 980
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 993
    .end local v1    # "i":I
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->onParentChanged()V

    .line 994
    return-void
.end method

.method setTaskDockedResizing(Z)V
    .registers 3
    .param p1, "resizing"    # Z

    .line 500
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 501
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDockedResizing(Z)V

    .line 504
    :cond_11
    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .line 1050
    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 1051
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 1052
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 1054
    :goto_b
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 1055
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 1056
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_4e

    .line 1057
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " affilTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_4a

    .line 1060
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1062
    :cond_4a
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1063
    goto :goto_50

    .line 1065
    :cond_4e
    move-object p1, v0

    .line 1066
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    goto :goto_b

    .line 1067
    :cond_50
    :goto_50
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1068
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1069
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 1070
    return-void
.end method

.method protected setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V
    .registers 5
    .param p1, "controller"    # Lcom/android/server/wm/TaskWindowContainerController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_7

    .line 467
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    .line 468
    return-void

    .line 463
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 1552
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_29

    .line 1555
    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1560
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_29
    const/4 v1, 0x1

    nop

    .line 1552
    :cond_2b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2093
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 2094
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2097
    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2099
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2100
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2101
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2104
    :cond_3e
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2108
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 2109
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 2111
    :cond_67
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_7e

    .line 2112
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 2114
    :cond_7e
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 2115
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 2118
    :cond_9d
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 2121
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .line 1105
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_24

    .line 1106
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_24

    .line 1107
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1108
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1109
    return-object v1

    .line 1106
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1113
    .end local v0    # "activityNdx":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .registers 5

    .line 1138
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_29

    .line 1139
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "activityNdx":I
    :goto_c
    if-ltz v0, :cond_29

    .line 1140
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1141
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    if-ne v3, v1, :cond_26

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_26

    .line 1142
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1143
    goto :goto_26

    .line 1145
    :cond_25
    return-object v2

    .line 1139
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1148
    .end local v0    # "activityNdx":I
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method touchActiveTime()V
    .registers 3

    .line 818
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 819
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 3

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1715
    .local v0, "effectiveRootIndex":I
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1716
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateTaskDescription()V

    .line 1720
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 15
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .line 1803
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1804
    return v1

    .line 1806
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1808
    .local v0, "currentBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1811
    .local v2, "newConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x1

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_25

    :cond_23
    move v4, v1

    goto :goto_26

    :cond_25
    :goto_25
    move v4, v3

    :goto_26
    move v10, v4

    .line 1812
    .local v10, "matchParentBounds":Z
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v11

    .line 1813
    .local v11, "persistBounds":Z
    if-eqz v10, :cond_43

    .line 1814
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    if-eqz v11, :cond_3b

    .line 1815
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1817
    :cond_3b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1818
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    goto :goto_7c

    .line 1820
    :cond_43
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1821
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1822
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 1824
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_58

    if-eqz v11, :cond_5e

    .line 1825
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1827
    :cond_5e
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-eq v4, v5, :cond_6a

    move v8, v3

    goto :goto_6b

    :cond_6a
    move v8, v1

    :goto_6b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v5, :cond_75

    move v9, v3

    goto :goto_76

    :cond_75
    move v9, v1

    :goto_76
    move-object v4, p0

    move-object v5, v2

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1830
    :goto_7c
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1831
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    xor-int/2addr v1, v3

    return v1
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;

    .line 1914
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_9

    .line 1915
    return-void

    .line 1918
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1923
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1924
    return-void

    .line 1926
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_26

    .line 1927
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_6c

    .line 1929
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_6c

    .line 1920
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1933
    :cond_52
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_65

    .line 1935
    return-void

    .line 1938
    :cond_65
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1940
    :goto_6c
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 3

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1902
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1903
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1906
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1908
    :cond_16
    return-object v0
.end method

.method updateTaskDescription()V
    .registers 23

    .line 1629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1630
    .local v1, "numActivities":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1631
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_1e

    move v2, v3

    nop

    .line 1632
    .local v2, "relinquish":Z
    :cond_1e
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "activityNdx":I
    :goto_22
    if-ge v3, v1, :cond_4c

    .line 1634
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1635
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_39

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_39

    .line 1638
    add-int/lit8 v3, v3, 0x1

    .line 1639
    goto :goto_4c

    .line 1641
    :cond_39
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_49

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1642
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_49

    .line 1643
    goto :goto_4c

    .line 1633
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1646
    :cond_4c
    :goto_4c
    if-lez v3, :cond_e9

    .line 1651
    const/4 v4, 0x0

    .line 1652
    .local v4, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1653
    .local v5, "iconFilename":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1654
    .local v6, "iconResource":I
    const/4 v7, 0x0

    .line 1655
    .local v7, "colorPrimary":I
    const/4 v8, 0x0

    .line 1656
    .local v8, "colorBackground":I
    const/4 v9, 0x0

    .line 1657
    .local v9, "statusBarColor":I
    const/4 v10, 0x0

    .line 1658
    .local v10, "navigationBarColor":I
    const/4 v11, 0x1

    .line 1659
    .local v11, "topActivity":Z
    add-int/lit8 v3, v3, -0x1

    move-object v13, v4

    move-object v15, v5

    move v14, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "iconFilename":Ljava/lang/String;
    .end local v6    # "iconResource":I
    .end local v7    # "colorPrimary":I
    .end local v8    # "colorBackground":I
    .end local v9    # "statusBarColor":I
    .end local v10    # "navigationBarColor":I
    .end local v11    # "topActivity":Z
    .local v13, "label":Ljava/lang/String;
    .local v14, "iconResource":I
    .local v15, "iconFilename":Ljava/lang/String;
    .local v16, "colorPrimary":I
    .local v17, "colorBackground":I
    .local v18, "statusBarColor":I
    .local v19, "navigationBarColor":I
    .local v20, "topActivity":Z
    :goto_65
    if-ltz v3, :cond_b8

    .line 1660
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1661
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_74

    .line 1662
    goto :goto_b5

    .line 1664
    :cond_74
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v5, :cond_b2

    .line 1665
    if-nez v13, :cond_81

    .line 1666
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 1668
    .end local v13    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    move-object v13, v5

    .end local v5    # "label":Ljava/lang/String;
    .restart local v13    # "label":Ljava/lang/String;
    :cond_81
    const/4 v5, -0x1

    if-ne v14, v5, :cond_8b

    .line 1669
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v5

    .line 1671
    .end local v14    # "iconResource":I
    .local v5, "iconResource":I
    move v14, v5

    .end local v5    # "iconResource":I
    .restart local v14    # "iconResource":I
    :cond_8b
    if-nez v15, :cond_94

    .line 1672
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    .line 1674
    .end local v15    # "iconFilename":Ljava/lang/String;
    .local v5, "iconFilename":Ljava/lang/String;
    move-object v15, v5

    .end local v5    # "iconFilename":Ljava/lang/String;
    .restart local v15    # "iconFilename":Ljava/lang/String;
    :cond_94
    if-nez v16, :cond_9e

    .line 1675
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    .line 1677
    .end local v16    # "colorPrimary":I
    .local v5, "colorPrimary":I
    move/from16 v16, v5

    .end local v5    # "colorPrimary":I
    .restart local v16    # "colorPrimary":I
    :cond_9e
    if-eqz v20, :cond_b2

    .line 1678
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v17

    .line 1679
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v18

    .line 1680
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v19

    .line 1683
    :cond_b2
    const/4 v4, 0x0

    .line 1659
    .end local v20    # "topActivity":Z
    .local v4, "topActivity":Z
    move/from16 v20, v4

    .end local v4    # "topActivity":Z
    .restart local v20    # "topActivity":Z
    :goto_b5
    add-int/lit8 v3, v3, -0x1

    goto :goto_65

    .line 1685
    :cond_b8
    new-instance v12, Landroid/app/ActivityManager$TaskDescription;

    const/4 v6, 0x0

    move-object v4, v12

    move-object v5, v13

    move v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v21, v1

    move-object v1, v12

    move/from16 v12, v19

    .end local v1    # "numActivities":I
    .local v21, "numActivities":I
    invoke-direct/range {v4 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1687
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v1, :cond_da

    .line 1688
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1691
    :cond_da
    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v1, v4, :cond_eb

    .line 1692
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .end local v13    # "label":Ljava/lang/String;
    .end local v14    # "iconResource":I
    .end local v15    # "iconFilename":Ljava/lang/String;
    .end local v16    # "colorPrimary":I
    .end local v17    # "colorBackground":I
    .end local v18    # "statusBarColor":I
    .end local v19    # "navigationBarColor":I
    .end local v20    # "topActivity":Z
    goto :goto_eb

    .line 1695
    .end local v21    # "numActivities":I
    .restart local v1    # "numActivities":I
    :cond_e9
    move/from16 v21, v1

    .end local v1    # "numActivities":I
    .restart local v21    # "numActivities":I
    :cond_eb
    :goto_eb
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2125
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2126
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2127
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2128
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_34

    .line 2129
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2130
    .local v3, "activity":Lcom/android/server/am/ActivityRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2128
    .end local v3    # "activity":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 2132
    .end local v2    # "i":I
    :cond_34
    const-wide v2, 0x10500000004L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2133
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4e

    .line 2134
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2136
    :cond_4e
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_60

    .line 2137
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2139
    :cond_60
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_72

    .line 2140
    const-wide v2, 0x10900000007L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2142
    :cond_72
    const-wide v2, 0x10500000008L

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2143
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2145
    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2147
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_a6

    .line 2148
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2149
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2151
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_a6
    const-wide v2, 0x1050000000cL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2152
    const-wide v2, 0x1050000000dL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2153
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2154
    return-void
.end method
