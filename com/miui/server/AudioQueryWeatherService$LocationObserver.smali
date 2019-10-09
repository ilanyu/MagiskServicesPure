.class Lcom/miui/server/AudioQueryWeatherService$LocationObserver;
.super Landroid/database/ContentObserver;
.source "AudioQueryWeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/AudioQueryWeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AudioQueryWeatherService;


# direct methods
.method constructor <init>(Lcom/miui/server/AudioQueryWeatherService;)V
    .registers 4

    .line 142
    iput-object p1, p0, Lcom/miui/server/AudioQueryWeatherService$LocationObserver;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 144
    # getter for: Lcom/miui/server/AudioQueryWeatherService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/miui/server/AudioQueryWeatherService;->access$200(Lcom/miui/server/AudioQueryWeatherService;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://weather/selected_city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 154
    const-string v0, "AudioQueryWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "location change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService$LocationObserver;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    const/4 v1, 0x0

    # setter for: Lcom/miui/server/AudioQueryWeatherService;->mNextSunriseSunsetTime:Z
    invoke-static {v0, v1}, Lcom/miui/server/AudioQueryWeatherService;->access$002(Lcom/miui/server/AudioQueryWeatherService;Z)Z

    .line 157
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService$LocationObserver;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    # invokes: Lcom/miui/server/AudioQueryWeatherService;->startCityQuery()V
    invoke-static {v0}, Lcom/miui/server/AudioQueryWeatherService;->access$100(Lcom/miui/server/AudioQueryWeatherService;)V

    .line 158
    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 148
    const-string v0, "AudioQueryWeatherService"

    const-string v1, "LocationObserver:onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method
