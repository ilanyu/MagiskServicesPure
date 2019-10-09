.class Lcom/android/server/location/ActivityRecognitionProxy$1;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ActivityRecognitionProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ActivityRecognitionProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/ActivityRecognitionProxy;

    .line 53
    iput-object p1, p0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/location/ActivityRecognitionProxy$1;->this$0:Lcom/android/server/location/ActivityRecognitionProxy;

    # invokes: Lcom/android/server/location/ActivityRecognitionProxy;->bindProvider()V
    invoke-static {v0}, Lcom/android/server/location/ActivityRecognitionProxy;->access$000(Lcom/android/server/location/ActivityRecognitionProxy;)V

    .line 57
    return-void
.end method
