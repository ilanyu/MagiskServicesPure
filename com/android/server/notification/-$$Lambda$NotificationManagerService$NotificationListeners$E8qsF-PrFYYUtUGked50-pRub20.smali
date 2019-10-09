.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/os/UserHandle;

.field private final synthetic f$4:Landroid/app/NotificationChannel;

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$3:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$4:Landroid/app/NotificationChannel;

    iput p6, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$3:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$4:Landroid/app/NotificationChannel;

    iget v5, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$E8qsF-PrFYYUtUGked50-pRub20;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyNotificationChannelChanged$1(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    return-void
.end method
