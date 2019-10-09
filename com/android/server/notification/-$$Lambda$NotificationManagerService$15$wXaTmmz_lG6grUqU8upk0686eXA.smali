.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA;->f$0:I

    iput p2, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .registers 4

    iget v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA;->f$0:I

    iget v1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$15;->lambda$run$0(III)Z

    move-result p1

    return p1
.end method
