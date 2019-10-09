.class public final Lcom/android/server/display/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;,
        Lcom/android/server/display/ColorDisplayService$CustomAutoMode;,
        Lcom/android/server/display/ColorDisplayService$AutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

.field private static final MATRIX_IDENTITY:[F

.field private static final TAG:Ljava/lang/String; = "ColorDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private final mColorTempCoefficients:[F

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mMatrixNight:[F

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 72
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 74
    sget-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 80
    new-instance v0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/ColorDisplayService$1;)V

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    .line 86
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    .line 88
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/ColorDisplayService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 59
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 59
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/ColorDisplayService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 59
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # I

    .line 59
    invoke-static {p0, p1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 59
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/ColorDisplayService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 59
    iget-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/ColorDisplayService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 59
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/display/ColorDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 59
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 59
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method private applyTint(Z)V
    .registers 9
    .param p1, "immediate"    # Z

    .line 334
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 338
    :cond_9
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 339
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v2

    .line 340
    .local v2, "from":[F
    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_24

    :cond_22
    sget-object v3, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 342
    .local v3, "to":[F
    :goto_24
    if-eqz p1, :cond_2a

    .line 343
    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_71

    .line 345
    :cond_2a
    sget-object v1, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 346
    if-nez v2, :cond_35

    sget-object v6, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    goto :goto_36

    :cond_35
    move-object v6, v2

    :goto_36
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 345
    invoke-static {v1, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 347
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 348
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 349
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    .line 348
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/ColorDisplayService$2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/ColorDisplayService$2;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 357
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/ColorDisplayService$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/server/display/ColorDisplayService$3;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 379
    :goto_71
    return-void
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 430
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 431
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 430
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 434
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 415
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 416
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 415
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 419
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .line 182
    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    return v1
.end method

.method private onUserChanged(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 145
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_22

    .line 148
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1b

    .line 149
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_22

    .line 151
    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_22

    .line 152
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->tearDown()V

    .line 156
    :cond_22
    :goto_22
    iput p1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 158
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_50

    .line 159
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_49

    .line 160
    new-instance v1, Lcom/android/server/display/ColorDisplayService$1;

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/ColorDisplayService$1;-><init>(Lcom/android/server/display/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 173
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_50

    .line 175
    :cond_49
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_50

    .line 176
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    .line 179
    :cond_50
    :goto_50
    return-void
.end method

.method private setCoefficientMatrix(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needsLinear"    # Z

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_a

    .line 320
    const v1, 0x107003a

    goto :goto_d

    .line 321
    :cond_a
    const v1, 0x107003b

    .line 319
    :goto_d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "coefficients":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    const/16 v2, 0x9

    if-ge v1, v2, :cond_26

    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 323
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 325
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method private setMatrix(I[F)V
    .registers 12
    .param p1, "colorTemperature"    # I
    .param p2, "outTemp"    # [F

    .line 388
    array-length v0, p2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_d

    .line 389
    const-string v0, "ColorDisplayService"

    const-string v1, "The display transformation matrix must be 4x4"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 393
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 395
    mul-int v0, p1, p1

    int-to-float v0, v0

    .line 396
    .local v0, "squareTemperature":F
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget v2, v2, v1

    mul-float/2addr v2, v0

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    .line 398
    .local v2, "red":F
    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v0

    int-to-float v4, p1

    iget-object v5, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    add-float/2addr v3, v4

    .line 400
    .local v3, "green":F
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x6

    aget v4, v4, v6

    mul-float/2addr v4, v0

    int-to-float v6, p1

    iget-object v7, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/16 v7, 0x8

    aget v6, v6, v7

    add-float/2addr v4, v6

    .line 402
    .local v4, "blue":F
    aput v2, p2, v1

    .line 403
    aput v3, p2, v5

    .line 404
    const/16 v1, 0xa

    aput v4, p2, v1

    .line 405
    return-void
.end method

.method private setUp()V
    .registers 4

    .line 186
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 190
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 199
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    .line 202
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 205
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onAutoModeChanged(I)V

    .line 208
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_63

    .line 209
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onActivated(Z)V

    .line 211
    :cond_63
    return-void
.end method

.method private tearDown()V
    .registers 4

    .line 214
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 217
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 218
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 221
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_30

    .line 222
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    .line 223
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 226
    :cond_30
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3b

    .line 227
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 228
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 230
    :cond_3b
    return-void
.end method


# virtual methods
.method public onAccessibilityTransformChanged(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 312
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 313
    return-void
.end method

.method public onActivated(Z)V
    .registers 4
    .param p1, "activated"    # Z

    .line 234
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_2b

    .line 235
    :cond_c
    const-string v0, "ColorDisplayService"

    if-eqz p1, :cond_13

    const-string v1, "Turning on night display"

    goto :goto_15

    :cond_13
    const-string v1, "Turning off night display"

    :goto_15
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 239
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_27

    .line 240
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onActivated(Z)V

    .line 243
    :cond_27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    .line 245
    :cond_2b
    return-void
.end method

.method public onAutoModeChanged(I)V
    .registers 5
    .param p1, "autoMode"    # I

    .line 249
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_23

    .line 252
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 256
    :cond_23
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 257
    new-instance v0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    goto :goto_38

    .line 258
    :cond_2e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_38

    .line 259
    new-instance v0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 262
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_41

    .line 263
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStart()V

    .line 265
    :cond_41
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 109
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_14

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    .line 113
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_14

    .line 114
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    .line 117
    :cond_14
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .registers 3
    .param p1, "colorTemperature"    # I

    .line 287
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    .line 289
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 5
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 278
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_20

    .line 281
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 283
    :cond_20
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 5
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 269
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_20

    .line 272
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 274
    :cond_20
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 293
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 294
    return-void

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    .line 299
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    .line 303
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 305
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 306
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_3c

    .line 307
    :cond_3a
    sget-object v1, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 306
    :goto_3c
    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMode(I[F)Z

    .line 308
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 105
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 121
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 123
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 126
    :cond_c
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 137
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 139
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_c

    .line 140
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 142
    :cond_c
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 130
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 133
    return-void
.end method
