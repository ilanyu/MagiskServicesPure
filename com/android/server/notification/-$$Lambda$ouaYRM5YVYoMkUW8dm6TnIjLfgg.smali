.class public final synthetic Lcom/android/server/notification/-$$Lambda$ouaYRM5YVYoMkUW8dm6TnIjLfgg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$ouaYRM5YVYoMkUW8dm6TnIjLfgg;->f$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$ouaYRM5YVYoMkUW8dm6TnIjLfgg;->f$0:Lcom/android/server/notification/NotificationManagerService;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->canUseManagedServices(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
