.class public final Lcom/android/server/audio/PlaybackActivityMonitor;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;,
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;,
        Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DUCK_ID:Landroid/media/VolumeShaper$Configuration;

.field private static final DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field private static final FLAGS_FOR_SILENCE_OVERRIDE:I = 0xc0

.field private static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field private static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final TAG:Ljava/lang/String; = "AudioService.PlaybackActivityMonitor"

.field private static final UNDUCKABLE_PLAYER_TYPES:[I

.field private static final VOLUME_SHAPER_SYSTEM_DUCK_ID:I = 0x1

.field private static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final mBannedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

.field private mHasPublicClients:Z

.field private final mMaxAlarmVolume:I

.field private final mMutedPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerLock:Ljava/lang/Object;

.field private final mPlayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivilegedAlarmActiveCount:I

.field private mSavedAlarmVolume:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 57
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_7c

    new-array v4, v2, [F

    fill-array-data v4, :array_84

    .line 60
    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 65
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 63
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 68
    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 70
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 72
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 76
    new-array v0, v2, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    .line 82
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v1, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 83
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 864
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v1, "playback activity as reported through PlayerBase"

    const/16 v2, 0x64

    invoke-direct {v0, v2, v1}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void

    nop

    nop

    :array_7c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_84
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_8c
    .array-data 4
        0xd
        0x3
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxAlarmVolume"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 98
    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>(Lcom/android/server/audio/PlaybackActivityMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .line 101
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    .line 102
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    .line 103
    sput-object p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 104
    sput-object p0, Landroid/media/AudioPlaybackConfiguration;->sPlayerDeathMonitor:Landroid/media/AudioPlaybackConfiguration$PlayerDeathMonitor;

    .line 105
    return-void
.end method

.method static synthetic access$100()Lcom/android/server/audio/AudioEventLogger;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$200()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method static synthetic access$300()Landroid/media/VolumeShaper$Operation;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static synthetic access$400()Landroid/media/VolumeShaper$Operation;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method private anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 409
    .local p1, "sysConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "publicConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 413
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 414
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->anonymizedCopy(Landroid/media/AudioPlaybackConfiguration;)Landroid/media/AudioPlaybackConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_22
    goto :goto_9

    .line 417
    :cond_23
    return-object v0
.end method

.method private checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z
    .registers 9
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "uid"    # I

    .line 137
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    if-ne v0, p2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 138
    .local v0, "toBan":Z
    :goto_9
    if-eqz v0, :cond_54

    .line 139
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v1

    .line 141
    .local v1, "piid":I
    :try_start_f
    const-string v2, "AudioService.PlaybackActivityMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "banning player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/PlayerProxy;->pause()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_35

    .line 145
    goto :goto_54

    .line 143
    :catch_35
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AudioService.PlaybackActivityMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error banning player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v1    # "piid":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    return v0
.end method

.method private static checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z
    .registers 7
    .param p0, "piid"    # I
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "binderUid"    # I

    .line 346
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 347
    return v0

    .line 348
    :cond_4
    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    if-eq v1, p2, :cond_2b

    .line 349
    const-string v1, "AudioService.PlaybackActivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forbidden operation from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for player "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v0

    .line 352
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method private checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V
    .registers 9
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;
    .param p2, "event"    # I

    .line 192
    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    .line 193
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_6c

    .line 194
    :cond_9
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v1

    const/16 v2, 0xc0

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6c

    .line 196
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6c

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    .line 198
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    .line 197
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_6c

    .line 200
    if-ne p2, v0, :cond_4f

    .line 201
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-eq v1, v0, :cond_4f

    .line 202
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez v1, :cond_6c

    .line 203
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    .line 205
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_6c

    .line 208
    :cond_4f
    if-eq p2, v0, :cond_6c

    .line 209
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_6c

    .line 210
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPrivilegedAlarmActiveCount:I

    if-nez v1, :cond_6c

    .line 211
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getStreamVolumeIndex(II)I

    move-result v1

    iget v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMaxAlarmVolume:I

    if-ne v1, v3, :cond_6c

    .line 214
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mSavedAlarmVolume:I

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 221
    :cond_6c
    :goto_6c
    return-void
.end method

.method private dispatchPlaybackChange(Z)V
    .registers 11
    .param p1, "iplayerReleased"    # Z

    .line 360
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 363
    monitor-exit v0

    return-void

    .line 365
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_96

    .line 371
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_11
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 373
    monitor-exit v1

    return-void

    .line 375
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 376
    .local v0, "configsSystem":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_93

    .line 377
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v2

    .line 379
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 380
    monitor-exit v2

    return-void

    .line 382
    :cond_34
    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_3d

    invoke-direct {p0, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    .line 383
    .local v1, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :goto_3e
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 384
    .local v3, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 385
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :try_end_50
    .catchall {:try_start_2a .. :try_end_50} :catchall_90

    .line 388
    .local v4, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :try_start_50
    iget v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_65

    .line 389
    iget-boolean v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_5f

    .line 390
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v5, v0, p1}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V

    goto :goto_65

    .line 395
    :cond_5f
    iget-object v5, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/media/IPlaybackConfigDispatcher;->dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_65} :catch_66
    .catchall {:try_start_50 .. :try_end_65} :catchall_90

    .line 402
    :cond_65
    :goto_65
    goto :goto_8d

    .line 398
    :catch_66
    move-exception v5

    .line 399
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_67
    iget v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    .line 400
    const-string v6, "AudioService.PlaybackActivityMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") trying to dispatch playback config change to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v4    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_8d
    goto :goto_44

    .line 404
    .end local v3    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    :cond_8e
    monitor-exit v2

    .line 405
    return-void

    .line 404
    .end local v1    # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_90
    move-exception v1

    monitor-exit v2
    :try_end_92
    .catchall {:try_start_67 .. :try_end_92} :catchall_90

    throw v1

    .line 376
    .end local v0    # "configsSystem":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0

    .line 365
    :catchall_96
    move-exception v1

    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v1
.end method


# virtual methods
.method public disableAudioForUid(ZI)V
    .registers 7
    .param p1, "disable"    # Z
    .param p2, "uid"    # I

    .line 112
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 114
    .local v1, "index":I
    if-ltz v1, :cond_18

    .line 115
    if-nez p1, :cond_3e

    .line 119
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    .line 123
    :cond_18
    if-eqz p1, :cond_3e

    .line 124
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 125
    .local v3, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-direct {p0, v3, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    .line 126
    .end local v3    # "apc":Landroid/media/AudioPlaybackConfiguration;
    goto :goto_24

    .line 130
    :cond_34
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v1    # "index":I
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .registers 12
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "loser"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 433
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 435
    monitor-exit v0

    return v2

    .line 439
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 440
    .local v1, "apcIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPlaybackConfiguration;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v3, "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 444
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-nez v5, :cond_df

    .line 445
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 446
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_df

    .line 448
    const/4 v5, 0x0

    if-nez p3, :cond_8b

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v6

    if-ne v6, v2, :cond_8b

    .line 452
    const-string v2, "AudioService.PlaybackActivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not ducking player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - SPEECH"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 452
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    monitor-exit v0

    return v5

    .line 456
    :cond_8b
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 457
    const-string v2, "AudioService.PlaybackActivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not ducking player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " due to type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v7

    .line 460
    invoke-static {v7}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 457
    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    monitor-exit v0

    return v5

    .line 464
    :cond_dc
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_df
    goto/16 :goto_1d

    .line 470
    :cond_e1
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->duckUid(ILjava/util/ArrayList;)V

    .line 471
    .end local v1    # "apcIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPlaybackConfiguration;>;"
    .end local v3    # "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v0

    .line 472
    return v2

    .line 471
    :catchall_ec
    move-exception v1

    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_ec

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nPlaybackActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_24
    const-string v1, "\n  playback listeners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_116

    .line 300
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 301
    .local v3, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_4f

    const-string v5, "(S)"

    goto :goto_51

    :cond_4f
    const-string v5, "(P)"

    :goto_51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    .end local v3    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    goto :goto_32

    .line 304
    :cond_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_2c .. :try_end_64} :catchall_113

    .line 305
    :try_start_64
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    const-string v1, "\n  players:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    .local v1, "piidIntList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 310
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 311
    .local v3, "piidInt":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 312
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-eqz v4, :cond_99

    .line 313
    invoke-virtual {v4, p1}, Landroid/media/AudioPlaybackConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 315
    .end local v3    # "piidInt":Ljava/lang/Integer;
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_99
    goto :goto_80

    .line 317
    :cond_9a
    const-string v2, "\n  ducked players piids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->dump(Ljava/io/PrintWriter;)V

    .line 320
    const-string v2, "\n  muted player piids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 322
    .local v3, "piid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .end local v3    # "piid":I
    goto :goto_af

    .line 324
    :cond_d4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 326
    const-string v2, "\n  banned uids:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 328
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    .end local v3    # "uid":I
    goto :goto_e2

    .line 330
    :cond_107
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 333
    .end local v1    # "piidIntList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_112
    .catchall {:try_start_64 .. :try_end_112} :catchall_116

    .line 334
    return-void

    .line 304
    :catchall_113
    move-exception v2

    :try_start_114
    monitor-exit v1
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    :try_start_115
    throw v2

    .line 333
    :catchall_116
    move-exception v1

    monitor-exit v0
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_116

    throw v1
.end method

.method getActivePlaybackConfigurations(Z)Ljava/util/List;
    .registers 6
    .param p1, "isPrivileged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    monitor-enter v0

    .line 592
    if-eqz p1, :cond_14

    .line 593
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 602
    :catchall_12
    move-exception v1

    goto :goto_2c

    .line 596
    :cond_14
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_12

    .line 597
    :try_start_17
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    .line 598
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 597
    invoke-direct {p0, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 599
    .local v2, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    .line 600
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_12

    return-object v2

    .line 599
    .end local v2    # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v2

    .line 602
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_12

    throw v1
.end method

.method public mutePlayersForCall([I)V
    .registers 13
    .param p1, "usagesToMute"    # [I

    .line 490
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 492
    .local v1, "piidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 494
    .local v2, "piidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 495
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 496
    .local v3, "piid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 497
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-nez v4, :cond_24

    .line 498
    goto :goto_d

    .line 500
    :cond_24
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    .line 501
    .local v5, "playerUsage":I
    const/4 v6, 0x0

    .line 502
    .local v6, "mute":Z
    array-length v7, p1

    const/4 v8, 0x0

    :goto_2f
    if-ge v8, v7, :cond_3a

    aget v9, p1, v8
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_9b

    .line 503
    .local v9, "usageToMute":I
    if-ne v5, v9, :cond_37

    .line 504
    const/4 v6, 0x1

    .line 505
    goto :goto_3a

    .line 502
    .end local v9    # "usageToMute":I
    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 508
    :cond_3a
    :goto_3a
    if-eqz v6, :cond_97

    .line 510
    :try_start_3c
    sget-object v7, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call: muting piid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v9, "AudioService.PlaybackActivityMonitor"

    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v8

    .line 510
    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 512
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/PlayerProxy;->setVolume(F)V

    .line 513
    iget-object v7, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7f} :catch_80
    .catchall {:try_start_3c .. :try_end_7f} :catchall_9b

    .line 516
    goto :goto_97

    .line 514
    :catch_80
    move-exception v7

    .line 515
    .local v7, "e":Ljava/lang/Exception;
    :try_start_81
    const-string v8, "AudioService.PlaybackActivityMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call: error muting player "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v3    # "piid":Ljava/lang/Integer;
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "playerUsage":I
    .end local v6    # "mute":Z
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_97
    :goto_97
    goto/16 :goto_d

    .line 519
    .end local v1    # "piidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "piidIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_99
    monitor-exit v0

    .line 520
    return-void

    .line 519
    :catchall_9b
    move-exception v1

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_9b

    throw v1
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;I)V
    .registers 9
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;
    .param p3, "binderUid"    # I

    .line 172
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 174
    .local v1, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-static {p1, v1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 175
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;

    invoke-direct {v4, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;-><init>(ILandroid/media/AudioAttributes;)V

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 176
    invoke-virtual {v1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleAudioAttributesEvent(Landroid/media/AudioAttributes;)Z

    move-result v2

    .local v2, "change":Z
    goto :goto_2f

    .line 178
    .end local v2    # "change":Z
    :cond_26
    const-string v2, "AudioService.PlaybackActivityMonitor"

    const-string v4, "Error updating audio attributes"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    nop

    .end local v1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    move v2, v3

    .restart local v2    # "change":Z
    :goto_2f
    move v1, v2

    .line 181
    .end local v2    # "change":Z
    .local v1, "change":Z
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_37

    .line 182
    if-eqz v1, :cond_36

    .line 183
    invoke-direct {p0, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 185
    :cond_36
    return-void

    .line 181
    .end local v1    # "change":Z
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public playerDeath(I)V
    .registers 3
    .param p1, "piid"    # I

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 291
    return-void
.end method

.method public playerEvent(III)V
    .registers 11
    .param p1, "piid"    # I
    .param p2, "event"    # I
    .param p3, "binderUid"    # I

    .line 226
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 228
    .local v1, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-nez v1, :cond_14

    .line 229
    monitor-exit v0

    return-void

    .line 231
    :cond_14
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;

    invoke-direct {v3, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 232
    const/4 v2, 0x2

    if-ne p2, v2, :cond_61

    .line 233
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mBannedUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 234
    .local v4, "uidInteger":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkBanPlayer(Landroid/media/AudioPlaybackConfiguration;I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 236
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not starting piid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,is banned"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 238
    monitor-exit v0

    return-void

    .line 240
    .end local v4    # "uidInteger":Ljava/lang/Integer;
    :cond_60
    goto :goto_27

    .line 242
    :cond_61
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6a

    .line 244
    monitor-exit v0

    return-void

    .line 246
    :cond_6a
    invoke-static {p1, v1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_79

    .line 248
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 249
    invoke-virtual {v1, p2}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result v3

    .line 249
    .local v3, "change":Z
    goto :goto_90

    .line 251
    .end local v3    # "change":Z
    :cond_79
    const-string v3, "AudioService.PlaybackActivityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error handling event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move v3, v4

    .line 254
    .restart local v3    # "change":Z
    :goto_90
    if-eqz v3, :cond_99

    if-ne p2, v2, :cond_99

    .line 255
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->checkDuck(Landroid/media/AudioPlaybackConfiguration;)V

    .line 257
    .end local v1    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_a4

    .line 258
    if-eqz v3, :cond_a3

    .line 259
    if-nez p2, :cond_a0

    const/4 v4, 0x1

    nop

    :cond_a0
    invoke-direct {p0, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 261
    :cond_a3
    return-void

    .line 257
    .end local v3    # "change":Z
    :catchall_a4
    move-exception v1

    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v1
.end method

.method public playerHasOpPlayAudio(IZI)V
    .registers 6
    .param p1, "piid"    # I
    .param p2, "hasOpPlayAudio"    # Z
    .param p3, "binderUid"    # I

    .line 265
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;-><init>(IZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 266
    return-void
.end method

.method registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .registers 6
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 552
    if-nez p1, :cond_3

    .line 553
    return-void

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 556
    :try_start_6
    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;-><init>(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 557
    .local v1, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    invoke-virtual {v1}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->init()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 558
    if-nez p2, :cond_16

    .line 559
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 561
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v1    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :cond_1b
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public releasePlayer(II)V
    .registers 10
    .param p1, "piid"    # I
    .param p2, "binderUid"    # I

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 273
    .local v2, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-static {p1, v2, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkConfigurationCaller(ILandroid/media/AudioPlaybackConfiguration;I)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 274
    sget-object v3, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "releasing player piid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 276
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V

    .line 278
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->checkVolumeForPrivilegedAlarm(Landroid/media/AudioPlaybackConfiguration;I)V

    .line 279
    invoke-virtual {v2, v3}, Landroid/media/AudioPlaybackConfiguration;->handleStateEvent(I)Z

    move-result v3

    move v0, v3

    .line 281
    .end local v2    # "apc":Landroid/media/AudioPlaybackConfiguration;
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_53

    .line 282
    if-eqz v0, :cond_52

    .line 283
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->dispatchPlaybackChange(Z)V

    .line 285
    :cond_52
    return-void

    .line 281
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .registers 7
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;

    .line 157
    invoke-static {}, Landroid/media/AudioSystem;->newAudioPlayerId()I

    move-result v0

    .line 159
    .local v0, "newPiid":I
    new-instance v1, Landroid/media/AudioPlaybackConfiguration;

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/media/PlayerBase$PlayerIdCard;III)V

    .line 162
    .local v1, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->init()V

    .line 163
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;

    invoke-direct {v3, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_21
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v2

    .line 167
    return v0

    .line 166
    :catchall_2c
    move-exception v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method public unduckPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 6
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 478
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->unduckUid(ILjava/util/HashMap;)V

    .line 480
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public unmutePlayersForCall()V
    .registers 9

    .line 527
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 529
    monitor-exit v0

    return-void

    .line 531
    :cond_d
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 532
    .local v2, "piid":I
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_87

    .line 533
    .local v3, "apc":Landroid/media/AudioPlaybackConfiguration;
    if-eqz v3, :cond_7f

    .line 535
    :try_start_31
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: unmuting piid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "AudioService.PlaybackActivityMonitor"

    .line 536
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 535
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 537
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/media/PlayerProxy;->setVolume(F)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5b} :catch_5c
    .catchall {:try_start_31 .. :try_end_5b} :catchall_87

    .line 541
    goto :goto_7f

    .line 538
    :catch_5c
    move-exception v4

    .line 539
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v5, "AudioService.PlaybackActivityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call: error unmuting player "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 539
    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v2    # "piid":I
    .end local v3    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7f
    :goto_7f
    goto :goto_13

    .line 544
    :cond_80
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mMutedPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 545
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_5d .. :try_end_89} :catchall_87

    throw v1
.end method

.method unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 7
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 567
    if-nez p1, :cond_3

    .line 568
    return-void

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 571
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 572
    .local v1, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    const/4 v2, 0x0

    .line 575
    .local v2, "hasPublicClients":Z
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 576
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;

    .line 577
    .local v3, "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    iget-object v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 578
    invoke-virtual {v3}, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->release()V

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    .line 581
    :cond_28
    iget-boolean v4, v3, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    if-nez v4, :cond_2d

    .line 582
    const/4 v2, 0x1

    .line 585
    .end local v3    # "pmc":Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
    :cond_2d
    :goto_2d
    goto :goto_d

    .line 586
    :cond_2e
    iput-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor;->mHasPublicClients:Z

    .line 587
    .end local v1    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;>;"
    .end local v2    # "hasPublicClients":Z
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method
