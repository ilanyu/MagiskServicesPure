.class Lcom/android/server/lights/U2AnimationDozeService$2;
.super Ljava/lang/Object;
.source "U2AnimationDozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/U2AnimationDozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/U2AnimationDozeService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/U2AnimationDozeService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/U2AnimationDozeService;

    .line 59
    iput-object p1, p0, Lcom/android/server/lights/U2AnimationDozeService$2;->this$0:Lcom/android/server/lights/U2AnimationDozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService$2;->this$0:Lcom/android/server/lights/U2AnimationDozeService;

    # invokes: Lcom/android/server/lights/U2AnimationDozeService;->start()V
    invoke-static {v0}, Lcom/android/server/lights/U2AnimationDozeService;->access$000(Lcom/android/server/lights/U2AnimationDozeService;)V

    .line 63
    return-void
.end method
