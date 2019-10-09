.class public Lcom/android/server/wm/WindowStateInjector;
.super Ljava/lang/Object;
.source "WindowStateInjector.java"


# static fields
.field static DISABLE_SAVE_SURFACE:Z = false

.field private static final LIST_ABOUT_MODIFY_INSETS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_ABOUT_NO_NEED_MODIFY_INSETS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static mHadSavedScale:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    const-string/jumbo v0, "persist.sys.disableSaveSurface"

    .line 26
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowStateInjector;->DISABLE_SAVE_SURFACE:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowStateInjector;->LIST_ABOUT_NO_NEED_MODIFY_INSETS:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowStateInjector;->LIST_ABOUT_MODIFY_INSETS:Ljava/util/ArrayList;

    .line 34
    sput-boolean v1, Lcom/android/server/wm/WindowStateInjector;->mHadSavedScale:Z

    .line 37
    sget-object v0, Lcom/android/server/wm/WindowStateInjector;->LIST_ABOUT_NO_NEED_MODIFY_INSETS:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/wm/WindowStateInjector;->LIST_ABOUT_MODIFY_INSETS:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjuestFrameAndInsets(Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 92
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    .line 93
    .local v1, "isChildWindow":Z
    if-eqz v0, :cond_55

    .line 95
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 96
    .local v2, "rect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_30

    .line 97
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 98
    .local v3, "relativeLeft":I
    int-to-float v4, v3

    iget v5, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v4, v3, v4

    .line 99
    .local v4, "weightOffset":I
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 100
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 101
    const/4 v1, 0x1

    .line 104
    .end local v3    # "relativeLeft":I
    .end local v4    # "weightOffset":I
    :cond_30
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_55

    .line 105
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 106
    .local v3, "relativeTop":I
    int-to-float v4, v3

    iget v5, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v4, v3, v4

    .line 107
    .local v4, "heightOffset":I
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 108
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 109
    const/4 v1, 0x1

    .line 113
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "relativeTop":I
    .end local v4    # "heightOffset":I
    :cond_55
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 114
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 115
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/WindowStateInjector;->LIST_ABOUT_NO_NEED_MODIFY_INSETS:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 116
    return-void

    .line 119
    :cond_62
    if-nez v1, :cond_95

    .line 120
    const v4, 0x421170a4    # 36.36f

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 122
    .local v4, "captionViewHeight":I
    sget-object v5, Lcom/android/server/wm/WindowStateInjector;->LIST_ABOUT_MODIFY_INSETS:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 123
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 124
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 125
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_95

    .line 127
    :cond_88
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 128
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 129
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 132
    .end local v4    # "captionViewHeight":I
    :cond_95
    :goto_95
    return-void
.end method

.method public static adjuestFreeFormTouchRegion(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .registers 10
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 136
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_7

    return-void

    .line 137
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 138
    .local v1, "taskBounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    .line 138
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    .line 141
    return-void
.end method

.method public static adjuestScaleAndFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "parentFrame"    # Landroid/graphics/Rect;
    .param p3, "displayFrame"    # Landroid/graphics/Rect;
    .param p4, "overscanFrame"    # Landroid/graphics/Rect;
    .param p5, "contentFrame"    # Landroid/graphics/Rect;
    .param p6, "visibleFrame"    # Landroid/graphics/Rect;
    .param p7, "decorFrame"    # Landroid/graphics/Rect;
    .param p8, "stableFrame"    # Landroid/graphics/Rect;
    .param p9, "outsetFrame"    # Landroid/graphics/Rect;

    .line 64
    sget v0, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 65
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 66
    sget-boolean v0, Lcom/android/server/wm/WindowStateInjector;->mHadSavedScale:Z

    if-nez v0, :cond_2c

    .line 68
    :try_start_f
    const-string v0, "WindowManager"

    const-string v1, "adjuestScaleAndFrame had saved scale"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "freeform_window_scale"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    sput-boolean v3, Lcom/android/server/wm/WindowStateInjector;->mHadSavedScale:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_28

    .line 75
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    goto :goto_2c

    .line 73
    :catch_28
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2c
    :goto_2c
    if-eqz p1, :cond_4a

    .line 78
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 79
    .local v0, "freeformRect":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 80
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 83
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    .end local v0    # "freeformRect":Landroid/graphics/Rect;
    :cond_4a
    return-void
.end method

.method public static adjustFlagsForOnePixelWindow(Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;)V
    .registers 8
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 147
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    .line 148
    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 147
    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    .line 149
    .local v0, "isCtsMode":Z
    if-eqz v0, :cond_1a

    return-void

    .line 150
    :cond_1a
    if-ltz p1, :cond_1e

    if-le p1, v2, :cond_22

    :cond_1e
    if-ltz p2, :cond_55

    if-gt p2, v2, :cond_55

    .line 152
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3b

    .line 153
    const-string/jumbo v1, "mMiuiNotFocusable"

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/WindowStateInjector;->setWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 158
    :cond_3b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_94

    .line 159
    const-string/jumbo v1, "mMiuiNotTouchModal"

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/WindowStateInjector;->setWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_94

    .line 164
    :cond_55
    const-string/jumbo v1, "mMiuiNotFocusable"

    invoke-static {p0, v1}, Lcom/android/server/wm/WindowStateInjector;->getWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    .line 165
    if-eqz p3, :cond_67

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6f

    .line 167
    :cond_67
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x9

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 169
    :cond_6f
    const-string/jumbo v1, "mMiuiNotFocusable"

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/WindowStateInjector;->setWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;Z)Z

    .line 171
    :cond_75
    const-string/jumbo v1, "mMiuiNotTouchModal"

    invoke-static {p0, v1}, Lcom/android/server/wm/WindowStateInjector;->getWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 172
    if-eqz p3, :cond_86

    iget v1, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_8e

    .line 174
    :cond_86
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 176
    :cond_8e
    const-string/jumbo v1, "mMiuiNotTouchModal"

    invoke-static {p0, v1, v2}, Lcom/android/server/wm/WindowStateInjector;->setWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;Z)Z

    .line 179
    :cond_94
    :goto_94
    return-void
.end method

.method private static getWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "memberName"    # Ljava/lang/String;

    .line 196
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 197
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 198
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 199
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return v2

    .line 200
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_17
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowStateMiuiFlag failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    return v1
.end method

.method private static setWindowStateMiuiFlag(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "memberName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 183
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 185
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 186
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    .line 190
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    nop

    .line 191
    return v2

    .line 187
    :catch_15
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWindowStateMiuiFlag failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    return v1
.end method

.method static shouldSaveSurface(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 42
    sget-boolean v0, Lcom/android/server/wm/WindowStateInjector;->DISABLE_SAVE_SURFACE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 43
    return v1

    .line 45
    :cond_6
    return v1
.end method
