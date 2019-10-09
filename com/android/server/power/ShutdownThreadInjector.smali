.class public final Lcom/android/server/power/ShutdownThreadInjector;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"


# static fields
.field private static final CUSTOMIZED_REGION:Ljava/lang/String;

.field private static final CUST_ROOT_PATH:Ljava/lang/String;

.field private static final CUST_VAR:Ljava/lang/String;

.field private static final IS_CUSTOMIZATION:Z

.field private static final IS_CUSTOMIZATION_TEST:Z

.field private static final IS_CUSTOMIZED_REGION:Z

.field private static final OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI:Ljava/lang/String; = "sys.shutdown.miui"

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI_MUSIC:Ljava/lang/String; = "sys.shutdown.miuimusic"

.field private static final TAG:Ljava/lang/String; = "ShutdownThreadInjector"

.field private static sIsShutdownMusicPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    sput-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    .line 38
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_22

    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-nez v0, :cond_22

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    goto :goto_23

    :cond_22
    :goto_22
    move v1, v2

    :goto_23
    sput-boolean v1, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION:Z

    .line 41
    const-string/jumbo v0, "ro.miui.customized.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    .line 100
    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    goto :goto_44

    :cond_40
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v0

    :goto_44
    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    .line 101
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_63

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    .line 103
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/miui/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7b
    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "theme/operator/boots/shutdownanimation.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "theme/operator/boots/shutdownaudio.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disable_operator_animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disable_operator_audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    return p0
.end method

.method static checkAnimationFileExist(Landroid/content/Context;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 111
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 111
    :goto_1d
    return v0
.end method

.method static getShutdownMusicFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 127
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 128
    return-object v1

    .line 130
    :cond_f
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    nop

    :cond_1f
    return-object v1
.end method

.method static isCustomizedShutdownAnim(Landroid/content/Context;Z)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 59
    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    if-eqz v0, :cond_14

    :cond_c
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->checkAnimationFileExist(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 60
    const/4 v0, 0x1

    return v0

    .line 62
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private static isSilentMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 195
    .local v0, "audio":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v1

    return v1
.end method

.method static needVibrator()Z
    .registers 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method static playShutdownMusic(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 137
    const-string/jumbo v0, "sys.shutdown.miui"

    const-string/jumbo v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "shutdownMusicPath":Ljava/lang/String;
    const-string v1, "ShutdownThreadInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shutdown music: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_41

    if-eqz v0, :cond_41

    .line 143
    const-string/jumbo v1, "sys.shutdown.miuimusic"

    const-string/jumbo v2, "shutdown_music"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_41
    return-void
.end method

.method private static playShutdownMusicImpl(Ljava/lang/String;)V
    .registers 8
    .param p0, "shutdownMusicPath"    # Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 151
    .local v0, "actionDoneSync":Ljava/lang/Object;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    .line 154
    :try_start_8
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 155
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 156
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 158
    new-instance v2, Lcom/android/server/power/ShutdownThreadInjector$1;

    invoke-direct {v2, v0}, Lcom/android/server/power/ShutdownThreadInjector$1;-><init>(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 168
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    .line 172
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    goto :goto_3d

    .line 169
    :catch_22
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    .line 171
    const-string v2, "ShutdownThreadInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "play shutdown music error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    .line 175
    .local v1, "endTimeForMusic":J
    monitor-enter v0

    .line 176
    :goto_45
    :try_start_45
    sget-boolean v3, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-eqz v3, :cond_64

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 178
    .local v3, "delay":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_5e

    .line 179
    const-string v5, "ShutdownThreadInjector"

    const-string/jumbo v6, "play shutdown music timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_45 .. :try_end_5d} :catchall_72

    .line 180
    goto :goto_64

    .line 183
    :cond_5e
    :try_start_5e
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_72

    .line 185
    goto :goto_63

    .line 184
    :catch_62
    move-exception v5

    .line 186
    .end local v3    # "delay":J
    :goto_63
    goto :goto_45

    .line 187
    :cond_64
    :goto_64
    :try_start_64
    sget-boolean v3, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-nez v3, :cond_70

    .line 188
    const-string v3, "ShutdownThreadInjector"

    const-string/jumbo v4, "play shutdown music complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_70
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_72
    move-exception v3

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_64 .. :try_end_74} :catchall_72

    throw v3
.end method

.method static recordShutdownTime(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z

    .line 199
    new-instance v0, Lmiui/util/SystemAnalytics$Action;

    invoke-direct {v0}, Lmiui/util/SystemAnalytics$Action;-><init>()V

    .line 200
    .local v0, "action":Lmiui/util/SystemAnalytics$Action;
    const-string v1, "action"

    if-eqz p1, :cond_d

    const-string/jumbo v2, "reboot"

    goto :goto_10

    :cond_d
    const-string/jumbo v2, "shutdown"

    :goto_10
    invoke-virtual {v0, v1, v2}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;

    .line 201
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;J)Lmiui/util/SystemAnalytics$Action;

    .line 202
    const-string/jumbo v1, "systemserver_bootshuttime"

    invoke-static {p0, v1, v0}, Lmiui/util/SystemAnalytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lmiui/util/SystemAnalytics$Action;)V

    .line 203
    return-void
.end method

.method static showShutdownAnimOrDialog(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 49
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->isCustomizedShutdownAnim(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 50
    const-string/jumbo v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownAnimation(Landroid/content/Context;Z)V

    goto :goto_1c

    .line 54
    :cond_19
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownDialog(Landroid/content/Context;Z)V

    .line 56
    :goto_1c
    return-void
.end method

.method static showShutdownAnimation(Landroid/content/Context;Z)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 118
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusic(Landroid/content/Context;Z)V

    .line 119
    return-void
.end method

.method static showShutdownDialog(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .line 66
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103006d

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    .local v0, "bootMsgDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1103001c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 70
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 71
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 72
    invoke-static {v3}, Lcom/android/server/power/WindowAdapter;->setUseNotchRegion(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7e5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 75
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 78
    if-eqz p1, :cond_7f

    .line 79
    const v4, 0x110d005e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 80
    .local v4, "shutdownImage":Landroid/widget/ImageView;
    if-eqz v4, :cond_7e

    .line 81
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 83
    .local v2, "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x110a0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x110a0036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 85
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 87
    .end local v2    # "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    .end local v4    # "shutdownImage":Landroid/widget/ImageView;
    :cond_7e
    goto :goto_91

    .line 89
    :cond_7f
    const-class v5, Lcom/android/server/lights/LightsManager;

    .line 90
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/lights/LightsManager;

    .line 91
    .local v5, "lightmanager":Lcom/android/server/lights/LightsManager;
    nop

    .line 92
    invoke-virtual {v5, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v6

    check-cast v6, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 93
    .local v6, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {v6, v2, v4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setBrightness(IZ)V

    .line 97
    .end local v5    # "lightmanager":Lcom/android/server/lights/LightsManager;
    .end local v6    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :goto_91
    const-string/jumbo v2, "sys.in_shutdown_progress"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
