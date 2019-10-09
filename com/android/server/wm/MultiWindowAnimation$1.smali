.class Lcom/android/server/wm/MultiWindowAnimation$1;
.super Ljava/lang/Object;
.source "MultiWindowAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowAnimation;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/MultiWindowAnimation;

    .line 36
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowAnimation$1;->this$0:Lcom/android/server/wm/MultiWindowAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation$1;->this$0:Lcom/android/server/wm/MultiWindowAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowAnimation;->stopAnimation()V

    .line 40
    return-void
.end method
