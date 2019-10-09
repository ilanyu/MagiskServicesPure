.class Lcom/android/server/am/LowMemoryKillerObserver$1;
.super Ljava/lang/Object;
.source "LowMemoryKillerObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/LowMemoryKillerObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LowMemoryKillerObserver;

.field final synthetic val$killedPid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/LowMemoryKillerObserver;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/LowMemoryKillerObserver;

    .line 39
    iput-object p1, p0, Lcom/android/server/am/LowMemoryKillerObserver$1;->this$0:Lcom/android/server/am/LowMemoryKillerObserver;

    iput p2, p0, Lcom/android/server/am/LowMemoryKillerObserver$1;->val$killedPid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/android/server/am/LowMemoryKillerObserver$1;->this$0:Lcom/android/server/am/LowMemoryKillerObserver;

    iget v1, p0, Lcom/android/server/am/LowMemoryKillerObserver$1;->val$killedPid:I

    # invokes: Lcom/android/server/am/LowMemoryKillerObserver;->reportLmkKillEvent(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/LowMemoryKillerObserver;->access$000(Lcom/android/server/am/LowMemoryKillerObserver;I)V

    .line 43
    return-void
.end method
