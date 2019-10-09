.class Lcom/android/server/policy/MiuiGlobalActions$2;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiGlobalActions;->showDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .line 249
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$2;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 252
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 253
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1a

    .line 254
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$2;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;
    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->access$300(Lcom/android/server/policy/MiuiGlobalActions;)Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string v2, "finish"

    invoke-virtual {v0, v2}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 255
    return v1

    .line 257
    :cond_1a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_2d

    .line 258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_2b

    goto :goto_2d

    .line 261
    :cond_2b
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_2d
    :goto_2d
    return v1
.end method
