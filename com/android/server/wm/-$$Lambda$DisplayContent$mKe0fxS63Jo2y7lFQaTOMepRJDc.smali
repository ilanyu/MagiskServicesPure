.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$updateRotationUnchecked$11(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
