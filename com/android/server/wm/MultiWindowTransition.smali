.class public Lcom/android/server/wm/MultiWindowTransition;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# static fields
.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x12c

.field private static final INVALID_CLIP_RECT:Landroid/graphics/Rect;

.field private static final MULTI_WINDOW_DEFAULT_OFFSET:I = 0x1

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN_COMPATIBLE:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP_COMPATIBLE:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN_COMPATIBLE:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP_COMPATIBLE:I = 0x1

.field public static final TRANSIT_MULTI_WINDOW_ENTER_FROM_OTHER:I = 0xca

.field public static final TRANSIT_MULTI_WINDOW_ENTER_FROM_TOP:I = 0xc9

.field public static final TRANSIT_MULTI_WINDOW_EXIT:I = 0xcb


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/server/wm/MultiWindowTransition;->INVALID_CLIP_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustCropToStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFF)V
    .registers 12
    .param p0, "targetRect"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "surfaceX"    # I
    .param p3, "surfaceY"    # I
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F

    .line 294
    if-eqz p0, :cond_9f

    if-nez p1, :cond_6

    goto/16 :goto_9f

    .line 298
    :cond_6
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 300
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    .local v0, "visibleRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_99

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_99

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_99

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_99

    .line 305
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_57

    .line 306
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, p4

    float-to-int v1, v1

    .line 307
    .local v1, "deltaLeft":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 308
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 311
    .end local v1    # "deltaLeft":I
    :cond_57
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_6e

    .line 312
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 313
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 316
    :cond_6e
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_7c

    .line 317
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 318
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 321
    :cond_7c
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_93

    .line 322
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 323
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p5

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 325
    :cond_93
    neg-int v1, p2

    neg-int v2, p3

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_9e

    .line 327
    :cond_99
    sget-object v1, Lcom/android/server/wm/MultiWindowTransition;->INVALID_CLIP_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 329
    :goto_9e
    return-void

    .line 295
    .end local v0    # "visibleRect":Landroid/graphics/Rect;
    :cond_9f
    :goto_9f
    return-void
.end method

