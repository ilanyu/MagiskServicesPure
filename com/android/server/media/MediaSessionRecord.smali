.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbackHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Landroid/content/pm/ParceledListSlice;

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;)V
    .registers 12
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p8, "handlerLooper"    # Landroid/os/Looper;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 111
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 113
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 114
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 117
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 715
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$2;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 122
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 123
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 124
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 125
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 127
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 128
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 129
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 130
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 131
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 132
    new-instance v1, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {v1, p0, p8}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 133
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 135
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 136
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/media/MediaSessionRecord;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/media/MediaSessionRecord;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # J

    .line 65
    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/PlaybackState;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/content/pm/ParceledListSlice;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/AudioAttributes;

    .line 65
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Landroid/media/session/ISessionControllerCallback;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100()Z
    .registers 1

    .line 65
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .line 65
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/media/MediaSessionRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method private getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .registers 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .line 706
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 707
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_28

    .line 708
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 709
    return v1

    .line 707
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 712
    .end local v1    # "i":I
    :cond_28
    const/4 v1, -0x1

    return v1
.end method

.method private getShortMetadataString()Ljava/lang/String;
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->size()I

    move-result v0

    .line 499
    .local v0, "fields":I
    :goto_c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_18

    .line 500
    :cond_12
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    .line 501
    .local v1, "description":Landroid/media/MediaDescription;
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .registers 20

    .line 673
    move-object/from16 v1, p0

    const-wide/16 v2, -0x1

    .line 674
    .local v2, "duration":J
    iget-object v4, v1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 675
    :try_start_7
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 676
    .local v0, "state":Landroid/media/session/PlaybackState;
    iget-object v5, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-eqz v5, :cond_20

    iget-object v5, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 677
    iget-object v5, v1, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v2, v5

    .line 679
    :cond_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_94

    .line 680
    const/4 v4, 0x0

    .line 681
    .local v4, "result":Landroid/media/session/PlaybackState;
    if-eqz v0, :cond_8a

    .line 682
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3d

    .line 683
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3d

    .line 684
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3a

    goto :goto_3d

    .line 702
    :cond_3a
    move-object/from16 v18, v0

    goto :goto_8c

    .line 685
    :cond_3d
    :goto_3d
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v5

    .line 686
    .local v5, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 687
    .local v14, "currentTime":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_8a

    .line 688
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v9

    sub-long v10, v14, v5

    long-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-long v9, v9

    .line 689
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 690
    .local v9, "position":J
    cmp-long v11, v2, v7

    if-ltz v11, :cond_65

    cmp-long v11, v9, v2

    if-lez v11, :cond_65

    .line 691
    move-wide v7, v2

    .line 695
    .end local v9    # "position":J
    .local v7, "position":J
    .local v16, "position":J
    :goto_62
    move-wide/from16 v16, v7

    goto :goto_6e

    .line 692
    .end local v7    # "position":J
    .end local v16    # "position":J
    .restart local v9    # "position":J
    :cond_65
    cmp-long v7, v9, v7

    if-gez v7, :cond_6c

    .line 693
    const-wide/16 v7, 0x0

    goto :goto_62

    .line 695
    :cond_6c
    move-wide/from16 v16, v9

    .end local v9    # "position":J
    .restart local v16    # "position":J
    :goto_6e
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7, v0}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    move-object v12, v7

    .line 696
    .local v12, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    move-wide/from16 v9, v16

    move-object/from16 v18, v0

    move-object v0, v12

    move-wide v12, v14

    .end local v12    # "builder":Landroid/media/session/PlaybackState$Builder;
    .local v0, "builder":Landroid/media/session/PlaybackState$Builder;
    .local v18, "state":Landroid/media/session/PlaybackState;
    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 698
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .end local v4    # "result":Landroid/media/session/PlaybackState;
    .end local v5    # "updateTime":J
    .end local v14    # "currentTime":J
    .end local v16    # "position":J
    .local v0, "result":Landroid/media/session/PlaybackState;
    goto :goto_8d

    .line 702
    .end local v18    # "state":Landroid/media/session/PlaybackState;
    .local v0, "state":Landroid/media/session/PlaybackState;
    .restart local v4    # "result":Landroid/media/session/PlaybackState;
    :cond_8a
    move-object/from16 v18, v0

    .end local v0    # "state":Landroid/media/session/PlaybackState;
    .restart local v18    # "state":Landroid/media/session/PlaybackState;
    :goto_8c
    move-object v0, v4

    .end local v4    # "result":Landroid/media/session/PlaybackState;
    .local v0, "result":Landroid/media/session/PlaybackState;
    :goto_8d
    if-nez v0, :cond_92

    move-object/from16 v4, v18

    goto :goto_93

    :cond_92
    move-object v4, v0

    :goto_93
    return-object v4

    .line 679
    .end local v0    # "result":Landroid/media/session/PlaybackState;
    .end local v18    # "state":Landroid/media/session/PlaybackState;
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v4
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0
.end method

