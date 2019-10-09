.class final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsItem"
.end annotation


# instance fields
.field private mBaseCodePath:Ljava/lang/String;

.field private mCache:Landroid/content/om/OverlayInfo;

.field private mCategory:Ljava/lang/String;

.field private mIsEnabled:Z

.field private mIsStatic:Z

.field private final mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mState:I

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;
    .param p5, "state"    # I
    .param p6, "isEnabled"    # Z
    .param p7, "isStatic"    # Z
    .param p8, "priority"    # I
    .param p9, "category"    # Ljava/lang/String;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    .line 451
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 452
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 453
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 454
    iput p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 455
    if-nez p6, :cond_14

    if-eqz p7, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 456
    iput-object p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 458
    iput-boolean p7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    .line 459
    iput p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 460
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "baseCodePath"    # Ljava/lang/String;
    .param p5, "isStatic"    # Z
    .param p6, "priority"    # I
    .param p7, "category"    # Ljava/lang/String;

    .line 465
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V

    .line 467
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # Z

    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isStatic()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # I

    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 434
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I

    move-result v0

    return v0
.end method

.method private getBaseCodePath()Ljava/lang/String;
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method private getOverlayInfo()Landroid/content/om/OverlayInfo;
    .registers 11

    .line 530
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_1c

    .line 531
    new-instance v0, Landroid/content/om/OverlayInfo;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    iget v7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    iget v8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    iget-boolean v9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 534
    :cond_1c
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-object v0
.end method

.method private getPriority()I
    .registers 2

    .line 546
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method private getState()I
    .registers 2

    .line 491
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method private getTargetPackageName()Ljava/lang/String;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private getUserId()I
    .registers 2

    .line 474
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method private invalidateCache()V
    .registers 2

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 539
    return-void
.end method

.method private isEnabled()Z
    .registers 2

    .line 504
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method private isStatic()Z
    .registers 2

    .line 542
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return v0
.end method

.method private setBaseCodePath(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 483
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 484
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 485
    const/4 v0, 0x1

    return v0

    .line 487
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private setCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 522
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 523
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 524
    const/4 v0, 0x1

    return v0

    .line 526
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private setEnabled(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 508
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 509
    return v1

    .line 512
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    if-eq v0, p1, :cond_11

    .line 513
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 514
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 515
    const/4 v0, 0x1

    return v0

    .line 517
    :cond_11
    return v1
.end method

.method private setState(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 495
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    if-eq v0, p1, :cond_b

    .line 496
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 497
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 498
    const/4 v0, 0x1

    return v0

    .line 500
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
