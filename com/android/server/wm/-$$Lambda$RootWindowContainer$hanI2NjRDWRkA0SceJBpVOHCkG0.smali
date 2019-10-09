.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$hanI2NjRDWRkA0SceJBpVOHCkG0;

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

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$performSurfacePlacement$8(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