.method private logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 506
    const-string v0, "MediaSessionRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", callback package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$300(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IZZI)V
    .registers 21
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackageName"    # Ljava/lang/String;
    .param p5, "callingUid"    # I
    .param p6, "asSystemService"    # Z
    .param p7, "useSuggested"    # Z
    .param p8, "previousFlagPlaySound"    # I

    move-object v9, p0

    .line 467
    if-eqz p6, :cond_b

    .line 468
    iget-object v0, v9, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_d

    :cond_b
    move-object/from16 v6, p4

    .line 469
    .local v6, "packageName":Ljava/lang/String;
    :goto_d
    if-eqz p6, :cond_13

    const/16 v0, 0x3e8

    move v7, v0

    goto :goto_15

    :cond_13
    move/from16 v7, p5

    .line 470
    .local v7, "uid":I
    :goto_15
    iget-object v10, v9, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v11, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v0, v11

    move-object v1, v9

    move/from16 v2, p7

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V

    invoke-virtual {v10, v11}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 630
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 632
    monitor-exit v0

    return-void

    .line 634
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 634
    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_3a

    .line 635
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3c

    .line 637
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1b
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_22} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23
    .catchall {:try_start_1b .. :try_end_22} :catchall_3c

    .line 643
    :goto_22
    goto :goto_37

    .line 641
    :catch_23
    move-exception v3

    .line 642
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 642
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_37

    .line 638
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_2b
    move-exception v3

    .line 639
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 640
    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 640
    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_22

    .line 634
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 645
    .end local v1    # "i":I
    :cond_3a
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private pushExtrasUpdate()V
    .registers 6

    .line 591
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 593
    monitor-exit v0

    return-void

    .line 595
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 595
    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_3c

    .line 596
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 598
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1b
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 604
    :goto_24
    goto :goto_39

    .line 602
    :catch_25
    move-exception v3

    .line 603
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 603
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_39

    .line 599
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_2d
    move-exception v3

    .line 600
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 601
    const-string v4, "Removed dead callback in pushExtrasUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 601
    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_24

    .line 595
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 606
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushMetadataUpdate()V
    .registers 6

    .line 532
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 534
    monitor-exit v0

    return-void

    .line 536
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 536
    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_3c

    .line 537
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 539
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1b
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 545
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_24
    goto :goto_39

    .line 543
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_25
    move-exception v3

    .line 544
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 544
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_39

    .line 540
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_2d
    move-exception v3

    .line 541
    .local v3, "e":Landroid/os/DeadObjectException;
    const-string v4, "Removing dead callback in pushMetadataUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 542
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 542
    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_24

    .line 536
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 547
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushPlaybackStateUpdate()V
    .registers 6

    .line 511
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 513
    monitor-exit v0

    return-void

    .line 515
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 515
    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_3c

    .line 516
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 518
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1b
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 526
    :goto_24
    goto :goto_39

    .line 523
    :catch_25
    move-exception v3

    .line 524
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 524
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_39

    .line 519
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_2d
    move-exception v3

    .line 520
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    const-string v4, "Removed dead callback in pushPlaybackStateUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 521
    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_24

    .line 515
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 528
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushQueueTitleUpdate()V
    .registers 6

    .line 570
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 572
    monitor-exit v0

    return-void

    .line 574
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 574
    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_3c

    .line 575
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 577
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1b
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 585
    :goto_24
    goto :goto_39

    .line 582
    :catch_25
    move-exception v3

    .line 583
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 583
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_39

    .line 578
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_2d
    move-exception v3

    .line 579
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 580
    const-string v4, "Removed dead callback in pushQueueTitleUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 580
    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_24

    .line 574
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 587
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushQueueUpdate()V
    .registers 6

    .line 551
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 553
    monitor-exit v0

    return-void

    .line 555
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 555
    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_3c

    .line 556
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_3e

    .line 558
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1b
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-interface {v3, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_24} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_3e

    .line 564
    :goto_24
    goto :goto_39

    .line 562
    :catch_25
    move-exception v3

    .line 563
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_26
    const-string/jumbo v4, "unexpected exception in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 563
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_39

    .line 559
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_2d
    move-exception v3

    .line 560
    .local v3, "e":Landroid/os/DeadObjectException;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 561
    const-string v4, "Removed dead callback in pushQueueUpdate"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 561
    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_24

    .line 555
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 566
    .end local v1    # "i":I
    :cond_3c
    monitor-exit v0

    .line 567
    return-void

    .line 566
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private pushSessionDestroyed()V
    .registers 6

    .line 649
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_9

    .line 653
    monitor-exit v0

    return-void

    .line 655
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 655
    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_3a

    .line 656
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_41

    .line 658
    .local v2, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_1b
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_22
    .catch Landroid/os/DeadObjectException; {:try_start_1b .. :try_end_22} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23
    .catchall {:try_start_1b .. :try_end_22} :catchall_41

    .line 664
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_22
    goto :goto_37

    .line 662
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_23
    move-exception v3

    .line 663
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_24
    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 663
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_37

    .line 659
    .restart local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_2b
    move-exception v3

    .line 660
    .local v3, "e":Landroid/os/DeadObjectException;
    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .line 661
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 661
    .end local v3    # "e":Landroid/os/DeadObjectException;
    goto :goto_22

    .line 655
    .end local v2    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 667
    .end local v1    # "i":I
    :cond_3a
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 668
    monitor-exit v0

    .line 669
    return-void

    .line 668
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private pushVolumeUpdate()V
    .registers 7

    .line 610
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 612
    monitor-exit v0

    return-void

    .line 614
    :cond_9
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v1

    .line 615
    .local v1, "info":Landroid/media/session/ParcelableVolumeInfo;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_3f

    .line 616
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_41

    .line 618
    .local v3, "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :try_start_21
    # getter for: Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    :try_end_28
    .catch Landroid/os/DeadObjectException; {:try_start_21 .. :try_end_28} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29
    .catchall {:try_start_21 .. :try_end_28} :catchall_41

    .line 624
    :goto_28
    goto :goto_3c

    .line 622
    :catch_29
    move-exception v4

    .line 623
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v5, "Unexpected exception in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_3c

    .line 619
    .restart local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :catch_30
    move-exception v4

    .line 620
    .local v4, "e":Landroid/os/DeadObjectException;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 621
    const-string v5, "Removing dead callback in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    .end local v4    # "e":Landroid/os/DeadObjectException;
    goto :goto_28

    .line 615
    .end local v3    # "holder":Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
    :goto_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 626
    .end local v1    # "info":Landroid/media/session/ParcelableVolumeInfo;
    .end local v2    # "i":I
    :cond_3f
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_41

    throw v1
