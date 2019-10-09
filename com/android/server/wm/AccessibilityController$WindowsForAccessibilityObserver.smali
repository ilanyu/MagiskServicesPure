.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mTempLayer:I

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 5
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 979
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 981
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 983
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 985
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 987
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 989
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 991
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1003
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    .line 1007
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 1008
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1009
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1010
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1011
    nop

    .line 1012
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 1014
    return-void
.end method

.method private static addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/Set;)V
    .registers 6
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1240
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    .local p3, "tokenOut":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v0

    .line 1241
    .local v0, "window":Landroid/view/WindowInfo;
    iget-object v1, v0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1242
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 1243
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    iget-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1245
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1248
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1249
    .local v0, "oldWindowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1250
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1249
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1252
    .end local v1    # "i":I
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1253
    .local v1, "newWindowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_31

    .line 1254
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 1255
    .local v3, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v3}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    .end local v3    # "newWindow":Landroid/view/WindowInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1257
    .end local v2    # "i":I
    :cond_31
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1306
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1307
    .local v0, "windowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_14

    .line 1308
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1307
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1310
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1218
    .local v0, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1219
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1220
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1223
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1224
    .local v2, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1225
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1228
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1229
    .local v3, "matrix":Landroid/graphics/Matrix;
    # invokes: Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    invoke-static {p1, v3}, Lcom/android/server/wm/AccessibilityController;->access$400(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1230
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1233
    iget v4, v2, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1235
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .registers 2
    .param p0, "windowType"    # I

    .line 1313
    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method public static synthetic lambda$populateVisibleWindowsOnScreenLocked$0(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "outWindows"    # Landroid/util/SparseArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1329
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1330
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1332
    :cond_f
    return-void
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1326
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1327
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    .line 1328
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$vRhBz0DqTZWNemKfoIyId7HacTk;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$vRhBz0DqTZWNemKfoIyId7HacTk;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1333
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 9
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .line 1260
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 1261
    return v0

    .line 1263
    :cond_4
    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 1264
    return v1

    .line 1266
    :cond_8
    if-nez p2, :cond_b

    .line 1267
    return v1

    .line 1269
    :cond_b
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_12

    .line 1270
    return v1

    .line 1272
    :cond_12
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_19

    .line 1273
    return v1

    .line 1275
    :cond_19
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_22

    .line 1276
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_2d

    .line 1277
    return v1

    .line 1279
    :cond_22
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1280
    return v1

    .line 1282
    :cond_2d
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_36

    .line 1283
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_41

    .line 1284
    return v1

    .line 1286
    :cond_36
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1287
    return v1

    .line 1289
    :cond_41
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1290
    return v1

    .line 1292
    :cond_4c
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_5f

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_5f

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1293
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1294
    return v1

    .line 1296
    :cond_5f
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1297
    return v1

    .line 1299
    :cond_6a
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v4, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_73

    .line 1300
    return v1

    .line 1302
    :cond_73
    return v0
.end method


# virtual methods
.method public computeChangedWindows()V
    .registers 24

    .line 1033
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1034
    .local v2, "windowsChanged":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1036
    .local v3, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1040
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1b0

    if-nez v0, :cond_1c

    .line 1041
    :try_start_17
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1044
    :cond_1c
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    .line 1045
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1046
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1047
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 1048
    .local v5, "screenWidth":I
    iget-object v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 1050
    .local v6, "screenHeight":I
    iget-object v7, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1051
    .local v7, "unaccountedSpace":Landroid/graphics/Region;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 1053
    iget-object v9, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1054
    .local v9, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {v1, v9}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1055
    iget-object v10, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1056
    .local v10, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 1058
    const/4 v11, 0x0

    .line 1060
    .local v11, "focusedWindowAdded":Z
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1061
    .local v12, "visibleWindowCount":I
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1062
    .local v13, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v14, v12, -0x1

    .line 1062
    .local v14, "i":I
    :goto_54
    if-ltz v14, :cond_f0

    .line 1063
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 1064
    .local v15, "windowState":Lcom/android/server/wm/WindowState;
    iget-object v8, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1065
    .local v8, "flags":I
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v17
    :try_end_64
    .catchall {:try_start_1c .. :try_end_64} :catchall_1b0

    move-object/from16 v18, v17

    .line 1068
    .local v18, "task":Lcom/android/server/wm/Task;
    move-object/from16 v19, v0

    move-object/from16 v0, v18

    if-eqz v0, :cond_7e

    .line 1068
    .end local v18    # "task":Lcom/android/server/wm/Task;
    .local v0, "task":Lcom/android/server/wm/Task;
    .local v19, "windowManager":Landroid/view/WindowManager;
    move/from16 v20, v2

    :try_start_6e
    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1068
    .end local v2    # "windowsChanged":Z
    .local v20, "windowsChanged":Z
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1069
    nop

    .line 1062
    move/from16 v21, v5

    goto :goto_9d

    .line 1075
    .end local v20    # "windowsChanged":Z
    .restart local v2    # "windowsChanged":Z
    :cond_7e
    move/from16 v20, v2

    .line 1075
    .end local v2    # "windowsChanged":Z
    .restart local v20    # "windowsChanged":Z
    :cond_80
    and-int/lit8 v2, v8, 0x10

    if-eqz v2, :cond_8f

    iget-object v2, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v5

    const/16 v5, 0x7f2

    .line 1075
    .end local v5    # "screenWidth":I
    .local v21, "screenWidth":I
    if-eq v2, v5, :cond_91

    .line 1077
    goto :goto_9d

    .line 1081
    .end local v21    # "screenWidth":I
    .restart local v5    # "screenWidth":I
    :cond_8f
    move/from16 v21, v5

    .line 1081
    .end local v5    # "screenWidth":I
    .restart local v21    # "screenWidth":I
    :cond_91
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1082
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    invoke-direct {v1, v15, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1085
    invoke-virtual {v7, v2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 1086
    nop

    .line 1062
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v8    # "flags":I
    .end local v15    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v21    # "screenWidth":I
    .restart local v5    # "screenWidth":I
    :goto_9d
    move/from16 v22, v6

    .line 1062
    .end local v5    # "screenWidth":I
    .restart local v21    # "screenWidth":I
    goto :goto_e3

    .line 1090
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v8    # "flags":I
    .restart local v15    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_a0
    iget-object v5, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 1092
    invoke-static {v15, v2, v3, v10}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/Set;)V

    .line 1093
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 1094
    const/4 v11, 0x1

    .line 1098
    :cond_b4
    iget-object v5, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v6

    const/16 v6, 0x7f0

    .line 1098
    .end local v6    # "screenHeight":I
    .local v22, "screenHeight":I
    if-eq v5, v6, :cond_dc

    .line 1104
    sget-object v5, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v2, v7, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1108
    and-int/lit8 v5, v8, 0x28

    if-nez v5, :cond_dc

    .line 1113
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    sget-object v6, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v5, v7, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1116
    if-eqz v0, :cond_f8

    .line 1119
    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1120
    goto :goto_e3

    .line 1130
    :cond_dc
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1131
    goto :goto_f8

    .line 1062
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v8    # "flags":I
    .end local v15    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_e3
    :goto_e3
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, v19

    move/from16 v2, v20

    move/from16 v5, v21

    move/from16 v6, v22

    const/4 v8, 0x0

    goto/16 :goto_54

    .line 1136
    .end local v14    # "i":I
    .end local v19    # "windowManager":Landroid/view/WindowManager;
    .end local v20    # "windowsChanged":Z
    .end local v21    # "screenWidth":I
    .end local v22    # "screenHeight":I
    .local v0, "windowManager":Landroid/view/WindowManager;
    .local v2, "windowsChanged":Z
    .restart local v5    # "screenWidth":I
    .restart local v6    # "screenHeight":I
    :cond_f0
    move-object/from16 v19, v0

    move/from16 v20, v2

    move/from16 v21, v5

    move/from16 v22, v6

    .line 1136
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "windowsChanged":Z
    .end local v5    # "screenWidth":I
    .end local v6    # "screenHeight":I
    .restart local v19    # "windowManager":Landroid/view/WindowManager;
    .restart local v20    # "windowsChanged":Z
    .restart local v21    # "screenWidth":I
    .restart local v22    # "screenHeight":I
    :cond_f8
    :goto_f8
    if-nez v11, :cond_116

    .line 1137
    add-int/lit8 v0, v12, -0x1

    .line 1137
    .local v0, "i":I
    :goto_fc
    if-ltz v0, :cond_116

    .line 1138
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1139
    .local v2, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_113

    .line 1141
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1142
    .local v5, "boundsInScreen":Landroid/graphics/Rect;
    invoke-direct {v1, v2, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1145
    invoke-static {v2, v5, v3, v10}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/Set;)V

    .line 1147
    goto :goto_116

    .line 1137
    .end local v2    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v5    # "boundsInScreen":Landroid/graphics/Rect;
    :cond_113
    add-int/lit8 v0, v0, -0x1

    goto :goto_fc

    .line 1153
    .end local v0    # "i":I
    :cond_116
    :goto_116
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1154
    .local v0, "windowCount":I
    const/4 v2, 0x0

    .line 1154
    .local v2, "i":I
    :goto_11b
    if-ge v2, v0, :cond_153

    .line 1155
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInfo;

    .line 1156
    .local v5, "window":Landroid/view/WindowInfo;
    iget-object v6, v5, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12e

    .line 1157
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1159
    :cond_12e
    iget-object v6, v5, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v6, :cond_150

    .line 1160
    iget-object v6, v5, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 1161
    .local v6, "childTokenCount":I
    add-int/lit8 v8, v6, -0x1

    .line 1161
    .local v8, "j":I
    :goto_13a
    if-ltz v8, :cond_150

    .line 1162
    iget-object v14, v5, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14d

    .line 1163
    iget-object v14, v5, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1161
    :cond_14d
    add-int/lit8 v8, v8, -0x1

    goto :goto_13a

    .line 1154
    .end local v5    # "window":Landroid/view/WindowInfo;
    .end local v6    # "childTokenCount":I
    .end local v8    # "j":I
    :cond_150
    add-int/lit8 v2, v2, 0x1

    goto :goto_11b

    .line 1170
    .end local v2    # "i":I
    :cond_153
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1171
    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 1174
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_167

    .line 1176
    const/4 v2, 0x1

    .line 1176
    .end local v20    # "windowsChanged":Z
    .local v2, "windowsChanged":Z
    goto :goto_198

    .line 1177
    .end local v2    # "windowsChanged":Z
    .restart local v20    # "windowsChanged":Z
    :cond_167
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_175

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_196

    .line 1181
    :cond_175
    const/16 v16, 0x0

    .line 1181
    .local v16, "i":I
    :goto_177
    move/from16 v2, v16

    .line 1181
    .end local v16    # "i":I
    .local v2, "i":I
    if-ge v2, v0, :cond_196

    .line 1182
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowInfo;

    .line 1183
    .local v5, "oldWindow":Landroid/view/WindowInfo;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    .line 1187
    .local v6, "newWindow":Landroid/view/WindowInfo;
    invoke-direct {v1, v5, v6}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v8
    :try_end_18d
    .catchall {:try_start_6e .. :try_end_18d} :catchall_1ac

    if-eqz v8, :cond_193

    .line 1188
    const/4 v8, 0x1

    .line 1189
    .end local v20    # "windowsChanged":Z
    .local v8, "windowsChanged":Z
    nop

    .line 1194
    move v2, v8

    goto :goto_198

    .line 1181
    .end local v5    # "oldWindow":Landroid/view/WindowInfo;
    .end local v6    # "newWindow":Landroid/view/WindowInfo;
    .end local v8    # "windowsChanged":Z
    .restart local v20    # "windowsChanged":Z
    :cond_193
    add-int/lit8 v16, v2, 0x1

    .line 1181
    .end local v2    # "i":I
    .restart local v16    # "i":I
    goto :goto_177

    .line 1194
    .end local v16    # "i":I
    :cond_196
    move/from16 v2, v20

    .line 1194
    .end local v20    # "windowsChanged":Z
    .local v2, "windowsChanged":Z
    :goto_198
    if-eqz v2, :cond_19d

    .line 1195
    :try_start_19a
    invoke-direct {v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V

    .line 1197
    .end local v0    # "windowCount":I
    .end local v7    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v9    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v10    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v11    # "focusedWindowAdded":Z
    .end local v12    # "visibleWindowCount":I
    .end local v13    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v19    # "windowManager":Landroid/view/WindowManager;
    .end local v21    # "screenWidth":I
    .end local v22    # "screenHeight":I
    :cond_19d
    monitor-exit v4
    :try_end_19e
    .catchall {:try_start_19a .. :try_end_19e} :catchall_1b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1200
    if-eqz v2, :cond_1a8

    .line 1204
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    invoke-interface {v0, v3}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1212
    :cond_1a8
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1213
    return-void

    .line 1197
    .end local v2    # "windowsChanged":Z
    .restart local v20    # "windowsChanged":Z
    :catchall_1ac
    move-exception v0

    move/from16 v2, v20

    goto :goto_1b3

    .line 1197
    .end local v20    # "windowsChanged":Z
    .restart local v2    # "windowsChanged":Z
    :catchall_1b0
    move-exception v0

    move/from16 v20, v2

    :goto_1b3
    :try_start_1b3
    monitor-exit v4
    :try_end_1b4
    .catchall {:try_start_1b3 .. :try_end_1b4} :catchall_1b8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1b8
    move-exception v0

    goto :goto_1b3
.end method

.method public performComputeChangedWindowsNotLocked()V
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 1019
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .registers 5

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1023
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1026
    :cond_10
    return-void
.end method
