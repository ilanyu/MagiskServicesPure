.class Lcom/android/server/VibratorServiceInjector$1;
.super Landroid/service/notification/NotificationListenerService;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorServiceInjector;->init(Lcom/android/server/VibratorService;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 75
    if-nez p1, :cond_3

    return-void

    .line 76
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 79
    # getter for: Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$000()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method
