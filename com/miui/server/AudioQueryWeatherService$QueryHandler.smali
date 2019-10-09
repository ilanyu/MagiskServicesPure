.class final Lcom/miui/server/AudioQueryWeatherService$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AudioQueryWeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/AudioQueryWeatherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/AudioQueryWeatherService$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/AudioQueryWeatherService;


# direct methods
.method public constructor <init>(Lcom/miui/server/AudioQueryWeatherService;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 354
    iput-object p1, p0, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    .line 355
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 356
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 351
    new-instance v0, Lcom/miui/server/AudioQueryWeatherService$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/miui/server/AudioQueryWeatherService$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/miui/server/AudioQueryWeatherService$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 360
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_a

    .line 361
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    # invokes: Lcom/miui/server/AudioQueryWeatherService;->updateCityInfo(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/miui/server/AudioQueryWeatherService;->access$300(Lcom/miui/server/AudioQueryWeatherService;Landroid/database/Cursor;)V

    goto :goto_f

    .line 363
    :cond_a
    iget-object v0, p0, Lcom/miui/server/AudioQueryWeatherService$QueryHandler;->this$0:Lcom/miui/server/AudioQueryWeatherService;

    # invokes: Lcom/miui/server/AudioQueryWeatherService;->updateWeatherInfo(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/miui/server/AudioQueryWeatherService;->access$400(Lcom/miui/server/AudioQueryWeatherService;Landroid/database/Cursor;)V

    .line 365
    :goto_f
    return-void
.end method
