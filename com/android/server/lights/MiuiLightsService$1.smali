.class Lcom/android/server/lights/MiuiLightsService$1;
.super Landroid/os/Handler;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 414
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$1;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 417
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_e

    .line 419
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    .line 420
    .local v0, "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->turnOff()V

    .line 421
    nop

    .line 425
    .end local v0    # "light":Lcom/android/server/lights/MiuiLightsService$LightImpl;
    :goto_e
    return-void
.end method
