.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSetRoundCorner(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;F)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->lambda$initMiuiGestureController$8(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;F)V

    return-void
.end method
