.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskPositioner;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;->f$0:Lcom/android/server/wm/TaskPositioner;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;->f$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;->f$1:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskPositioner;->lambda$startDrag$0(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V

    return-void
.end method