.method static createAspectScaledThumbnailEnterExitAnimationCompatibleLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;IIIII)Landroid/view/animation/Animation;
    .registers 40
    .param p0, "thumbTransitState"    # I
    .param p1, "orientation"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "transit"    # I
    .param p5, "thumbWidthI"    # I
    .param p6, "thumbHeightI"    # I
    .param p7, "thumbStartX"    # I
    .param p8, "thumbStartY"    # I

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "a":Landroid/view/animation/Animation;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 105
    .local v11, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 106
    .local v12, "appHeight":I
    if-lez p5, :cond_14

    move/from16 v6, p5

    goto :goto_15

    :cond_14
    const/4 v6, 0x1

    :goto_15
    move v14, v6

    .line 107
    .local v14, "thumbWidth":I
    if-lez p6, :cond_1b

    move/from16 v6, p6

    goto :goto_1c

    :cond_1b
    const/4 v6, 0x1

    :goto_1c
    move v10, v6

    .line 109
    .local v10, "thumbHeight":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v6

    .line 110
    .local v8, "tmpFromClipRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v6

    .line 112
    .local v9, "tmpToClipRect":Landroid/graphics/Rect;
    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    const/4 v6, 0x0

    invoke-virtual {v8, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 117
    invoke-virtual {v9, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 119
    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 121
    const/16 v6, 0xe

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_162

    .line 186
    move-object/from16 v16, v4

    move/from16 v25, v10

    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "thumbHeight":I
    .local v16, "a":Landroid/view/animation/Animation;
    .local v25, "thumbHeight":I
    goto/16 :goto_145

    .line 176
    .end local v16    # "a":Landroid/view/animation/Animation;
    .end local v25    # "thumbHeight":I
    .restart local v4    # "a":Landroid/view/animation/Animation;
    .restart local v10    # "thumbHeight":I
    :pswitch_4b
    if-ne v3, v6, :cond_54

    .line 177
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v7, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v6

    goto :goto_63

    .line 179
    :cond_54
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v6

    .line 181
    goto :goto_63

    .line 168
    :pswitch_5b
    if-ne v3, v6, :cond_67

    .line 169
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v6

    .line 186
    .end local v10    # "thumbHeight":I
    .restart local v25    # "thumbHeight":I
    :goto_63
    move/from16 v25, v10

    goto/16 :goto_145

    .line 171
    .end local v25    # "thumbHeight":I
    .restart local v10    # "thumbHeight":I
    :cond_67
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v6

    .line 173
    goto :goto_63

    .line 124
    :pswitch_6e
    if-nez p0, :cond_72

    const/4 v15, 0x1

    goto :goto_73

    :cond_72
    const/4 v15, 0x0

    :goto_73
    move v6, v15

    .line 126
    .local v6, "scaleUp":Z
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 128
    .local v5, "set":Landroid/view/animation/AnimationSet;
    int-to-float v7, v14

    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v11, v0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float v0, v7, v0

    .line 130
    .local v0, "scaleX":F
    int-to-float v3, v10

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v12, v7

    move-object/from16 v16, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .end local v4    # "a":Landroid/view/animation/Animation;
    .restart local v16    # "a":Landroid/view/animation/Animation;
    sub-int/2addr v7, v4

    int-to-float v4, v7

    div-float/2addr v3, v4

    .line 133
    .local v3, "scaleY":F
    int-to-float v4, v10

    div-float/2addr v4, v3

    float-to-int v4, v4

    .line 134
    .local v4, "unscaledThumbHeight":I
    iget v7, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    iput v7, v8, Landroid/graphics/Rect;->bottom:I

    .line 136
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    .line 137
    if-eqz v6, :cond_a0

    move/from16 v18, v0

    goto :goto_a2

    :cond_a0
    const/high16 v18, 0x3f800000    # 1.0f

    :goto_a2
    if-eqz v6, :cond_a7

    .line 138
    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_a9

    :cond_a7
    move/from16 v19, v0

    :goto_a9
    if-eqz v6, :cond_ae

    move/from16 v20, v3

    goto :goto_b0

    :cond_ae
    const/high16 v20, 0x3f800000    # 1.0f

    :goto_b0
    if-eqz v6, :cond_b5

    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_b7

    :cond_b5
    move/from16 v21, v3

    :goto_b7
    move/from16 v24, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    .end local v4    # "unscaledThumbHeight":I
    .local v24, "unscaledThumbHeight":I
    int-to-float v4, v4

    move/from16 v25, v10

    int-to-float v10, v11

    .end local v10    # "thumbHeight":I
    .restart local v25    # "thumbHeight":I
    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v10, v15

    add-float/2addr v4, v10

    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    add-float v22, v4, v10

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v10, v12

    div-float/2addr v10, v15

    add-float/2addr v4, v10

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float v23, v4, v10

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v23}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v4, v7

    .line 142
    .local v4, "scaleAnim":Landroid/view/animation/Animation;
    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int v7, p7, v7

    int-to-float v7, v7

    .line 143
    .local v7, "targetX":F
    int-to-float v10, v11

    div-float/2addr v10, v15

    int-to-float v13, v11

    div-float/2addr v13, v15

    mul-float/2addr v13, v0

    sub-float/2addr v10, v13

    .line 144
    .local v10, "x":F
    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v13, p8, v13

    int-to-float v13, v13

    .line 145
    .local v13, "targetY":F
    move/from16 v26, v0

    int-to-float v0, v12

    .end local v0    # "scaleX":F
    .local v26, "scaleX":F
    div-float/2addr v0, v15

    int-to-float v1, v12

    div-float/2addr v1, v15

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 147
    .local v0, "y":F
    sub-float v1, v7, v10

    .line 148
    .local v1, "startX":F
    sub-float v15, v13, v0

    .line 150
    .local v15, "startY":F
    if-eqz v6, :cond_ff

    .line 151
    move/from16 v27, v0

    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    .end local v0    # "y":F
    .local v27, "y":F
    invoke-direct {v0, v8, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_106

    .line 152
    .end local v27    # "y":F
    .restart local v0    # "y":F
    :cond_ff
    move/from16 v27, v0

    .end local v0    # "y":F
    .restart local v27    # "y":F
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v0, v9, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 154
    .local v0, "clipAnim":Landroid/view/animation/Animation;
    :goto_106
    if-eqz v6, :cond_11a

    .line 155
    move/from16 v28, v3

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    .end local v3    # "scaleY":F
    .local v28, "scaleY":F
    move/from16 v29, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .end local v6    # "scaleUp":Z
    .local v29, "scaleUp":Z
    int-to-float v6, v6

    sub-float v6, v15, v6

    move/from16 v30, v7

    const/4 v7, 0x0

    invoke-direct {v3, v1, v7, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .end local v7    # "targetX":F
    .local v30, "targetX":F
    goto :goto_12b

    .line 156
    .end local v28    # "scaleY":F
    .end local v29    # "scaleUp":Z
    .end local v30    # "targetX":F
    .restart local v3    # "scaleY":F
    .restart local v6    # "scaleUp":Z
    .restart local v7    # "targetX":F
    :cond_11a
    move/from16 v28, v3

    move/from16 v29, v6

    move/from16 v30, v7

    const/4 v7, 0x0

    .end local v3    # "scaleY":F
    .end local v6    # "scaleUp":Z
    .end local v7    # "targetX":F
    .restart local v28    # "scaleY":F
    .restart local v29    # "scaleUp":Z
    .restart local v30    # "targetX":F
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v6, v15, v6

    invoke-direct {v3, v7, v1, v7, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 158
    .local v3, "translateAnim":Landroid/view/animation/Animation;
    :goto_12b
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eq v6, v7, :cond_13b

    .line 160
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_13b
    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 163
    move-object v6, v5

    .line 164
    .end local v16    # "a":Landroid/view/animation/Animation;
    .local v6, "a":Landroid/view/animation/Animation;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 165
    nop

    .line 186
    move-object v4, v6

    .end local v0    # "clipAnim":Landroid/view/animation/Animation;
    .end local v1    # "startX":F
    .end local v3    # "translateAnim":Landroid/view/animation/Animation;
    .end local v5    # "set":Landroid/view/animation/AnimationSet;
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v10    # "x":F
    .end local v13    # "targetY":F
    .end local v15    # "startY":F
    .end local v24    # "unscaledThumbHeight":I
    .end local v26    # "scaleX":F
    .end local v27    # "y":F
    .end local v28    # "scaleY":F
    .end local v29    # "scaleUp":Z
    .end local v30    # "targetX":F
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_145
    const-wide/16 v0, 0x150

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v10, v3, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v5, v4

    move v6, v11

    move v7, v12

    move-object v3, v8

    move-object v13, v9

    move-wide v8, v0

    .end local v8    # "tmpFromClipRect":Landroid/graphics/Rect;
    .end local v9    # "tmpToClipRect":Landroid/graphics/Rect;
    .local v3, "tmpFromClipRect":Landroid/graphics/Rect;
    .local v13, "tmpToClipRect":Landroid/graphics/Rect;
    move/from16 v0, v25

    .end local v25    # "thumbHeight":I
    .local v0, "thumbHeight":I
    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/MultiWindowTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_5b
        :pswitch_4b
        :pswitch_6e
    .end packed-switch
.end method

.method static getThumbnailTransitionState(ZZ)I
    .registers 3
    .param p0, "enter"    # Z
    .param p1, "scaleUp"    # Z

    .line 191
    if-eqz p0, :cond_8

    .line 192
    if-eqz p1, :cond_6

    .line 193
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_6
    const/4 v0, 0x2

    return v0

    .line 198
    :cond_8
    if-eqz p1, :cond_c

    .line 199
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_c
    const/4 v0, 0x3

    return v0
.end method

.method static isMultiWindowAppTransition(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 89
    const/16 v0, 0xc9

    if-eq p0, v0, :cond_f

    const/16 v0, 0xca

    if-eq p0, v0, :cond_f

    const/16 v0, 0xcb

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static loadClipRevealAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 27
    .param p0, "containingFrame"    # Landroid/graphics/Rect;
    .param p1, "positionRect"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    .line 233
    move-object/from16 v1, p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 234
    .local v2, "clipRevealStartX":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 235
    .local v3, "clipRevealStartY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 236
    .local v4, "clipRevealStartWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 237
    .local v5, "clipRevealStartHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 238
    .local v15, "appWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 240
    .local v14, "appHeight":I
    const/4 v6, 0x0

    .line 242
    .local v6, "translationY":I
    div-int/lit8 v16, v4, 0x2

    .line 243
    .local v16, "halfWidth":I
    div-int/lit8 v17, v5, 0x2

    .line 244
    .local v17, "halfHeight":I
    add-int v18, v2, v16

    .line 245
    .local v18, "centerX":I
    add-int v19, v3, v17

    .line 246
    .local v19, "centerY":I
    sub-int v7, v18, v16

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int v20, v7, v8

    .line 247
    .local v20, "clipStartX":I
    sub-int v7, v19, v17

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 249
    .local v7, "clipStartY":I
    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v19, v17

    if-le v8, v9, :cond_39

    .line 250
    sub-int v8, v19, v17

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v8, v9

    .line 251
    const/4 v7, 0x0

    .line 254
    .end local v6    # "translationY":I
    .end local v7    # "clipStartY":I
    .local v13, "translationY":I
    .local v21, "clipStartY":I
    :cond_39
    move v13, v6

    move/from16 v21, v7

    new-instance v22, Landroid/view/animation/ClipRectAnimation;

    add-int v9, v20, v4

    add-int v10, v21, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, v22

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v23, v13

    move v13, v15

    .end local v13    # "translationY":I
    .local v23, "translationY":I
    move/from16 v24, v14

    .end local v14    # "appHeight":I
    .local v24, "appHeight":I
    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    .line 258
    .local v6, "clipAnim":Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 259
    .local v7, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 260
    const/4 v9, 0x0

    move/from16 v10, v23

    if-eqz v10, :cond_69

    .line 261
    .end local v23    # "translationY":I
    .local v10, "translationY":I
    new-instance v11, Landroid/view/animation/TranslateYAnimation;

    int-to-float v12, v10

    invoke-direct {v11, v12, v9}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    .line 262
    .local v11, "translate":Landroid/view/animation/TranslateYAnimation;
    invoke-virtual {v7, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 265
    .end local v11    # "translate":Landroid/view/animation/TranslateYAnimation;
    :cond_69
    const-wide/16 v11, 0x12c

    invoke-virtual {v7, v11, v12}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 266
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 267
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v9, v11, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 268
    move/from16 v8, v24

    invoke-virtual {v7, v15, v8, v15, v8}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 270
    .end local v24    # "appHeight":I
    .local v8, "appHeight":I
    return-object v7
.end method

.method static loadMultiWindowAnimation(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 13
    .param p0, "transit"    # I
    .param p1, "displayHeight"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "positionRect"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_53

    if-eqz p3, :cond_53

    .line 43
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 44
    .local v1, "top":I
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 46
    .local v2, "bottom":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_11

    if-ge v2, p1, :cond_11

    move v5, v4

    goto :goto_12

    :cond_11
    move v5, v3

    .line 47
    .local v5, "isTopWin":Z
    :goto_12
    if-lez v1, :cond_18

    if-ne v2, p1, :cond_18

    move v6, v4

    goto :goto_19

    :cond_18
    move v6, v3

    .line 49
    .local v6, "isBottomWin":Z
    :goto_19
    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_54

    .end local v1    # "top":I
    .end local v2    # "bottom":I
    .end local v5    # "isTopWin":Z
    .end local v6    # "isBottomWin":Z
    goto :goto_53

    .line 71
    .restart local v1    # "top":I
    .restart local v2    # "bottom":I
    .restart local v5    # "isTopWin":Z
    .restart local v6    # "isBottomWin":Z
    :pswitch_1e
    if-nez p4, :cond_53

    .line 72
    if-eqz v5, :cond_27

    .line 73
    invoke-static {v3, p2}, Lcom/android/server/wm/MultiWindowTransition;->loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_53

    .line 74
    :cond_27
    if-eqz v6, :cond_53

    .line 75
    sub-int v4, v2, v1

    int-to-float v4, v4

    invoke-static {v3, v7, v4}, Lcom/android/server/wm/MultiWindowTransition;->loadTranslateYAnimation(ZFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_53

    .line 61
    :pswitch_31
    if-eqz p4, :cond_53

    .line 62
    if-eqz v5, :cond_3a

    .line 63
    invoke-static {v4, p2}, Lcom/android/server/wm/MultiWindowTransition;->loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_53

    .line 64
    :cond_3a
    if-eqz v6, :cond_53

    .line 65
    invoke-static {p2, p3}, Lcom/android/server/wm/MultiWindowTransition;->loadClipRevealAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_53

    .line 51
    :pswitch_41
    if-eqz p4, :cond_53

    .line 52
    if-eqz v5, :cond_4a

    .line 53
    invoke-static {v4, p2}, Lcom/android/server/wm/MultiWindowTransition;->loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_53

    .line 54
    :cond_4a
    if-eqz v6, :cond_53

    .line 55
    sub-int v3, v2, v1

    int-to-float v3, v3

    invoke-static {v4, v3, v7}, Lcom/android/server/wm/MultiWindowTransition;->loadTranslateYAnimation(ZFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 85
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    .end local v5    # "isTopWin":Z
    .end local v6    # "isBottomWin":Z
    :cond_53
    :goto_53
    return-object v0

    :pswitch_data_54
    .packed-switch 0xc9
        :pswitch_41
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method

.method private static loadTopWindowAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 14
    .param p0, "enter"    # Z
    .param p1, "containingFrame"    # Landroid/graphics/Rect;

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 217
    .local v9, "height":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 219
    .local v10, "width":I
    if-eqz p0, :cond_19

    .line 220
    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v11

    move v3, v10

    move v7, v10

    move v8, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    goto :goto_27

    .line 221
    :cond_19
    new-instance v11, Landroid/view/animation/ClipRectAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, v11

    move v3, v10

    move v4, v9

    move v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    :goto_27
    move-object v0, v11

    .line 224
    .local v0, "a":Landroid/view/animation/ClipRectAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    .line 225
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p0, :cond_3b

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v2, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_43

    .line 226
    :cond_3b
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 225
    :goto_43
    invoke-virtual {v0, v3}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ClipRectAnimation;->setZAdjustment(I)V

    .line 229
    return-object v0
.end method

.method private static loadTranslateYAnimation(ZFF)Landroid/view/animation/Animation;
    .registers 8
    .param p0, "enter"    # Z
    .param p1, "fromY"    # F
    .param p2, "toY"    # F

    .line 207
    new-instance v0, Landroid/view/animation/TranslateYAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    .line 208
    .local v0, "animation":Landroid/view/animation/TranslateYAnimation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p0, :cond_13

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v2, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_1b

    .line 209
    :cond_13
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 208
    :goto_1b
    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 211
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setZAdjustment(I)V

    .line 212
    return-object v0
.end method

.method static needKeepTransition(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 95
    const/4 v0, 0x6

    if-eq p0, v0, :cond_f

    const/4 v0, 0x7

    if-eq p0, v0, :cond_f

    .line 97
    invoke-static {p0}, Lcom/android/server/wm/MultiWindowTransition;->isMultiWindowAppTransition(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 95
    :goto_10
    return v0
.end method

.method private static prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 8
    .param p0, "a"    # Landroid/view/animation/Animation;
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 275
    if-nez p0, :cond_4

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_d

    .line 280
    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    :cond_d
    if-eqz p5, :cond_12

    .line 284
    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 287
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 288
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 289
    return-object p0
.end method