.end method

.method private setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "value"    # I
    .param p6, "flags"    # I

    .line 292
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 293
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 294
    .local v0, "stream":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move v2, v0

    move v3, p5

    move v4, p6

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 295
    .end local v0    # "stream":I
    goto/16 :goto_89

    .line 296
    :cond_17
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    .line 298
    return-void

    .line 300
    :cond_1d
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 301
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V

    .line 303
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_39

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    goto :goto_3b

    :cond_39
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 304
    .local v0, "volumeBefore":I
    :goto_3b
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 305
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v0, v1, :cond_5e

    .line 308
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 310
    :cond_5e
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, p6, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 312
    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_89

    .line 313
    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0    # "volumeBefore":I
    :cond_89
    :goto_89
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "caller"    # Landroid/media/session/ISessionControllerCallback;
    .param p5, "asSystemService"    # Z
    .param p6, "direction"    # I
    .param p7, "flags"    # I
    .param p8, "useSuggested"    # Z

    move-object v9, p0

    move/from16 v10, p6

    .line 251
    and-int/lit8 v11, p7, 0x4

    .line 252
    .local v11, "previousFlagPlaySound":I
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v1

    if-nez v1, :cond_17

    const/high16 v1, 0x10000

    invoke-virtual {v9, v1}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_17

    .line 255
    :cond_14
    move/from16 v12, p7

    goto :goto_1a

    .line 253
    :cond_17
    :goto_17
    and-int/lit8 v0, p7, -0x5

    .line 255
    .end local p7    # "flags":I
    .local v0, "flags":I
    move v12, v0

    .end local v0    # "flags":I
    .local v12, "flags":I
    :goto_1a
    iget v0, v9, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    .line 257
    iget-object v0, v9, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v13

    .line 258
    .local v13, "stream":I
    move-object v0, v9

    move v1, v13

    move v2, v10

    move v3, v12

    move-object v4, p1

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p8

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZZI)V

    .line 260
    .end local v13    # "stream":I
    goto/16 :goto_b5

    .line 261
    :cond_36
    iget v0, v9, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez v0, :cond_3b

    .line 263
    return-void

    .line 265
    :cond_3b
    const/16 v0, 0x65

    if-eq v10, v0, :cond_b6

    const/16 v0, -0x64

    if-eq v10, v0, :cond_b6

    const/16 v0, 0x64

    if-ne v10, v0, :cond_48

    goto :goto_b6

    .line 271
    :cond_48
    iget-object v0, v9, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZI)V

    .line 273
    iget v0, v9, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_5e

    iget v0, v9, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    goto :goto_60

    :cond_5e
    iget v0, v9, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 274
    .local v0, "volumeBefore":I
    :goto_60
    add-int v1, v0, v10

    iput v1, v9, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 275
    const/4 v1, 0x0

    iget v2, v9, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget v3, v9, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v9, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 276
    iget-object v1, v9, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v9, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    iget-object v1, v9, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v9, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    iget v1, v9, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v0, v1, :cond_8a

    .line 279
    invoke-direct {v9}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 281
    :cond_8a
    iget-object v1, v9, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, v12, v9}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 283
    sget-boolean v1, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v1, :cond_b5

    .line 284
    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusted optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0    # "volumeBefore":I
    :cond_b5
    :goto_b5
    return-void

    .line 268
    :cond_b6
    :goto_b6
    const-string v0, "MediaSessionRecord"

    const-string v1, "Muting remote playback is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public binderDied()V
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    .line 412
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launchIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mediaButtonReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rating type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v2, :cond_126

    const/4 v2, 0x0

    goto :goto_12c

    :cond_126
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_12c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getShortMetadataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    if-nez v2, :cond_1c1

    const/4 v2, 0x0

    goto :goto_1cb

    :cond_1c1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    # getter for: Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .registers 2

    .line 392
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .registers 2

    .line 382
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .registers 2

    .line 402
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method public getPlaybackType()I
    .registers 2

    .line 353
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .line 208
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .registers 2

    .line 372
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .registers 6
    .param p1, "flag"    # I

    .line 199
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 325
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPlaybackActive()Z
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 344
    .local v0, "state":I
    :goto_c
    invoke-static {v0}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    return v1
.end method

.method public isSystemPriority()Z
    .registers 5

    .line 227
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isTransportControlEnabled()Z
    .registers 2

    .line 406
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_9

    .line 421
    monitor-exit v0

    return-void

    .line 423
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 424
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "ke"    # Landroid/view/KeyEvent;
    .param p6, "sequenceId"    # I
    .param p7, "cb"    # Landroid/os/ResultReceiver;

    .line 434
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 435
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
