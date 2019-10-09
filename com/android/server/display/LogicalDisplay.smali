.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorMode:I

.field private mRequestedModeId:I

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 102
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 103
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 104
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 105
    return-void
.end method

.method private static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "deviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 303
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 304
    .local v0, "maskCutout":Z
    :goto_a
    if-eqz v0, :cond_43

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_43

    .line 308
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 309
    .local v2, "insets":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_21

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 310
    :cond_21
    iget v3, v2, Landroid/graphics/Rect;->right:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2c

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 311
    :cond_2c
    iget v3, v2, Landroid/graphics/Rect;->top:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_37

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 312
    :cond_37
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_42

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 313
    :cond_42
    return-object v2

    .line 316
    .end local v2    # "insets":Landroid/graphics/Rect;
    :cond_43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method


# virtual methods
.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .registers 21
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p3, "isBlanked"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 341
    if-eqz p3, :cond_a

    const/4 v4, -0x1

    goto :goto_c

    :cond_a
    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_c
    invoke-virtual {v2, v1, v4}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 344
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1c

    .line 345
    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    invoke-virtual {v2, v4, v6}, Lcom/android/server/display/DisplayDevice;->requestDisplayModesLocked(II)V

    goto :goto_1f

    .line 348
    :cond_1c
    invoke-virtual {v2, v5, v5}, Lcom/android/server/display/DisplayDevice;->requestDisplayModesLocked(II)V

    .line 352
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 353
    .local v4, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 358
    .local v6, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v8, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 363
    const/4 v7, 0x0

    .line 364
    .local v7, "orientation":I
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_39

    .line 365
    iget v7, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 369
    :cond_39
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v8, v7

    rem-int/lit8 v8, v8, 0x4

    .line 376
    .end local v7    # "orientation":I
    .local v8, "orientation":I
    const/4 v7, 0x1

    if-eq v8, v7, :cond_46

    const/4 v9, 0x3

    if-ne v8, v9, :cond_45

    goto :goto_46

    :cond_45
    goto :goto_47

    :cond_46
    :goto_46
    move v5, v7

    .line 378
    .local v5, "rotated":Z
    :goto_47
    if-eqz v5, :cond_4c

    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_4e

    :cond_4c
    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 379
    .local v7, "physWidth":I
    :goto_4e
    if-eqz v5, :cond_53

    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_55

    :cond_53
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 381
    .local v9, "physHeight":I
    :goto_55
    invoke-static {v6}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v10

    .line 382
    .local v10, "maskingInsets":Landroid/graphics/Rect;
    invoke-static {v10, v8}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 384
    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v7, v11

    .line 385
    iget v11, v10, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 395
    iget v11, v4, Landroid/view/DisplayInfo;->flags:I

    const/high16 v12, 0x40000000    # 2.0f

    and-int/2addr v11, v12

    if-eqz v11, :cond_74

    .line 396
    iget v11, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 397
    .local v11, "displayRectWidth":I
    iget v12, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .local v12, "displayRectHeight":I
    :goto_73
    goto :goto_8b

    .line 398
    .end local v11    # "displayRectWidth":I
    .end local v12    # "displayRectHeight":I
    :cond_74
    iget v11, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v11, v7

    iget v12, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v9

    if-ge v11, v12, :cond_84

    .line 401
    move v11, v7

    .line 402
    .restart local v11    # "displayRectWidth":I
    iget v12, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v12, v7

    iget v13, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/2addr v12, v13

    goto :goto_73

    .line 405
    .end local v11    # "displayRectWidth":I
    :cond_84
    iget v11, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v11, v9

    iget v12, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/2addr v11, v12

    .line 406
    .restart local v11    # "displayRectWidth":I
    move v12, v9

    .line 408
    .restart local v12    # "displayRectHeight":I
    :goto_8b
    sub-int v13, v9, v12

    div-int/lit8 v13, v13, 0x2

    .line 409
    .local v13, "displayRectTop":I
    sub-int v14, v7, v11

    div-int/lit8 v14, v14, 0x2

    .line 410
    .local v14, "displayRectLeft":I
    iget-object v15, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v3, v14, v11

    move-object/from16 v16, v4

    add-int v4, v13, v12

    .end local v4    # "displayInfo":Landroid/view/DisplayInfo;
    .local v16, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v15, v14, v13, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 414
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v15, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 416
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    add-int/2addr v4, v15

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 417
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    add-int/2addr v4, v15

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 418
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    add-int/2addr v4, v15

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 419
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v15, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    add-int/2addr v4, v15

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 420
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v8, v3, v4}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 421
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_af

    .line 502
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_b2

    :cond_af
    const-string/jumbo v1, "null"

    :goto_b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public getDisplayIdLocked()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_9e

    .line 134
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 135
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_9e

    .line 137
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 138
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 139
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 140
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 141
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 142
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 143
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 144
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 145
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 146
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 147
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 148
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v1, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 149
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 150
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 152
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 153
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 156
    :cond_9e
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .registers 2

    .line 476
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 2

    .line 483
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .registers 3
    .param p1, "outInfo"    # Landroid/view/DisplayInfo;

    .line 163
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 164
    return-void
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .registers 2

    .line 469
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public getRequestedModeIdLocked()I
    .registers 2

    .line 457
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    return v0
.end method

