.class public Lcom/android/server/wm/FullScreenEventReporter;
.super Ljava/lang/Object;
.source "FullScreenEventReporter.java"


# static fields
.field private static final ACTION_DOWN_JANKY_THRESHOLD:F = 40.0f

.field private static final ACTION_MOVE_JANKY_THRESHOLD:F = 17.1f

.field private static final ACTION_UP_JANKY_THRESHOLD:F = 40.0f

.field private static final ANIMATION_JANKY_THRESHOLD:F = 17.1f

.field private static final CACHE_LIST_SIZE:I = 0xa

.field private static DEBUG:Z = false

.field static final FS_ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field static final FS_ACTION_HOME:Ljava/lang/String; = "home"

.field private static final FS_ACTION_KEY:Ljava/lang/String; = "action"

.field static final FS_ACTION_RECENTS:Ljava/lang/String; = "recents"

.field private static final FS_DO_FRAMES_COUNT:Ljava/lang/String; = "doFramesCount"

.field private static final FS_EXTRA1:Ljava/lang/String; = "extraKey1"

.field private static final FS_EXTRA2:Ljava/lang/String; = "extraKey2"

.field private static final FS_FUNCTION_VERSION:Ljava/lang/String; = "fullScreenVersion"

.field private static final FS_JANKY_FRAMES_COUNT:Ljava/lang/String; = "jankyFramesCount"

.field private static final FS_MODULE:Ljava/lang/String; = "fsJankyFrames"

.field private static final FS_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final FS_RECORD_TIME:Ljava/lang/String; = "recordTime"

.field private static final FS_VERSION_VALUE:Ljava/lang/String; = "2"

.field private static final JANKY_FRAME_INTERVAL:I = 0x14

.field private static final JSON_PREFIX_FORMAT:Ljava/lang/String; = "{\"fullScreenVersion\":\"\",\"action\":\"\",\"jankyFramesCount\":\"\",\"extraKey1\":\"\",\"extraKey2\":\" %s\"}"

.field private static final TAG:Ljava/lang/String; = "MiuiGesturePointerEventListener"

