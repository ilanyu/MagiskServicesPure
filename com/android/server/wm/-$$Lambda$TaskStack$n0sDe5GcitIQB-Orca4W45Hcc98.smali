.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/TaskStack;->lambda$onAnimationStart$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
