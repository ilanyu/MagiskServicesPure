.class final Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
.super Lmiui/maml/component/MamlView;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GlobalActionsMamlView"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private mIntercepted:Z

.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p4, "startDelay"    # J

    .line 387
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    .line 388
    invoke-direct {p0, p2, p3, p4, p5}, Lmiui/maml/component/MamlView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    .line 400
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 429
    invoke-super {p0, p1}, Lmiui/maml/component/MamlView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
