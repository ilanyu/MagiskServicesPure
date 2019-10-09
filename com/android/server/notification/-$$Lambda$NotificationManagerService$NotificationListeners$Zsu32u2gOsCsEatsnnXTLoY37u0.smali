.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Zsu32u2gOsCsEatsnnXTLoY37u0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final synthetic f$1:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Zsu32u2gOsCsEatsnnXTLoY37u0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Zsu32u2gOsCsEatsnnXTLoY37u0;->f$1:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Zsu32u2gOsCsEatsnnXTLoY37u0;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Zsu32u2gOsCsEatsnnXTLoY37u0;->f$1:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->lambda$notifyRemovedLocked$0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method
