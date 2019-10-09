.class Lcom/android/server/lights/MiuiLightsService$TimeTickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeTickReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2

    .line 696
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$TimeTickReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p2, "x1"    # Lcom/android/server/lights/MiuiLightsService$1;

    .line 696
    invoke-direct {p0, p1}, Lcom/android/server/lights/MiuiLightsService$TimeTickReceiver;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 699
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$TimeTickReceiver;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->updateWorkState()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$4600(Lcom/android/server/lights/MiuiLightsService;)V

    .line 700
    return-void
.end method
