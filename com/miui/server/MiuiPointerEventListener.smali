.class public Lcom/miui/server/MiuiPointerEventListener;
.super Ljava/lang/Object;
.source "MiuiPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final GESTURE_FINGER_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiuiPointerEventListener"

.field private static final THREE_GESTURE_STATE_DETECTED_FALSE:I = 0x2

.field private static final THREE_GESTURE_STATE_DETECTED_TRUE:I = 0x3

.field private static final THREE_GESTURE_STATE_DETECTING:I = 0x1

.field private static final THREE_GESTURE_STATE_NONE:I = 0x0

.field private static final THREE_GESTURE_STATE_NO_DETECT:I = 0x4


# instance fields
.field private mBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDumpLogIntent:Landroid/content/Intent;

.field private mEnable:Z

.field private mInitMotionY:[F

.field private mPointerIds:[I

.field private mThreeGestureAction:Ljava/lang/String;

.field private mThreeGestureState:I

.field private mThreeGestureThreshold:I

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    .line 52
    const/4 v1, 0x3

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    .line 53
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    .line 61
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/server/MiuiPointerEventListener;->mEnable:Z

    .line 64
    iput-object p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreshold:I

    .line 66
    iget v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreshold:I

    mul-int/2addr v3, v1

    iput v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureThreshold:I

    .line 67
    const-string/jumbo v3, "sys.miui.screenshot"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 68
    goto :goto_34

    :cond_33
    move v1, v0

    :goto_34
    iput v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    .line 69
    iget-object v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "enable_three_gesture"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    iget-object v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_three_gesture"

    .line 71
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/miui/server/MiuiPointerEventListener$1;

    .line 72
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/miui/server/MiuiPointerEventListener$1;-><init>(Lcom/miui/server/MiuiPointerEventListener;Landroid/os/Handler;)V

    const/4 v4, -0x1

    .line 70
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/miui/server/MiuiPointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiPointerEventListener;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/server/MiuiPointerEventListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiPointerEventListener;

    .line 40
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeThreeGestureState(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 153
    iget v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 155
    :cond_5
    packed-switch p1, :pswitch_data_2a

    goto :goto_1c

    .line 158
    :pswitch_9
    :try_start_9
    const-string/jumbo v0, "sys.miui.screenshot"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    goto :goto_1c

    .line 163
    :pswitch_13
    const-string/jumbo v0, "sys.miui.screenshot"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    nop

    .line 168
    :goto_1c
    iput p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 171
    goto :goto_27

    .line 169
    :catch_1f
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MiuiPointerEventListener"

    const-string v2, "RuntimeException when setprop"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_27
    return-void

    nop

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_9
        :pswitch_13
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method

.method private checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_11

    return v1

    .line 177
    :cond_11
    const/4 v0, 0x1

    .line 178
    .local v0, "maxY":F
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 179
    .local v2, "minY":F
    const/4 v3, 0x1

    .line 180
    .local v3, "maxX":F
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 181
    .local v4, "minX":F
    iget-object v5, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 182
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v6, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 183
    .local v6, "hight":I
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 184
    .local v7, "width":I
    move v8, v4

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "maxY":F
    .local v3, "minY":F
    .local v4, "maxX":F
    .local v8, "minX":F
    :goto_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v0, v9, :cond_57

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 186
    .local v9, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 187
    .local v10, "y":F
    iget v11, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreshold:I

    sub-int v11, v6, v11

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-lez v11, :cond_44

    .line 190
    return v1

    .line 192
    :cond_44
    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 194
    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 195
    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 184
    .end local v9    # "x":F
    .end local v10    # "y":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 200
    .end local v0    # "i":I
    :cond_57
    sub-float v0, v2, v3

    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x43160000    # 150.0f

    mul-float/2addr v9, v10

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_71

    sub-float v0, v4, v8

    .line 201
    if-ge v7, v6, :cond_68

    move v9, v7

    goto :goto_69

    :cond_68
    move v9, v6

    :goto_69
    int-to-float v9, v9

    cmpl-float v0, v0, v9

    if-lez v0, :cond_6f

    goto :goto_71

    .line 205
    :cond_6f
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_71
    :goto_71
    return v1
.end method

.method private getDumpLogIntent()Landroid/content/Intent;
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDumpLogIntent:Landroid/content/Intent;

    if-nez v0, :cond_19

    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDumpLogIntent:Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDumpLogIntent:Landroid/content/Intent;

    const-string v1, "com.miui.bugreport"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDumpLogIntent:Landroid/content/Intent;

    const-string v1, "com.miui.bugreport.service.action.DUMPLOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :cond_19
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDumpLogIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 88
    iget-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 89
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    .line 90
    iget-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mBootCompleted:Z

    if-nez v0, :cond_13

    return-void

    .line 93
    :cond_13
    iget-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    const/4 v2, 0x1

    if-nez v0, :cond_30

    .line 94
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_28

    move v0, v2

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    iput-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    .line 96
    iget-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mDeviceProvisioned:Z

    if-nez v0, :cond_30

    return-void

    .line 99
    :cond_30
    iget-boolean v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mEnable:Z

    if-nez v0, :cond_35

    return-void

    .line 101
    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-nez v0, :cond_41

    .line 102
    invoke-direct {p0, v1}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    goto :goto_6e

    .line 103
    :cond_41
    iget v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-nez v0, :cond_6e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_6e

    .line 104
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiPointerEventListener;->checkIsStartThreeGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 105
    invoke-direct {p0, v3}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    goto :goto_6e

    .line 107
    :cond_55
    invoke-direct {p0, v2}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    .line 109
    move v0, v1

    .line 109
    .local v0, "i":I
    :goto_59
    if-ge v0, v4, :cond_6e

    .line 110
    iget-object v5, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aput v6, v5, v0

    .line 111
    iget-object v5, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    aput v6, v5, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 116
    .end local v0    # "i":I
    :cond_6e
    :goto_6e
    iget v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-ne v0, v3, :cond_73

    .line 117
    return-void

    .line 120
    :cond_73
    iget v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-eqz v0, :cond_be

    .line 121
    iget v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureState:I

    if-eq v0, v2, :cond_7c

    .line 122
    return-void

    .line 125
    :cond_7c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v4, :cond_87

    .line 126
    invoke-direct {p0, v2}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    .line 127
    return-void

    .line 129
    :cond_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_8e

    goto :goto_bd

    .line 131
    :cond_8e
    const/4 v0, 0x0

    .line 132
    .local v0, "distance":F
    nop

    .line 132
    .local v1, "i":I
    :goto_90
    if-ge v1, v4, :cond_b0

    .line 133
    iget-object v3, p0, Lcom/miui/server/MiuiPointerEventListener;->mPointerIds:[I

    aget v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 134
    .local v3, "index":I
    if-ltz v3, :cond_ac

    if-lt v3, v4, :cond_9f

    goto :goto_ac

    .line 138
    :cond_9f
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/miui/server/MiuiPointerEventListener;->mInitMotionY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    add-float/2addr v0, v5

    .line 132
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 135
    .restart local v3    # "index":I
    :cond_ac
    :goto_ac
    invoke-direct {p0, v2}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    .line 136
    return-void

    .line 140
    .end local v1    # "i":I
    .end local v3    # "index":I
    :cond_b0
    iget v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureThreshold:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_bd

    .line 141
    invoke-direct {p0, v4}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    .line 142
    invoke-direct {p0}, Lcom/miui/server/MiuiPointerEventListener;->takeThreeGestureAction()V

    .line 146
    .end local v0    # "distance":F
    :cond_bd
    :goto_bd
    return-void

    .line 149
    :cond_be
    return-void
.end method

.method private static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .line 228
    const-string v0, "count_event"

    .line 229
    .local v0, "STAT_TYPE_COUNT_EVENT":Ljava/lang/String;
    const-string v1, "com.miui.gallery"

    .line 230
    .local v1, "GALLERY_PKG_NAME":Ljava/lang/String;
    const-string v2, "com.miui.gallery.intent.action.SEND_STAT"

    .line 231
    .local v2, "ACTION_SEND_STAT":Ljava/lang/String;
    const-string/jumbo v3, "stat_type"

    .line 232
    .local v3, "EXTRA_STAT_TYPE":Ljava/lang/String;
    const-string v4, "category"

    .line 233
    .local v4, "EXTRA_CATEGORY":Ljava/lang/String;
    const-string v5, "event"

    .line 235
    .local v5, "EXTRA_EVENT":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string/jumbo v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method private takeScreenshot()V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 223
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screenshot"

    const-string/jumbo v2, "threefingers"

    invoke-static {v0, v1, v2}, Lcom/miui/server/MiuiPointerEventListener;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiPointerEventListener;->changeThreeGestureState(I)V

    .line 225
    return-void
.end method

.method private takeThreeGestureAction()V
    .registers 4

    .line 209
    const-string/jumbo v0, "screen_shot"

    iget-object v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    invoke-direct {p0}, Lcom/miui/server/MiuiPointerEventListener;->takeScreenshot()V

    goto :goto_41

    .line 211
    :cond_f
    const-string v0, "dump_log"

    iget-object v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 212
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/server/MiuiPointerEventListener;->getDumpLogIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 213
    iget-object v0, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/MiuiPointerEventListener;->mContext:Landroid/content/Context;

    const v2, 0x110b010e

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 213
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 215
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 217
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 84
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiPointerEventListener;->processMotionEventForThreeGestureDetect(Landroid/view/MotionEvent;)V

    .line 85
    return-void
.end method

.method public setThreeGestureAction(Ljava/lang/String;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/miui/server/MiuiPointerEventListener;->mThreeGestureAction:Ljava/lang/String;

    .line 245
    return-void
.end method
