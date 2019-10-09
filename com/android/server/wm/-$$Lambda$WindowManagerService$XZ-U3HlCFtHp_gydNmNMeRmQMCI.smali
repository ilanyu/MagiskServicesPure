.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceBuilderFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final make(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 2

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    return-object p1
.end method
