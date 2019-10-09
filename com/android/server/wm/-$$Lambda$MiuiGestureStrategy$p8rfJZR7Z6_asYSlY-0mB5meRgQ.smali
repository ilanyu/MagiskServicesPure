.class public final synthetic Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final action(Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/wm/MiuiGestureStrategy;->lambda$resetWindowSurfaceLocked$0(Landroid/view/SurfaceControl;)V

    return-void
.end method
