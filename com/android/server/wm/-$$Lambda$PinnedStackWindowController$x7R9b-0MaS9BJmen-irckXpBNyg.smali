.class public final synthetic Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/PinnedStackWindowController;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Z

.field private final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PinnedStackWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$0:Lcom/android/server/wm/PinnedStackWindowController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$2:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$3:I

    iput p5, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$4:I

    iput-boolean p6, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$5:Z

    iput-boolean p7, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$0:Lcom/android/server/wm/PinnedStackWindowController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$2:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$3:I

    iget v4, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$4:I

    iget-boolean v5, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$5:Z

    iget-boolean v6, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackWindowController$x7R9b-0MaS9BJmen-irckXpBNyg;->f$6:Z

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/PinnedStackWindowController;->lambda$animateResizePinnedStack$0(Lcom/android/server/wm/PinnedStackWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    return-void
.end method
