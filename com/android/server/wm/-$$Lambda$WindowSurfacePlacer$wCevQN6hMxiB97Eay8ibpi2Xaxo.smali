.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$wCevQN6hMxiB97Eay8ibpi2Xaxo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->lambda$findAnimLayoutParamsToken$2(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    return p1
.end method
