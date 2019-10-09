.class Lcom/android/server/lights/view/MessageView$2;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Lmiui/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/view/MessageView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/view/MessageView;


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MessageView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/view/MessageView;

    .line 244
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$2;->this$0:Lcom/android/server/lights/view/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiui/animation/physics/DynamicAnimation;ZFF)V
    .registers 9
    .param p1, "dynamicAnimation"    # Lmiui/animation/physics/DynamicAnimation;
    .param p2, "b"    # Z
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .line 248
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$2;->this$0:Lcom/android/server/lights/view/MessageView;

    # getter for: Lcom/android/server/lights/view/MessageView;->mStarArr:[Lcom/android/server/lights/view/MessageView$Star;
    invoke-static {v0}, Lcom/android/server/lights/view/MessageView;->access$800(Lcom/android/server/lights/view/MessageView;)[Lcom/android/server/lights/view/MessageView$Star;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 249
    .local v3, "star":Lcom/android/server/lights/view/MessageView$Star;
    invoke-virtual {v3}, Lcom/android/server/lights/view/MessageView$Star;->stop()V

    .line 248
    .end local v3    # "star":Lcom/android/server/lights/view/MessageView$Star;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 251
    :cond_12
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$2;->this$0:Lcom/android/server/lights/view/MessageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/lights/view/MessageView;->setVisibility(I)V

    .line 252
    return-void
.end method
