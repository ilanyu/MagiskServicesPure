.class Lcom/android/server/HandyMode$RotationWatcher$1;
.super Ljava/lang/Object;
.source "HandyMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode$RotationWatcher;->onRotationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HandyMode$RotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/HandyMode$RotationWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/HandyMode$RotationWatcher;

    .line 121
    iput-object p1, p0, Lcom/android/server/HandyMode$RotationWatcher$1;->this$0:Lcom/android/server/HandyMode$RotationWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 124
    return-void
.end method
