.class public Lcom/android/server/lights/VisualizerHolder;
.super Ljava/lang/Object;
.source "VisualizerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
    }
.end annotation


# static fields
.field private static final mMusicWhiteList:[Ljava/lang/String;

.field private static final ourInstance:Lcom/android/server/lights/VisualizerHolder;


# instance fields
.field lastMax:I

.field onDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

.field private visualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .registers 49

    .line 9
    new-instance v0, Lcom/android/server/lights/VisualizerHolder;

    invoke-direct {v0}, Lcom/android/server/lights/VisualizerHolder;-><init>()V

    sput-object v0, Lcom/android/server/lights/VisualizerHolder;->ourInstance:Lcom/android/server/lights/VisualizerHolder;

    .line 10
    const-string v1, "com.miui.player:remote"

    const-string v2, "com.netease.cloudmusic:play"

    const-string v3, "com.tencent.qqmusic:QQPlayerService"

    const-string v4, "fm.xiami.main.player"

    const-string v5, "com.kugou.android.support"

    const-string v6, "cn.kuwo.player:service"

    const-string v7, "com.tencent.blackkey:player"

    const-string v8, "cmccwm.mobilemusic"

    const-string v9, "com.ting.mp3.android"

    const-string v10, "com.kugou.android.support.ktvapp"

    const-string v11, "com.blueocean.musicplayer"

    const-string v12, "com.kugou.android.ringtone:player"

    const-string v13, "com.shoujiduoduo.dj"

    const-string v14, "com.changba"

    const-string v15, "com.tencent.karaoke"

    const-string v16, "com.shoujiduoduo.ringtone"

    const-string v17, "com.hiby.music"

    const-string v18, "com.miui.player:remote"

    const-string v19, "com.google.android.music:main"

    const-string v20, "com.tencent.ibg.joox"

    const-string v21, "com.skysoft.kkbox.android"

    const-string v22, "com.sofeh.android.musicstudio3"

    const-string v23, "com.gamestar.perfectpiano"

    const-string v24, "com.opalastudios.pads"

    const-string v25, "com.magix.android.mmjam"

    const-string v26, "com.musicplayer.playermusic:main"

    const-string v27, "com.gaana"

    const-string v28, "com.maxmpz.audioplayer"

    const-string v29, "com.melodis.midomiMusicIdentifier.freemium"

    const-string v30, "com.mixvibes.remixlive"

    const-string v31, "com.starmakerinteractive.starmaker"

    const-string v32, "com.smule.singandroid"

    const-string v33, "com.djit.apps.stream"

    const-string/jumbo v34, "tunein.service"

    const-string v35, "com.shazam.android"

    const-string v36, "com.jangomobile.android"

    const-string v37, "com.pandoralite"

    const-string v38, "com.tube.hqmusic"

    const-string v39, "com.amazon.avod.thirdpartyclient"

    const-string v40, "com.atmusic.app"

    const-string v41, "com.rubycell.pianisthd"

    const-string v42, "com.agminstruments.drumpadmachine"

    const-string v43, "com.playermusic.musicplayerapp"

    const-string v44, "com.famousbluemedia.piano"

    const-string v45, "com.apple.android.music"

    const-string/jumbo v46, "mb32r.musica.gratis.music.player.free.download"

    const-string v47, "com.famousbluemedia.yokee"

    const-string v48, "com.ss.android.ugc.trill"

    filled-new-array/range {v1 .. v48}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/lights/VisualizerHolder;->mMusicWhiteList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/lights/VisualizerHolder;->lastMax:I

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/android/server/lights/VisualizerHolder;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/server/lights/VisualizerHolder;->ourInstance:Lcom/android/server/lights/VisualizerHolder;

    return-object v0
.end method

.method private getVisualizer()Landroid/media/audiofx/Visualizer;
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/android/server/lights/VisualizerHolder;->visualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_1d

    .line 50
    :try_start_4
    new-instance v0, Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/lights/VisualizerHolder;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 51
    iget-object v0, p0, Lcom/android/server/lights/VisualizerHolder;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_18} :catch_19

    .line 54
    goto :goto_1d

    .line 52
    :catch_19
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 56
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/lights/VisualizerHolder;->visualizer:Landroid/media/audiofx/Visualizer;

    return-object v0
.end method


# virtual methods
.method public isAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "process_name"    # Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/server/lights/VisualizerHolder;->mMusicWhiteList:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/server/lights/VisualizerHolder;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_13

    .line 94
    invoke-direct {p0}, Lcom/android/server/lights/VisualizerHolder;->getVisualizer()Landroid/media/audiofx/Visualizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 95
    invoke-direct {p0}, Lcom/android/server/lights/VisualizerHolder;->getVisualizer()Landroid/media/audiofx/Visualizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 97
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lights/VisualizerHolder;->onDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    .line 98
    iput-object v0, p0, Lcom/android/server/lights/VisualizerHolder;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 99
    return-void
.end method

.method public setOnDataCaptureListener(Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;)V
    .registers 6
    .param p1, "onDataCaptureListener"    # Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/android/server/lights/VisualizerHolder;->onDataCaptureListener:Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    .line 62
    invoke-direct {p0}, Lcom/android/server/lights/VisualizerHolder;->getVisualizer()Landroid/media/audiofx/Visualizer;

    move-result-object v0

    if-nez v0, :cond_9

    .line 63
    return-void

    .line 65
    :cond_9
    invoke-direct {p0}, Lcom/android/server/lights/VisualizerHolder;->getVisualizer()Landroid/media/audiofx/Visualizer;

    move-result-object v0

    new-instance v1, Lcom/android/server/lights/VisualizerHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/lights/VisualizerHolder$1;-><init>(Lcom/android/server/lights/VisualizerHolder;Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;)V

    .line 88
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 65
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 89
    invoke-direct {p0}, Lcom/android/server/lights/VisualizerHolder;->getVisualizer()Landroid/media/audiofx/Visualizer;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 90
    return-void
.end method
