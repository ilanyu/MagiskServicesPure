.class Lcom/miui/server/AudioQueryWeatherService$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioQueryWeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/AudioQueryWeatherService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AudioQueryWeatherService;


# direct methods
.method constructor <init>(Lcom/miui/server/AudioQueryWeatherService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/AudioQueryWeatherService;

    .line 103
    iput-object p1, p0, Lcom/miui/server/AudioQueryWeatherService$1;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 107
    const-string v0, "AudioQueryWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive the boot complete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService$1;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    const/4 v1, 0x0

    # setter for: Lcom/miui/server/AudioQueryWeatherService;->mNextSunriseSunsetTime:Z
    invoke-static {v0, v1}, Lcom/miui/server/AudioQueryWeatherService;->access$002(Lcom/miui/server/AudioQueryWeatherService;Z)Z

    .line 111
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService$1;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    # invokes: Lcom/miui/server/AudioQueryWeatherService;->startCityQuery()V
    invoke-static {v0}, Lcom/miui/server/AudioQueryWeatherService;->access$100(Lcom/miui/server/AudioQueryWeatherService;)V

    .line 112
    return-void
.end method