.method public hasContentLocked()Z
    .registers 2

    .line 434
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isValidLocked()Z
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 174
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_22

    .line 175
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_12

    .line 176
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 177
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 178
    return v0

    .line 180
    :cond_12
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 181
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 182
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 183
    return v0

    .line 185
    :cond_22
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_2b

    .line 186
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 187
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 188
    return v0

    .line 190
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 490
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 491
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 492
    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2
    .param p1, "hasContent"    # Z

    .line 443
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 444
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 464
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 465
    return-void
.end method

.method public setRequestedModeIdLocked(I)V
    .registers 2
    .param p1, "modeId"    # I

    .line 450
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedModeId:I

    .line 451
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_5

    .line 215
    return-void

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 220
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 221
    return-void

    .line 229
    :cond_11
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 230
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_156

    .line 231
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v3, v2, Landroid/view/DisplayInfo;->layerStack:I

    .line 232
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    .line 233
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    .line 234
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 236
    :cond_38
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_46

    .line 237
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 239
    :cond_46
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_58

    .line 240
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 242
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 244
    :cond_58
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_62

    .line 245
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 247
    :cond_62
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_70

    .line 248
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 250
    :cond_70
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7e

    .line 251
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 253
    :cond_7e
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_8c

    .line 254
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 256
    :cond_8c
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 257
    .local v2, "maskingInsets":Landroid/graphics/Rect;
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 258
    .local v5, "maskedWidth":I
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 260
    .local v6, "maskedHeight":I
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v8, v7, Landroid/view/DisplayInfo;->type:I

    .line 261
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 262
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 263
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 264
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->appWidth:I

    .line 265
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->appHeight:I

    .line 266
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 267
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 268
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v7, Landroid/view/DisplayInfo;->rotation:I

    .line 269
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->modeId:I

    .line 270
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 271
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/Display$Mode;

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 273
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v8, v7, Landroid/view/DisplayInfo;->colorMode:I

    .line 274
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 277
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v8, v7, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 278
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v8, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 279
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 280
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 281
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 282
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 283
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v8, v7, Landroid/view/DisplayInfo;->state:I

    .line 284
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 285
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 286
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 287
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 288
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v8, v7, Landroid/view/DisplayInfo;->ownerUid:I

    .line 289
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 290
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_148

    move v3, v4

    nop

    .line 292
    .local v3, "maskCutout":Z
    :cond_148
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_14e

    move-object v7, v1

    goto :goto_150

    :cond_14e
    iget-object v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_150
    iput-object v7, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 294
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 295
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 297
    .end local v2    # "maskingInsets":Landroid/graphics/Rect;
    .end local v3    # "maskCutout":Z
    .end local v5    # "maskedWidth":I
    .end local v6    # "maskedHeight":I
    :cond_156
    return-void
.end method
