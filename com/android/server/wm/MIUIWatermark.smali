.class Lcom/android/server/wm/MIUIWatermark;
.super Ljava/lang/Object;
.source "MIUIWatermark.java"


# static fields
.field private static volatile mIMEI:Ljava/lang/String;

.field private static mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

.field private static mSurfaceControl:Landroid/view/SurfaceControl;

.field private static mTextSize:I

.field private static textSize:I


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private final degree:I

.field private mAccountName:Ljava/lang/String;

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mImeiThreadisRuning:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    const/16 v0, 0xd

    sput v0, Lcom/android/server/wm/MIUIWatermark;->textSize:I

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Lcom/android/server/wm/WindowManagerService;)V
    .registers 11
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wm/MIUIWatermark;->degree:I

    .line 67
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    .line 69
    iput v0, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    .line 71
    iput-boolean v0, p0, Lcom/android/server/wm/MIUIWatermark;->DEBUG:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/server/wm/MIUIWatermark;->mImeiThreadisRuning:Z

    .line 73
    const-string v1, "Watermark"

    iput-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    .line 88
    invoke-static {p3}, Lcom/android/server/wm/MIUIWatermark;->loadAccountId(Lcom/android/server/wm/WindowManagerService;)Landroid/accounts/Account;

    move-result-object v1

    .line 89
    .local v1, "account":Landroid/accounts/Account;
    const/4 v2, 0x0

    if-eqz v1, :cond_25

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_26

    :cond_25
    move-object v3, v2

    :goto_26
    iput-object v3, p0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    .line 90
    iget-object v3, p3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/wm/MIUIWatermark;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    .line 91
    iget-boolean v3, p0, Lcom/android/server/wm/MIUIWatermark;->DEBUG:Z

    if-eqz v3, :cond_56

    .line 92
    iget-object v3, p0, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "imei"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/MIUIWatermark;->mDisplay:Landroid/view/Display;

    .line 96
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v3, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget-object v3, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v5, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x50ffffff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x50000000

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v3, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 103
    move-object v0, v2

    .line 105
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_8b
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "MIUIWatermarkSurface"

    .line 106
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v4, v4}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v0, v2

    .line 110
    iget-object v2, p0, Lcom/android/server/wm/MIUIWatermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 111
    const v2, 0xf4240

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 113
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 114
    iget-object v2, p0, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_be
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_8b .. :try_end_be} :catch_bf

    .line 117
    goto :goto_d6

    .line 115
    :catch_bf
    move-exception v2

    .line 116
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    iget-object v3, p0, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createrSurface e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_d6
    sput-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 119
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 56
    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->getImeiID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/MIUIWatermark;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MIUIWatermark;
    .param p1, "x1"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/wm/MIUIWatermark;->setImei(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/wm/MIUIWatermark;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MIUIWatermark;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/wm/MIUIWatermark;->mImeiThreadisRuning:Z

    return p1
.end method

.method private static createMIUIWatermarkInTransaction(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 226
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 227
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    new-instance v1, Lcom/android/server/wm/MIUIWatermark;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/server/wm/MIUIWatermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    .line 228
    return-void
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 314
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/wm/MIUIWatermark;->getImeiInfo(Landroid/content/Context;)V

    .line 289
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method private static getImeiID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 278
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 279
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "imei":Ljava/lang/String;
    return-object v1
.end method

.method private getImeiInfo(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 240
    invoke-static {p1}, Lcom/android/server/wm/MIUIWatermark;->getImeiID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "imei":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 242
    monitor-enter p0

    .line 243
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/wm/MIUIWatermark;->mImeiThreadisRuning:Z

    if-eqz v1, :cond_d

    .line 244
    monitor-exit p0

    return-void

    .line 246
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MIUIWatermark;->mImeiThreadisRuning:Z

    .line 248
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    .line 250
    new-instance v1, Lcom/android/server/wm/MIUIWatermark$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/MIUIWatermark$1;-><init>(Lcom/android/server/wm/MIUIWatermark;Landroid/content/Context;)V

    .line 271
    invoke-virtual {v1}, Lcom/android/server/wm/MIUIWatermark$1;->start()V

    goto :goto_20

    .line 248
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1

    .line 273
    :cond_1d
    invoke-direct {p0, v0}, Lcom/android/server/wm/MIUIWatermark;->setImei(Ljava/lang/String;)V

    .line 275
    :goto_20
    return-void
.end method

.method private static init(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;
    .registers 3
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_c
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-eqz v0, :cond_13

    .line 299
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    return-object v0

    .line 301
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/wm/MIUIWatermark;->textSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/server/wm/MIUIWatermark;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 305
    :try_start_21
    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->createMIUIWatermarkInTransaction(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2d

    .line 307
    const-string v0, "createWatermarkInTransaction"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 308
    nop

    .line 309
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    return-object v0

    .line 307
    :catchall_2d
    move-exception v0

    const-string v1, "createWatermarkInTransaction"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method public static initWatermark(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;
    .registers 3
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 77
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-nez v0, :cond_16

    .line 78
    const-class v0, Lcom/android/server/wm/MIUIWatermark;

    monitor-enter v0

    .line 79
    :try_start_7
    sget-object v1, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-nez v1, :cond_11

    .line 80
    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->init(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    .line 82
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 84
    :cond_16
    :goto_16
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    return-object v0
.end method

.method private static loadAccountId(Lcom/android/server/wm/WindowManagerService;)Landroid/accounts/Account;
    .registers 3
    .param p0, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 233
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_15

    array-length v1, v0

    if-lez v1, :cond_15

    .line 234
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 236
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method private setImei(Ljava/lang/String;)V
    .registers 3
    .param p1, "imei"    # Ljava/lang/String;

    .line 284
    sput-object p1, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    .line 286
    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 27

    .line 153
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    if-eqz v0, :cond_18f

    .line 154
    iget v2, v1, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    .line 155
    .local v2, "dw":I
    iget v3, v1, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    .line 157
    .local v3, "dh":I
    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    .line 158
    .local v5, "dirty":Landroid/graphics/Rect;
    const/4 v0, 0x0

    move-object v6, v0

    .line 160
    .local v6, "c":Landroid/graphics/Canvas;
    :try_start_13
    iget-object v0, v1, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_19} :catch_1d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_13 .. :try_end_19} :catch_1b

    move-object v6, v0

    .line 163
    :goto_1a
    goto :goto_1f

    .line 162
    :catch_1b
    move-exception v0

    goto :goto_1f

    .line 161
    :catch_1d
    move-exception v0

    goto :goto_1a

    .line 165
    :goto_1f
    if-eqz v6, :cond_188

    .line 167
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .line 170
    .local v7, "radians":D
    const-wide v9, 0x3fe3333333333333L    # 0.6

    int-to-double v11, v2

    mul-double/2addr v9, v11

    double-to-int v0, v9

    .line 171
    .local v0, "x":I
    const-wide v9, 0x3fa999999999999aL    # 0.05

    int-to-double v11, v3

    mul-double/2addr v9, v11

    double-to-int v9, v9

    .line 172
    .local v9, "y":I
    if-le v2, v3, :cond_46

    .line 173
    const-wide v10, 0x3fd3333333333333L    # 0.3

    int-to-double v12, v2

    mul-double/2addr v10, v12

    double-to-int v0, v10

    .line 175
    :cond_46
    sget v10, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    int-to-double v10, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    .line 176
    .local v10, "incDeltx":I
    const/4 v11, -0x1

    sget v12, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    mul-int/2addr v11, v12

    .line 177
    .local v11, "incDelty":I
    div-int/lit8 v12, v2, 0x2

    .line 178
    .local v12, "columnDeltX":I
    const-wide v13, 0x3fc1cac083126e98L    # 0.139

    move-object/from16 v16, v5

    int-to-double v4, v3

    .end local v5    # "dirty":Landroid/graphics/Rect;
    .local v16, "dirty":Landroid/graphics/Rect;
    mul-double/2addr v13, v4

    double-to-int v4, v13

    .line 179
    .local v4, "columnDeltY":I
    const-wide v13, 0x3fceb851eb851eb8L    # 0.24

    move-wide/from16 v17, v7

    int-to-double v7, v3

    .end local v7    # "radians":D
    .local v17, "radians":D
    mul-double/2addr v13, v7

    double-to-int v5, v13

    .line 180
    .local v5, "deltLine":I
    const/16 v7, 0xa

    .line 183
    .local v7, "accountNameLength":I
    const/high16 v8, 0x43a50000    # 330.0f

    div-int/lit8 v13, v2, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v3, 0x2

    int-to-float v14, v14

    invoke-virtual {v6, v8, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 186
    move v8, v0

    const/4 v0, 0x0

    .line 187
    .local v0, "i":I
    .local v8, "x":I
    :goto_78
    const/4 v13, 0x4

    if-ge v0, v13, :cond_176

    .line 189
    iget-object v13, v1, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    if-eqz v13, :cond_ac

    .line 190
    iget-object v13, v1, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    .line 191
    iget-object v13, v1, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    int-to-float v14, v8

    int-to-float v15, v9

    move/from16 v19, v2

    iget-object v2, v1, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    .end local v2    # "dw":I
    .local v19, "dw":I
    invoke-virtual {v6, v13, v14, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v2, :cond_c9

    .line 193
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    sget-object v13, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v7

    mul-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v8, v13

    int-to-float v13, v13

    sub-int v14, v9, v11

    int-to-float v14, v14

    iget-object v15, v1, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c9

    .line 195
    .end local v19    # "dw":I
    .restart local v2    # "dw":I
    :cond_ac
    move/from16 v19, v2

    .end local v2    # "dw":I
    .restart local v19    # "dw":I
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v2, :cond_c9

    .line 196
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    sget-object v13, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v7

    mul-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v8, v13

    int-to-float v13, v13

    sub-int v14, v9, v11

    int-to-float v14, v14

    iget-object v15, v1, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 200
    :cond_c9
    :goto_c9
    iget-object v2, v1, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    if-eqz v2, :cond_f8

    .line 201
    iget-object v2, v1, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    add-int v13, v8, v12

    int-to-float v13, v13

    add-int v14, v9, v4

    int-to-float v14, v14

    iget-object v15, v1, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 202
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v2, :cond_115

    .line 203
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    add-int v13, v8, v12

    sget-object v14, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v7

    mul-int/2addr v14, v10

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v9, v4

    sub-int/2addr v14, v11

    int-to-float v14, v14

    iget-object v15, v1, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_115

    .line 205
    :cond_f8
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v2, :cond_115

    .line 206
    sget-object v2, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    add-int v13, v8, v12

    sget-object v14, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v7

    mul-int/2addr v14, v10

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v9, v4

    sub-int/2addr v14, v11

    int-to-float v14, v14

    iget-object v15, v1, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 210
    :cond_115
    :goto_115
    if-eqz v3, :cond_14d

    if-nez v5, :cond_124

    .line 211
    move/from16 v21, v7

    move/from16 v20, v8

    move/from16 v22, v10

    move/from16 v23, v11

    move-wide/from16 v24, v17

    goto :goto_157

    .line 214
    :cond_124
    int-to-double v13, v8

    move/from16 v21, v7

    move/from16 v20, v8

    int-to-double v7, v3

    .end local v7    # "accountNameLength":I
    .end local v8    # "x":I
    .local v20, "x":I
    .local v21, "accountNameLength":I
    move/from16 v22, v10

    move/from16 v23, v11

    move-wide/from16 v10, v17

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v17

    .end local v11    # "incDelty":I
    .end local v17    # "radians":D
    .local v10, "radians":D
    .local v22, "incDeltx":I
    .local v23, "incDelty":I
    mul-double v7, v7, v17

    div-int v2, v3, v5

    move-wide/from16 v24, v10

    int-to-double v10, v2

    .end local v10    # "radians":D
    .local v24, "radians":D
    div-double/2addr v7, v10

    sub-double/2addr v13, v7

    double-to-int v8, v13

    .line 215
    .end local v20    # "x":I
    .restart local v8    # "x":I
    add-int/2addr v9, v5

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 186
    move/from16 v2, v19

    move/from16 v7, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move-wide/from16 v17, v24

    goto/16 :goto_78

    .line 211
    .end local v21    # "accountNameLength":I
    .end local v22    # "incDeltx":I
    .end local v23    # "incDelty":I
    .end local v24    # "radians":D
    .restart local v7    # "accountNameLength":I
    .local v10, "incDeltx":I
    .restart local v11    # "incDelty":I
    .restart local v17    # "radians":D
    :cond_14d
    move/from16 v21, v7

    move/from16 v20, v8

    move/from16 v22, v10

    move/from16 v23, v11

    move-wide/from16 v24, v17

    .end local v7    # "accountNameLength":I
    .end local v8    # "x":I
    .end local v10    # "incDeltx":I
    .end local v11    # "incDelty":I
    .end local v17    # "radians":D
    .restart local v20    # "x":I
    .restart local v21    # "accountNameLength":I
    .restart local v22    # "incDeltx":I
    .restart local v23    # "incDelty":I
    .restart local v24    # "radians":D
    :goto_157
    iget-object v2, v1, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dh: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "deltLine: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    goto :goto_182

    .line 218
    .end local v19    # "dw":I
    .end local v20    # "x":I
    .end local v21    # "accountNameLength":I
    .end local v22    # "incDeltx":I
    .end local v23    # "incDelty":I
    .end local v24    # "radians":D
    .restart local v2    # "dw":I
    .restart local v7    # "accountNameLength":I
    .restart local v8    # "x":I
    .restart local v10    # "incDeltx":I
    .restart local v11    # "incDelty":I
    .restart local v17    # "radians":D
    :cond_176
    move/from16 v19, v2

    move/from16 v20, v8

    move/from16 v22, v10

    move/from16 v23, v11

    move-wide/from16 v24, v17

    move/from16 v21, v7

    .end local v2    # "dw":I
    .end local v7    # "accountNameLength":I
    .end local v8    # "x":I
    .end local v10    # "incDeltx":I
    .end local v11    # "incDelty":I
    .end local v17    # "radians":D
    .restart local v19    # "dw":I
    .restart local v20    # "x":I
    .restart local v21    # "accountNameLength":I
    .restart local v22    # "incDeltx":I
    .restart local v23    # "incDelty":I
    .restart local v24    # "radians":D
    :goto_182
    iget-object v2, v1, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v6}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .end local v0    # "i":I
    .end local v4    # "columnDeltY":I
    .end local v5    # "deltLine":I
    .end local v9    # "y":I
    .end local v12    # "columnDeltX":I
    .end local v20    # "x":I
    .end local v21    # "accountNameLength":I
    .end local v22    # "incDeltx":I
    .end local v23    # "incDelty":I
    .end local v24    # "radians":D
    goto :goto_18c

    .line 220
    .end local v16    # "dirty":Landroid/graphics/Rect;
    .end local v19    # "dw":I
    .restart local v2    # "dw":I
    .local v5, "dirty":Landroid/graphics/Rect;
    :cond_188
    move/from16 v19, v2

    move-object/from16 v16, v5

    .end local v2    # "dw":I
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v16    # "dirty":Landroid/graphics/Rect;
    .restart local v19    # "dw":I
    :goto_18c
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    .line 222
    .end local v3    # "dh":I
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v16    # "dirty":Landroid/graphics/Rect;
    .end local v19    # "dw":I
    :cond_18f
    return-void
.end method

.method hideWaterMarker()V
    .registers 2

    .line 135
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 136
    return-void
.end method

.method positionSurface(II)V
    .registers 4
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 122
    iget v0, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    .line 123
    :cond_8
    iput p1, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    .line 124
    iput p2, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    .line 125
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    .line 128
    :cond_14
    return-void
.end method

.method showWaterMarker()V
    .registers 2

    .line 131
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 132
    return-void
.end method

.method updateText(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 139
    invoke-static {p1}, Lcom/android/server/wm/MIUIWatermark;->loadAccountId(Lcom/android/server/wm/WindowManagerService;)Landroid/accounts/Account;

    move-result-object v0

    .line 140
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_a

    .line 141
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    .line 144
    :cond_a
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/wm/MIUIWatermark;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 146
    sput-object v1, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    .line 149
    :cond_14
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    .line 150
    return-void
.end method
