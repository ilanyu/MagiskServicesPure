.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowAnimator$gigi05I7Vink1u-zPK-jF9wwd88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowAnimator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowAnimator$gigi05I7Vink1u-zPK-jF9wwd88;->f$0:Lcom/android/server/wm/WindowAnimator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowAnimator$gigi05I7Vink1u-zPK-jF9wwd88;->f$0:Lcom/android/server/wm/WindowAnimator;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowAnimator;->lambda$animate$2(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
