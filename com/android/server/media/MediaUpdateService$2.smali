.class Lcom/android/server/media/MediaUpdateService$2;
.super Ljava/lang/Object;
.source "MediaUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaUpdateService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaUpdateService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaUpdateService;

    .line 81
    iput-object p1, p0, Lcom/android/server/media/MediaUpdateService$2;->this$0:Lcom/android/server/media/MediaUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService$2;->this$0:Lcom/android/server/media/MediaUpdateService;

    # invokes: Lcom/android/server/media/MediaUpdateService;->packageStateChanged()V
    invoke-static {v0}, Lcom/android/server/media/MediaUpdateService;->access$200(Lcom/android/server/media/MediaUpdateService;)V

    .line 85
    return-void
.end method
