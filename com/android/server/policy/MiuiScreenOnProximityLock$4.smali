.class Lcom/android/server/policy/MiuiScreenOnProximityLock$4;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field final synthetic val$container:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 227
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 243
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 238
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;->val$container:Landroid/view/View;

    # invokes: Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseReset(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$400(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 234
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 230
    return-void
.end method
