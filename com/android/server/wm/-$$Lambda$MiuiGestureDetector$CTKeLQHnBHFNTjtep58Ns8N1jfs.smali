.class public final synthetic Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$CTKeLQHnBHFNTjtep58Ns8N1jfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$CTKeLQHnBHFNTjtep58Ns8N1jfs;->f$0:[I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MiuiGestureDetector$CTKeLQHnBHFNTjtep58Ns8N1jfs;->f$0:[I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/MiuiGestureDetector;->lambda$isAppLaunchingAndSurfaceShownLocked$3([ILcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
