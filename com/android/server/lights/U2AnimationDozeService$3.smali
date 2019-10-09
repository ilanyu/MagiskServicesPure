.class Lcom/android/server/lights/U2AnimationDozeService$3;
.super Ljava/lang/Object;
.source "U2AnimationDozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/U2AnimationDozeService;->start()V
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

    .line 69
    iput-object p1, p0, Lcom/android/server/lights/U2AnimationDozeService$3;->this$0:Lcom/android/server/lights/U2AnimationDozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService$3;->this$0:Lcom/android/server/lights/U2AnimationDozeService;

    # getter for: Lcom/android/server/lights/U2AnimationDozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/lights/U2AnimationDozeService;->access$100(Lcom/android/server/lights/U2AnimationDozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 73
    iget-object v0, p0, Lcom/android/server/lights/U2AnimationDozeService$3;->this$0:Lcom/android/server/lights/U2AnimationDozeService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/U2AnimationDozeService;->mAcquire:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/U2AnimationDozeService;->access$202(Lcom/android/server/lights/U2AnimationDozeService;Z)Z

    .line 74
    return-void
.end method
