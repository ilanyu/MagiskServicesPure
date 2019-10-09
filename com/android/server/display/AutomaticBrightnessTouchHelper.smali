.class public Lcom/android/server/display/AutomaticBrightnessTouchHelper;
.super Ljava/lang/Object;
.source "AutomaticBrightnessTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static SCREEN_HEIGHT:F = 0.0f

.field private static SCREEN_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessTouchHelper"

.field private static final TOUCHBOTTOM:F

.field private static final TOUCHLEFT:F

.field private static final TOUCHRIGHT:F

.field private static final TOUCHTOP:F

.field private static final TOUCH_EVENT_DEBOUNCE:I

.field private static final USE_TOUCH_ENABLED:Z

.field private static sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

.field private static sTouchTrackingEnabled:Z

.field static sWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z

    .line 27
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110c0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->USE_TOUCH_ENABLED:Z

    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHLEFT:F

    .line 32
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHRIGHT:F

    .line 34
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHTOP:F

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHBOTTOM:F

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_WIDTH:F

    .line 40
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_HEIGHT:F

    .line 41
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchTrackingEnabled:Z

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCH_EVENT_DEBOUNCE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 23
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()F
    .registers 1

    .line 23
    sget v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHLEFT:F

    return v0
.end method

.method static synthetic access$400()F
    .registers 1

    .line 23
    sget v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHRIGHT:F

    return v0
.end method

.method static synthetic access$500()F
    .registers 1

    .line 23
    sget v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHTOP:F

    return v0
.end method

.method static synthetic access$600()F
    .registers 1

    .line 23
    sget v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHBOTTOM:F

    return v0
.end method

.method static synthetic access$700()F
    .registers 1

    .line 23
    sget v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_WIDTH:F

    return v0
.end method

.method static synthetic access$800()F
    .registers 1

    .line 23
    sget v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_HEIGHT:F

    return v0
.end method

.method static checkTouchStatus(FZ)Z
    .registers 11
    .param p0, "lux"    # F
    .param p1, "luxValid"    # Z

    .line 64
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->USE_TOUCH_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 65
    return v1

    .line 68
    :cond_6
    const-wide/16 v2, 0x0

    .line 70
    .local v2, "mNowTime":J
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_2f

    .line 71
    :cond_e
    const-string v0, "AutomaticBrightnessTouchHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sTouchTrackingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchTrackingEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", lux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2f
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->getTouchStatus()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_51

    if-eqz p1, :cond_51

    .line 74
    const-string v0, "AutomaticBrightnessTouchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop the lightsensor event due to touch event occured! lux="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v4

    .line 78
    :cond_51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 79
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->getTouchStatus()I

    move-result v0

    if-nez v0, :cond_b7

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    .line 80
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mLastObservedTouchTime:J
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->access$100(Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;)J

    move-result-wide v5

    sub-long v5, v2, v5

    sget v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCH_EVENT_DEBOUNCE:I

    const v7, 0x3b9aca00

    mul-int/2addr v0, v7

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-gez v0, :cond_b7

    if-eqz p1, :cond_b7

    .line 81
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z

    if-eqz v0, :cond_a0

    .line 82
    const-string v0, "AutomaticBrightnessTouchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTouchStatus: { mow time: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " last positive time: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    .line 83
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mLastObservedTouchTime:J
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->access$100(Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_a0
    const-string v0, "AutomaticBrightnessTouchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop the lightsensor event due to touch event timeout not reached! lux="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v4

    .line 89
    :cond_b7
    return v1
.end method

.method static configure(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .line 58
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->USE_TOUCH_ENABLED:Z

    if-eqz v0, :cond_7

    .line 59
    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->setTouchTrackingEnabled(Z)V

    .line 61
    :cond_7
    return-void
.end method

.method static dump(Ljava/io/PrintWriter;Z)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "enableDebug"    # Z

    .line 93
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->USE_TOUCH_ENABLED:Z

    if-eqz v0, :cond_a0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SCREEN_WIDTH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_WIDTH:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SCREEN_HEIGHT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_HEIGHT:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TOUCHLEFT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHLEFT:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TOUCHRIGHT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHRIGHT:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TOUCHTOP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHTOP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TOUCHBOTTOM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHBOTTOM:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TOUCH_EVENT_DEBOUNCE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCH_EVENT_DEBOUNCE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    sput-boolean p1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z

    .line 103
    :cond_a0
    return-void
.end method

.method static initialize()V
    .registers 5

    .line 50
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->USE_TOUCH_ENABLED:Z

    if-eqz v0, :cond_24

    .line 51
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sWms:Lcom/android/server/wm/WindowManagerService;

    .line 52
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;-><init>(Lcom/android/server/display/AutomaticBrightnessTouchHelper$1;)V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    .line 53
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    sget v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHLEFT:F

    sget v2, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHRIGHT:F

    sget v3, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHTOP:F

    sget v4, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHBOTTOM:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->updateTouchBorder(FFFF)V

    .line 55
    :cond_24
    return-void
.end method

.method private static setTouchTrackingEnabled(Z)V
    .registers 4
    .param p0, "enable"    # Z

    .line 106
    const/4 v0, 0x1

    if-eqz p0, :cond_19

    .line 107
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchTrackingEnabled:Z

    if-nez v1, :cond_33

    .line 108
    sget-object v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sWms:Lcom/android/server/wm/WindowManagerService;

    sget-object v2, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 109
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchTrackingEnabled:Z

    .line 110
    const-string v0, "AutomaticBrightnessTouchHelper"

    const-string/jumbo v1, "touch pointer listener has registered!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 113
    :cond_19
    sget-object v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    if-eqz v1, :cond_33

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchTrackingEnabled:Z

    if-ne v1, v0, :cond_33

    .line 114
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sWms:Lcom/android/server/wm/WindowManagerService;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchPositionTracker:Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->sTouchTrackingEnabled:Z

    .line 116
    const-string v0, "AutomaticBrightnessTouchHelper"

    const-string/jumbo v1, "touch pointer listener has unregistered!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_33
    :goto_33
    return-void
.end method
