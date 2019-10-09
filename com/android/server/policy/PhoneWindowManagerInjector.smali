.class Lcom/android/server/policy/PhoneWindowManagerInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManagerInjector.java"


# static fields
.field static final DEBUG_STARTINGWINDOW:Z = false

.field static final TAG:Ljava/lang/String; = "starting_window"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addStartingWindow(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/CharSequence;)V
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p3, "label"    # Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 45
    move-object/from16 v3, p3

    invoke-static/range {p0 .. p0}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 46
    return-void

    .line 49
    :cond_f
    sget v4, Lmiui/R$attr;->windowTranslucentStatus:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lmiui/util/AttributeResolver;->resolveInt(Landroid/content/Context;II)I

    move-result v4

    .line 51
    .local v4, "translucentStatus":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/internal/R$integer;->window_translucent_status:I

    .line 52
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 53
    .local v6, "globalTranslucentStatus":I
    if-ltz v6, :cond_26

    const/4 v7, 0x2

    if-gt v6, v7, :cond_26

    .line 55
    move v4, v6

    .line 57
    :cond_26
    invoke-static {}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_Window_class$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/internal/variable/Android_View_Window_class$Factory;->get()Lcom/miui/internal/variable/Android_View_Window_class;

    move-result-object v7

    .line 58
    .local v7, "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    invoke-virtual {v7, v2, v4}, Lcom/miui/internal/variable/Android_View_Window_class;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 60
    sget v8, Lmiui/R$attr;->windowActionBar:I

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v8

    if-eqz v8, :cond_134

    .line 61
    sget v8, Lmiui/R$attr;->startingWindowOverlay:I

    invoke-static {v0, v8}, Lmiui/util/AttributeResolver;->resolve(Landroid/content/Context;I)I

    move-result v8

    .line 62
    .local v8, "overlayRes":I
    if-gtz v8, :cond_43

    .line 63
    return-void

    .line 64
    :cond_43
    sget v9, Lcom/miui/internal/R$layout;->starting_window_simple:I

    if-ne v8, v9, :cond_12a

    .line 65
    const v9, 0x11030028

    invoke-virtual {v2, v9}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    .line 71
    const v9, 0x110d0089

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 72
    .local v9, "statusBar":Landroid/view/View;
    if-eqz v9, :cond_76

    .line 73
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 74
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string/jumbo v13, "status_bar_height"

    const-string v14, "dimen"

    const-string v15, "android"

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_76
    const/4 v10, 0x0

    sget-object v11, Lmiui/R$styleable;->ActionBar:[I

    const v12, 0x10102ce

    invoke-virtual {v0, v10, v11, v12, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 80
    .local v10, "a":Landroid/content/res/TypedArray;
    sget v11, Lmiui/R$styleable;->ActionBar_android_titleTextStyle:I

    invoke-virtual {v10, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 82
    .local v11, "titleStyleRes":I
    sget v12, Lcom/miui/internal/R$styleable;->ActionBar_titleCenter:I

    invoke-virtual {v10, v12, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 84
    .local v12, "titleCenter":Z
    sget v13, Lmiui/R$styleable;->ActionBar_android_displayOptions:I

    invoke-virtual {v10, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 87
    .local v13, "displayOptions":I
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    const v14, 0x110d0088

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 90
    .local v14, "actionBar":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-static {v15}, Lmiui/util/DrawableUtil;->isPlaceholder(Landroid/graphics/drawable/Drawable;)Z

    move-result v15

    if-eqz v15, :cond_b4

    .line 91
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    sget v5, Lmiui/R$attr;->colorPrimary:I

    invoke-static {v0, v5}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v15, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_b4
    const v5, 0x110d008b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 96
    .local v5, "titleLayout":Landroid/view/View;
    const v15, 0x110d0013

    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 97
    .local v15, "titleView":Landroid/widget/TextView;
    const v1, 0x110d008a

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .local v1, "upView":Landroid/widget/ImageView;
    and-int/lit8 v16, v13, 0x8

    if-nez v16, :cond_db

    .line 101
    move/from16 v17, v4

    const/4 v4, 0x4

    .line 101
    .end local v4    # "translucentStatus":I
    .local v17, "translucentStatus":I
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    return-void

    .line 107
    .end local v17    # "translucentStatus":I
    .restart local v4    # "translucentStatus":I
    :cond_db
    move/from16 v17, v4

    .line 108
    .end local v4    # "translucentStatus":I
    .restart local v17    # "translucentStatus":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    .local v4, "titleLP":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v12, :cond_103

    and-int/lit8 v16, v13, 0x2

    if-nez v16, :cond_103

    .line 111
    move/from16 v18, v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 112
    .end local v6    # "globalTranslucentStatus":I
    .local v18, "globalTranslucentStatus":I
    move-object/from16 v19, v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 111
    .end local v7    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .local v19, "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    .end local v9    # "statusBar":Landroid/view/View;
    .local v20, "statusBar":Landroid/view/View;
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_111

    .line 116
    .end local v18    # "globalTranslucentStatus":I
    .end local v19    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .end local v20    # "statusBar":Landroid/view/View;
    .restart local v6    # "globalTranslucentStatus":I
    .restart local v7    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .restart local v9    # "statusBar":Landroid/view/View;
    :cond_103
    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    const/4 v9, 0x0

    .line 116
    .end local v6    # "globalTranslucentStatus":I
    .end local v7    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .end local v9    # "statusBar":Landroid/view/View;
    .restart local v18    # "globalTranslucentStatus":I
    .restart local v19    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .restart local v20    # "statusBar":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 118
    :goto_111
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    and-int/lit8 v6, v13, 0x4

    if-eqz v6, :cond_11a

    move v6, v9

    goto :goto_11c

    :cond_11a
    const/16 v6, 0x8

    :goto_11c
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    if-eqz v11, :cond_124

    .line 124
    invoke-virtual {v15, v0, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 128
    :cond_124
    if-eqz v3, :cond_13a

    .line 129
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v1    # "upView":Landroid/widget/ImageView;
    .end local v4    # "titleLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "titleLayout":Landroid/view/View;
    .end local v8    # "overlayRes":I
    .end local v10    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "titleStyleRes":I
    .end local v12    # "titleCenter":Z
    .end local v13    # "displayOptions":I
    .end local v14    # "actionBar":Landroid/view/View;
    .end local v15    # "titleView":Landroid/widget/TextView;
    .end local v20    # "statusBar":Landroid/view/View;
    goto :goto_13a

    .line 67
    .end local v17    # "translucentStatus":I
    .end local v18    # "globalTranslucentStatus":I
    .end local v19    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .local v4, "translucentStatus":I
    .restart local v6    # "globalTranslucentStatus":I
    .restart local v7    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .restart local v8    # "overlayRes":I
    :cond_12a
    move/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v7

    .line 67
    .end local v4    # "translucentStatus":I
    .end local v6    # "globalTranslucentStatus":I
    .end local v7    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .restart local v17    # "translucentStatus":I
    .restart local v18    # "globalTranslucentStatus":I
    .restart local v19    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    invoke-virtual {v2, v8}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    .line 68
    return-void

    .line 131
    .end local v8    # "overlayRes":I
    .end local v17    # "translucentStatus":I
    .end local v18    # "globalTranslucentStatus":I
    .end local v19    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .restart local v4    # "translucentStatus":I
    .restart local v6    # "globalTranslucentStatus":I
    .restart local v7    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    :cond_134
    move/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v7

    .line 131
    .end local v4    # "translucentStatus":I
    .end local v6    # "globalTranslucentStatus":I
    .end local v7    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    .restart local v17    # "translucentStatus":I
    .restart local v18    # "globalTranslucentStatus":I
    .restart local v19    # "windowWrapper":Lcom/miui/internal/variable/Android_View_Window_class;
    :cond_13a
    :goto_13a
    return-void
.end method

.method static performReleaseHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .registers 4
    .param p0, "manager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 42
    .local v0, "down":Z
    :goto_9
    return-void
.end method

.method static setDefaultBackgroundDrawable(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 7
    .param p0, "win"    # Lcom/android/internal/policy/PhoneWindow;

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 137
    .local v2, "windowBackgroundId":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 139
    .local v3, "windowIsTranslucent":Z
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 142
    .local v1, "windowDisableStarting":Z
    if-eqz v2, :cond_1b

    if-nez v3, :cond_1b

    if-eqz v1, :cond_24

    .line 143
    :cond_1b
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_24
    return-void
.end method