.field private static actionStartTime:[J

.field private static mFrameIntervalMsec:J

.field private static sActionJankyTimeOnce:D

.field private static sCancelFrameCount:J

.field private static sCancelFrameCountOnce:J

.field private static sCancelJankyFrameCount:J

.field private static sCancelJankyFrameCountOnce:J

.field private static sCurrentTime:J

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sDoFrameCount:J

.field private static sDownActionCount:J

.field private static sDownActionJankyCount:J

.field private static sDownActionJankyCountOnce:J

.field private static sDownX:F

.field private static sDownY:F

.field private static sFrameJankyTimeOnce:D

.field private static sHomeFrameCount:J

.field private static sHomeFrameCountOnce:J

.field private static sHomeJankyFrameCount:J

.field private static sHomeJankyFrameCountOnce:J

.field private static sJankyFrameCount:J

.field private static final sJankyFramesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMoveActionCount:J

.field private static sMoveActionCountOnce:J

.field private static sMoveActionJankyCount:J

.field private static sMoveActionJankyCountOnce:J

.field private static sRecentsFrameCount:J

.field private static sRecentsFrameCountOnce:J

.field private static sRecentsJankyFrameCount:J

.field private static sRecentsJankyFrameCountOnce:J

.field private static sTotalActionCount:J

.field private static sTotalActionJankyCount:J

.field private static sTotalActionJankyTime:D

.field private static sTotalFrameCount:J

.field private static sTotalFrameJankyCount:J

.field private static sTotalFrameJankyTime:D

.field private static sUpActionCount:J

.field private static sUpActionJankyCount:J

.field private static sUpActionJankyCountOnce:J

.field private static sUpX:F

.field private static sUpY:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 28
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_PERFORMANCE:Z

    sput-boolean v0, Lcom/android/server/wm/FullScreenEventReporter;->DEBUG:Z

    .line 30
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->mFrameIntervalMsec:J

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    .line 54
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/wm/FullScreenEventReporter;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 83
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:J

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [J

    sput-object v0, Lcom/android/server/wm/FullScreenEventReporter;->actionStartTime:[J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static caculateAnimationFrameInterval(Ljava/lang/String;)V
    .registers 23
    .param p0, "action"    # Ljava/lang/String;

    .line 219
    move-object/from16 v0, p0

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:J

    .line 220
    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameCount:J

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameCount:J

    .line 221
    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    .line 222
    .local v1, "previousFrameTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    .line 223
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v8, 0x1

    const v9, 0x40828578

    const v10, 0x30f4df

    const v11, -0x5185d186

    const/4 v12, -0x1

    if-eq v5, v11, :cond_41

    if-eq v5, v10, :cond_37

    if-eq v5, v9, :cond_2c

    goto :goto_4b

    :cond_2c
    const-string/jumbo v5, "recents"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v5, v8

    goto :goto_4c

    :cond_37
    const-string v5, "home"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v5, 0x0

    goto :goto_4c

    :cond_41
    const-string v5, "cancel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v5, 0x2

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v5, v12

    :goto_4c
    packed-switch v5, :pswitch_data_122

    goto :goto_71

    .line 233
    :pswitch_50
    sget-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCount:J

    add-long/2addr v13, v3

    sput-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCount:J

    .line 234
    sget-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCountOnce:J

    add-long/2addr v13, v3

    sput-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCountOnce:J

    .line 235
    goto :goto_71

    .line 229
    :pswitch_5b
    sget-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCount:J

    add-long/2addr v13, v3

    sput-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCount:J

    .line 230
    sget-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCountOnce:J

    add-long/2addr v13, v3

    sput-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCountOnce:J

    .line 231
    goto :goto_71

    .line 225
    :pswitch_66
    sget-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCount:J

    add-long/2addr v13, v3

    sput-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCount:J

    .line 226
    sget-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCountOnce:J

    add-long/2addr v13, v3

    sput-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCountOnce:J

    .line 227
    nop

    .line 239
    :goto_71
    const-wide/16 v13, 0x0

    cmp-long v5, v1, v13

    if-lez v5, :cond_120

    .line 240
    sget-wide v13, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    sub-long/2addr v13, v1

    .line 241
    .local v13, "jitterMsec":J
    long-to-float v5, v13

    const v15, 0x4188cccd    # 17.1f

    cmpl-float v5, v5, v15

    if-lez v5, :cond_120

    .line 242
    sget-wide v16, Lcom/android/server/wm/FullScreenEventReporter;->mFrameIntervalMsec:J

    div-long v16, v13, v16

    sub-long v16, v16, v3

    .line 243
    .local v16, "skippedFrames":J
    sget-wide v18, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:J

    add-long v18, v18, v16

    sput-wide v18, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:J

    .line 244
    sget-wide v18, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameJankyCount:J

    add-long v18, v18, v3

    sput-wide v18, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameJankyCount:J

    .line 245
    sget-wide v18, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameJankyTime:D

    long-to-float v5, v13

    sub-float/2addr v5, v15

    float-to-double v6, v5

    add-double v18, v18, v6

    sput-wide v18, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameJankyTime:D

    .line 246
    sget-wide v5, Lcom/android/server/wm/FullScreenEventReporter;->sFrameJankyTimeOnce:D

    long-to-float v7, v13

    sub-float/2addr v7, v15

    float-to-double v3, v7

    add-double/2addr v5, v3

    sput-wide v5, Lcom/android/server/wm/FullScreenEventReporter;->sFrameJankyTimeOnce:D

    .line 247
    sget-boolean v3, Lcom/android/server/wm/FullScreenEventReporter;->DEBUG:Z

    if-eqz v3, :cond_c6

    .line 248
    const-string v3, "MiuiGesturePointerEventListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "jank!frame took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_c6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v3, v11, :cond_e8

    if-eq v3, v10, :cond_dd

    if-eq v3, v9, :cond_d1

    goto :goto_f3

    :cond_d1
    const-string/jumbo v3, "recents"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    move/from16 v20, v8

    goto :goto_f5

    :cond_dd
    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    const/16 v20, 0x0

    goto :goto_f5

    :cond_e8
    const-string v3, "cancel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    const/16 v20, 0x2

    goto :goto_f5

    :cond_f3
    :goto_f3
    move/from16 v20, v12

    :goto_f5
    packed-switch v20, :pswitch_data_12c

    .end local v13    # "jitterMsec":J
    .end local v16    # "skippedFrames":J
    goto :goto_120

    .line 260
    .restart local v13    # "jitterMsec":J
    .restart local v16    # "skippedFrames":J
    :pswitch_f9
    sget-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sCancelJankyFrameCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sCancelJankyFrameCount:J

    .line 261
    sget-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sCancelJankyFrameCountOnce:J

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sCancelJankyFrameCountOnce:J

    .line 262
    goto :goto_120

    .line 256
    :pswitch_106
    const-wide/16 v5, 0x1

    sget-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsJankyFrameCount:J

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsJankyFrameCount:J

    .line 257
    sget-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsJankyFrameCountOnce:J

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsJankyFrameCountOnce:J

    .line 258
    goto :goto_120

    .line 252
    :pswitch_113
    const-wide/16 v5, 0x1

    sget-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sHomeJankyFrameCount:J

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sHomeJankyFrameCount:J

    .line 253
    sget-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sHomeJankyFrameCountOnce:J

    add-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sHomeJankyFrameCountOnce:J

    .line 254
    nop

    .line 268
    .end local v13    # "jitterMsec":J
    .end local v16    # "skippedFrames":J
    :cond_120
    :goto_120
    return-void

    nop

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5b
        :pswitch_50
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_113
        :pswitch_106
        :pswitch_f9
    .end packed-switch
.end method

.method static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 312
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "gesture performance statistics:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Action Janky Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Action Janky Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action Down: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionJankyCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action Move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionJankyCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action Up: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionJankyCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Frame Janky Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameJankyCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Frame Janky Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sTotalFrameJankyTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Home: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sHomeJankyFrameCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsJankyFrameCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sCancelJankyFrameCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 325
    return-void
.end method

.method static enableDebug(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 328
    sput-boolean p0, Lcom/android/server/wm/FullScreenEventReporter;->DEBUG:Z

    .line 329
    return-void
.end method

.method static endActionEventTrace(IFF)V
    .registers 19
    .param p0, "action"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "after":J
    sget-object v2, Lcom/android/server/wm/FullScreenEventReporter;->actionStartTime:[J

    aget-wide v2, v2, p0

    .line 119
    .local v2, "startTime":J
    sub-long v4, v0, v2

    .line 120
    .local v4, "took":J
    sget-wide v6, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionCount:J

    .line 121
    const/high16 v6, 0x42200000    # 40.0f

    packed-switch p0, :pswitch_data_198

    goto/16 :goto_195

    .line 154
    :pswitch_18
    sget-wide v10, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionCount:J

    add-long/2addr v10, v8

    sput-wide v10, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionCount:J

    .line 155
    sput p1, Lcom/android/server/wm/FullScreenEventReporter;->sUpX:F

    .line 156
    sput p2, Lcom/android/server/wm/FullScreenEventReporter;->sUpY:F

    .line 157
    long-to-float v11, v4

    cmpl-float v11, v11, v6

    if-lez v11, :cond_65

    .line 158
    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyCount:J

    add-long/2addr v11, v8

    sput-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyCount:J

    .line 159
    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyTime:D

    long-to-float v13, v4

    sub-float/2addr v13, v6

    float-to-double v13, v13

    add-double/2addr v11, v13

    sput-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyTime:D

    .line 160
    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    long-to-float v13, v4

    sub-float/2addr v13, v6

    float-to-double v13, v13

    add-double/2addr v11, v13

    sput-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    .line 161
    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionJankyCount:J

    add-long/2addr v11, v8

    sput-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionJankyCount:J

    .line 162
    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionJankyCountOnce:J

    add-long/2addr v11, v8

    sput-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionJankyCountOnce:J

    .line 163
    sget-boolean v6, Lcom/android/server/wm/FullScreenEventReporter;->DEBUG:Z

    if-eqz v6, :cond_65

    .line 164
    const-string v6, "MiuiGesturePointerEventListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "jank! ACTION_UP  took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_65
    sget v6, Lcom/android/server/wm/FullScreenEventReporter;->sDownY:F

    sget v8, Lcom/android/server/wm/FullScreenEventReporter;->sUpY:F

    sub-float/2addr v6, v8

    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_dd

    .line 168
    const-string v6, "MiuiGesturePointerEventListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PointerEventEnd:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionJankyCountOnce:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionJankyCountOnce:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCountOnce:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionJankyCountOnce:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ",("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/wm/FullScreenEventReporter;->sDownX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/wm/FullScreenEventReporter;->sDownY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "),("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/wm/FullScreenEventReporter;->sUpX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/wm/FullScreenEventReporter;->sUpY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_dd
    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->resetActionOnceCount()V

    .line 173
    goto/16 :goto_195

    .line 140
    :pswitch_e2
    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCount:J

    add-long/2addr v11, v8

    sput-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCount:J

    .line 141
    sget-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCountOnce:J

    add-long/2addr v11, v8

    sput-wide v11, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCountOnce:J

    .line 142
    long-to-float v6, v4

    const v11, 0x4188cccd    # 17.1f

    cmpl-float v6, v6, v11

    if-lez v6, :cond_195

    .line 143
    sget-wide v12, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyCount:J

    add-long/2addr v12, v8

    sput-wide v12, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyCount:J

    .line 144
    sget-wide v12, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyTime:D

    long-to-float v6, v4

    sub-float/2addr v6, v11

    float-to-double v8, v6

    add-double/2addr v12, v8

    sput-wide v12, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyTime:D

    .line 145
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    long-to-float v6, v4

    sub-float/2addr v6, v11

    float-to-double v11, v6

    add-double/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    .line 146
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionJankyCount:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionJankyCount:J

    .line 147
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionJankyCountOnce:J

    add-long/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionJankyCountOnce:J

    .line 148
    sget-boolean v6, Lcom/android/server/wm/FullScreenEventReporter;->DEBUG:Z

    if-eqz v6, :cond_195

    .line 149
    const-string v6, "MiuiGesturePointerEventListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "jank! ACTION_MOVE  took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_195

    .line 123
    :pswitch_136
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCountOnce:J

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-lez v8, :cond_148

    .line 124
    const-string v8, "MiuiGesturePointerEventListener"

    const-string v9, "action up lost???"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->resetActionOnceCount()V

    .line 127
    :cond_148
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionCount:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionCount:J

    .line 128
    long-to-float v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_195

    .line 129
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyCount:J

    add-long/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyCount:J

    .line 130
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyTime:D

    long-to-float v11, v4

    sub-float/2addr v11, v6

    float-to-double v11, v11

    add-double/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sTotalActionJankyTime:D

    .line 131
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    long-to-float v11, v4

    sub-float/2addr v11, v6

    float-to-double v11, v11

    add-double/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    .line 132
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionJankyCount:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionJankyCount:J

    .line 133
    sget-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionJankyCountOnce:J

    add-long/2addr v8, v11

    sput-wide v8, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionJankyCountOnce:J

    .line 134
    sget-boolean v6, Lcom/android/server/wm/FullScreenEventReporter;->DEBUG:Z

    if-eqz v6, :cond_195

    .line 135
    const-string v6, "MiuiGesturePointerEventListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "jank! ACTION_DOWN  took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_195
    :goto_195
    return-void

    nop

    nop

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_136
        :pswitch_e2
        :pswitch_18
    .end packed-switch
.end method

.method private static frameInfoToJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 338
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 339
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "fullScreenVersion"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string/jumbo v1, "jankyFramesCount"

    sget-wide v2, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 344
    .local v1, "jsonSub":Lorg/json/JSONObject;
    const-string v2, "doFramesCount"

    sget-wide v3, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string/jumbo v2, "recordTime"

    sget-object v3, Lcom/android/server/wm/FullScreenEventReporter;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v2, "extraKey1"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v2, "extraKey2"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    return-object v0
.end method

.method private static getRefreshRate()F
    .registers 2

    .line 332
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 334
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method static recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5185d186

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2b

    const v1, 0x30f4df

    if-eq v0, v1, :cond_21

    const v1, 0x40828578

    if-eq v0, v1, :cond_16

    goto :goto_35

    :cond_16
    const-string/jumbo v0, "recents"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v3

    goto :goto_36

    :cond_21
    const-string v0, "home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_36

    :cond_2b
    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x2

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, -0x1

    :goto_36
    packed-switch v0, :pswitch_data_120

    goto/16 :goto_cb

    .line 281
    :pswitch_3b
    const-string v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " animation end:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sCancelJankyFrameCountOnce:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCountOnce:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sFrameJankyTimeOnce:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    goto :goto_cb

    .line 277
    :pswitch_6b
    const-string v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " animation end:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsJankyFrameCountOnce:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCountOnce:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sFrameJankyTimeOnce:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    goto :goto_cb

    .line 273
    :pswitch_9b
    const-string v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " animation end:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sHomeJankyFrameCountOnce:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCountOnce:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/FullScreenEventReporter;->sFrameJankyTimeOnce:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    nop

    .line 287
    :goto_cb
    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationOnceCount()V

    .line 288
    const-class v0, Lcom/android/server/wm/FullScreenEventReporter;

    monitor-enter v0

    .line 290
    :try_start_d1
    invoke-static {p0, p1}, Lcom/android/server/wm/FullScreenEventReporter;->frameInfoToJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 291
    .local v1, "jsonObject":Lorg/json/JSONObject;
    sget-object v4, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_de
    .catch Lorg/json/JSONException; {:try_start_d1 .. :try_end_de} :catch_e1
    .catchall {:try_start_d1 .. :try_end_de} :catchall_df

    .line 295
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_f9

    .line 308
    :catchall_df
    move-exception v1

    goto :goto_11d

    .line 292
    :catch_e1
    move-exception v1

    .line 293
    .local v1, "e":Lorg/json/JSONException;
    :try_start_e2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 294
    sget-object v4, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    const-string/jumbo v5, "{\"fullScreenVersion\":\"\",\"action\":\"\",\"jankyFramesCount\":\"\",\"extraKey1\":\"\",\"extraKey2\":\" %s\"}"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_f9
    sget-object v1, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_11b

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    .local v1, "uploadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 300
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/FullScreenEventReporter$1;

    invoke-direct {v3, v1}, Lcom/android/server/wm/FullScreenEventReporter$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    .end local v1    # "uploadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11b
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :goto_11d
    monitor-exit v0
    :try_end_11e
    .catchall {:try_start_e2 .. :try_end_11e} :catchall_df

    throw v1

    nop

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_6b
        :pswitch_3b
    .end packed-switch
.end method

.method private static resetActionOnceCount()V
    .registers 2

    .line 180
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sActionJankyTimeOnce:D

    .line 181
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sDownActionJankyCountOnce:J

    .line 182
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionJankyCountOnce:J

    .line 183
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sMoveActionCountOnce:J

    .line 184
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sUpActionJankyCountOnce:J

    .line 185
    return-void
.end method

.method static resetAnimationFrameIntervalParams(Ljava/lang/String;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;

    .line 198
    sget-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCountOnce:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 199
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "home animation not reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationOnceCount()V

    .line 202
    :cond_12
    sget-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCountOnce:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    .line 203
    const-string v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "recents animation not reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationOnceCount()V

    .line 206
    :cond_23
    sget-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCountOnce:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    .line 207
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "cancel animation not reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationOnceCount()V

    .line 210
    :cond_33
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    .line 211
    sput-wide v2, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:J

    .line 212
    sput-wide v2, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:J

    .line 213
    sget-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->mFrameIntervalMsec:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    .line 214
    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->getRefreshRate()F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->mFrameIntervalMsec:J

    .line 216
    :cond_4b
    return-void
.end method

.method private static resetAnimationOnceCount()V
    .registers 2

    .line 188
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sFrameJankyTimeOnce:D

    .line 189
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sHomeJankyFrameCountOnce:J

    .line 190
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sHomeFrameCountOnce:J

    .line 191
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsJankyFrameCountOnce:J

    .line 192
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sRecentsFrameCountOnce:J

    .line 193
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sCancelJankyFrameCountOnce:J

    .line 194
    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sCancelFrameCountOnce:J

    .line 195
    return-void
.end method

.method static startActionEventTrace(IFF)V
    .registers 6
    .param p0, "action"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 109
    if-nez p0, :cond_6

    .line 110
    sput p1, Lcom/android/server/wm/FullScreenEventReporter;->sDownX:F

    .line 111
    sput p2, Lcom/android/server/wm/FullScreenEventReporter;->sDownY:F

    .line 113
    :cond_6
    sget-object v0, Lcom/android/server/wm/FullScreenEventReporter;->actionStartTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v0, p0

    .line 114
    return-void
.end method
